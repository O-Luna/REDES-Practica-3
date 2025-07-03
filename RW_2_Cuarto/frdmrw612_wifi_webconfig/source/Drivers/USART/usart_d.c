#include "Drivers/USART/usart_d.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"
#include "fsl_usart.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "string.h"
#include "Drivers/MQTT/mqtt_freertos.h"

#define DEMO_USART          USART3
#define DEMO_USART_CLK_SRC  kCLOCK_Flexcomm3
#define DEMO_USART_CLK_FREQ CLOCK_GetFlexCommClkFreq(3U)
#define UART_BUFFER_SIZE    128

QueueHandle_t xCommandQueue;

bool USART_ReadByte_NonBlocking_2(USART_Type *base, uint8_t *c)
{
    if ((base->FIFOSTAT & USART_FIFOSTAT_RXNOTEMPTY_MASK) != 0)
    {
        *c = USART_ReadByte(base);
        return true;
    }
    return false;
}

void usart_send_string_non_blocking(const uint8_t *str)
{
    // Implementación no bloqueante podría usar DMA o una cola con una tarea de transmisión
    // Por simplicidad, aquí usamos la versión bloqueante, pero en producción deberías cambiarlo
    USART_WriteBlocking(DEMO_USART, str, strlen((const char *)str));
}

void usart_listener_task(void *pvParameters)
{
    uint8_t uart_buffer[UART_BUFFER_SIZE];
    int index = 0;
    uint8_t c;

    while (1)
    {
        if (USART_ReadByte_NonBlocking_2(DEMO_USART, &c))
        {
            // Echo del carácter recibido
            USART_WriteByte(DEMO_USART, c);

            if (c == '\n' || c == '\r' || index >= UART_BUFFER_SIZE - 1)
            {
                if (index > 0)
                {
                    uart_buffer[index] = '\0';  // fin del string

                    // Opción 1: Usar cola para comandos (como en tu versión original)
//                    xQueueSend(xCommandQueue, uart_buffer, portMAX_DELAY);

                    // Opción 2: Publicar MQTT (como en tu código K66)

                    mqtt_args_t *params = pvPortMalloc(sizeof(mqtt_args_t));
                    if (params != NULL)
                    {
                        params->topic = "hoa/cuarto/comunicacion";

                        char *msg = pvPortMalloc(strlen((char *)uart_buffer) + 1);
                        if (msg != NULL)
                        {
                            strcpy(msg, (char *)uart_buffer);
                            params->message = msg;

                            sys_thread_new("publish", pre_publish, (void *)params, 512, 3);
                        }
                        else
                        {
                            vPortFree(params);
                        }
                    }

                }
                index = 0;  // Reinicia el buffer
            }
            else
            {
                uart_buffer[index++] = c;
            }
        }

        vTaskDelay(pdMS_TO_TICKS(10));  // Pequeño delay para evitar consumo excesivo de CPU
    }
}

void process_command_task(void *pvParameters)
{
    uint8_t received_cmd[UART_BUFFER_SIZE];

    while (1)
    {
        if (xQueueReceive(xCommandQueue, received_cmd, portMAX_DELAY) == pdTRUE)
        {
            // Procesar el comando recibido
            usart_send_string_non_blocking((uint8_t *)"\r\nComando recibido: ");
            usart_send_string_non_blocking(received_cmd);
            usart_send_string_non_blocking((uint8_t *)"\r\n> ");

            // Aquí puedes añadir tu lógica para procesar el comando
        }
    }
}

void usart_init(void)
{
    usart_config_t config;

    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitDebugConsole();

    USART_GetDefaultConfig(&config);
    config.baudRate_Bps = BOARD_DEBUG_UART_BAUDRATE;
    config.enableTx = true;
    config.enableRx = true;

    USART_Init(DEMO_USART, &config, DEMO_USART_CLK_FREQ);

    // Crear cola para comandos
    xCommandQueue = xQueueCreate(5, UART_BUFFER_SIZE);

    // Crear tareas
    xTaskCreate(usart_listener_task, "USART_RX", configMINIMAL_STACK_SIZE + 512, NULL, 3, NULL);
    xTaskCreate(process_command_task, "CMD_Processor", configMINIMAL_STACK_SIZE + 512, NULL, 2, NULL);
}
