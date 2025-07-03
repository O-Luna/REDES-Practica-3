/*
 * uart_d.h
 *
 *  Created on: 2 jul. 2025
 *      Author: oralu
 */

#ifndef DRIVERS_UART_UART_D_H_
#define DRIVERS_UART_UART_D_H_

#include "fsl_usart.h"
#include "FreeRTOS.h"
#include "task.h"
#include "fsl_common.h"


// Configuración USART
#define DEBUG_USART          USART0
#define USART_BAUDRATE      115200
#define USART_BUFFER_SIZE   128

// Pines USART0 en FRDM-RW612
#define USART0_TX_PORT      1  // GPIO1
#define USART0_TX_PIN       8  // P1_8
#define USART0_RX_PORT      1  // GPIO1
#define USART0_RX_PIN       9  // P1_9

// Prototipos
void uart_init(void);
bool USART_ReadByte_NonBlocking(USART_Type *base, char *c);
void uart_listener_task(void *pvParameters);

#endif /* DRIVERS_UART_UART_D_H_ */
