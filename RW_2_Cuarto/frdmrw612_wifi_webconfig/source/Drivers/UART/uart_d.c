#include "Drivers/UART/uart_d.h"
#include "Drivers/MQTT/mqtt_freertos.h"
#include <stdbool.h>
#include <string.h>

// Buffer para recepción
static char uart_buffer[USART_BUFFER_SIZE];
static int buffer_index = 0;

// ================== CONFIGURACIÓN ROBUSTA ==================
static void uart_pin_init(void) {
    // 1. Desbloquear sistema completo (CRÍTICO)
    volatile uint32_t *syscon_ahbclkctrl0 = (volatile uint32_t*)0x40000040;
    volatile uint32_t *syscon_presetctrl0 = (volatile uint32_t*)0x40000048;
    volatile uint32_t *syscon_prg0 = (volatile uint32_t*)0x40000020;

    // Secuencia de desbloqueo segura
    *syscon_prg0 = 0x0000F000;  // Clave de desbloqueo
    *syscon_ahbclkctrl0 |= (1 << 6) | (1 << 14);  // GPIO1 + Flexcomm0
    *syscon_presetctrl0 |= (1 << 6) | (1 << 14);  // Liberar resets
    *syscon_prg0 = 0x00000000;  // Relock

    // 2. Configuración GPIO básica primero
    GPIO->DIR[1] |= (1 << 8);   // P1_8 como salida
    GPIO->DIR[1] &= ~(1 << 9);  // P1_9 como entrada

    // 3. Configuración IOCON con verificación
    volatile uint32_t *iocon = (volatile uint32_t*)0x4008C000;

    // Verificar si la dirección es accesible
    if((uint32_t)iocon >= 0x40000000 && (uint32_t)iocon < 0x40100000) {
        // Configuración alternativa USART con protección
        uint32_t temp;

        // P1_8 (USART0_TXD)
        temp = iocon[0x20/4];  // Leer primero
        temp &= ~0xFFFF;       // Limpiar configuración previa
        temp |= (0x1 << 0) | (0x1 << 6) | (0x1 << 10);
        iocon[0x20/4] = temp;  // Escribir con máscara

        // P1_9 (USART0_RXD)
        temp = iocon[0x24/4];
        temp &= ~0xFFFF;
        temp |= (0x1 << 0) | (0x1 << 6) | (0x1 << 10);
        iocon[0x24/4] = temp;
    }

    // Delay de estabilización
    for(volatile int i = 0; i < 1000; i++);
}

// ================== INICIALIZACIÓN USART ==================
void uart_init(void) {
    // 1. Configuración segura de pines
    uart_pin_init();

    // 2. Inicialización USART
    usart_config_t config;
    USART_GetDefaultConfig(&config);
    config.baudRate_Bps = USART_BAUDRATE;
    config.enableTx = true;
    config.enableRx = true;

    // 3. Usar frecuencia conocida (96 MHz típico)
    USART_Init(DEBUG_USART, &config, 96000000);

    // 4. Crear tarea FreeRTOS
    xTaskCreate(uart_listener_task, "UART_Listener", 1024, NULL, 3, NULL);
}

// ================== LECTURA NO BLOQUEANTE ==================
bool USART_ReadByte_NonBlocking(USART_Type *base, char *c) {
    if ((base->FIFOSTAT & USART_FIFOSTAT_RXNOTEMPTY_MASK)) {
        *c = USART_ReadByte(base);
        return true;
    }
    return false;
}

// ================== TAREA DE ESCUCHA ==================
void uart_listener_task(void *pvParameters) {
    char c;
    while (1) {
        if (USART_ReadByte_NonBlocking(DEBUG_USART, &c)) {
            USART_WriteByte(DEBUG_USART, (uint8_t)c);  // Echo

            if (c == '\n' || c == '\r' || buffer_index >= USART_BUFFER_SIZE - 1) {
                if (buffer_index > 0) {
                    uart_buffer[buffer_index] = '\0';

                    // Ejemplo MQTT
                    mqtt_args_t *args = pvPortMalloc(sizeof(mqtt_args_t));
                    if (args) {
                        args->topic = "uart/rx";
                        args->message = pvPortMalloc(buffer_index + 1);
                        if (args->message) {
                            strcpy(args->message, uart_buffer);
                            xTaskCreate(pre_publish, "MQTT_Pub", 512, args, 2, NULL);
                        } else {
                            vPortFree(args);
                        }
                    }
                }
                buffer_index = 0;
            } else {
                uart_buffer[buffer_index++] = c;
            }
        }
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}
