/*
 * rgb.h
 *
 *  Created on: 2 jul. 2025
 *      Author: oralu
 */

#ifndef DRIVERS_RGB_RGB_H_
#define DRIVERS_RGB_RGB_H_

#include <stdio.h>
#include "pin_mux.h"
#include "fsl_gpio.h"
#include "board.h"
#include "fsl_common.h"
#include "fsl_io_mux.h"
#include "fsl_gpio.h"

#define RGB_GPIO_PORT 		0U

#define RGB_LED_RED_PIN 	1U
#define RGB_LED_GREEN_PIN 	12U
#define RGB_LED_BLUE_PIN 	0U

void LED_INIT(void);

void BLUE_LED_ON(void);
void BLUE_LED_OFF(void);

void RED_LED_ON(void);
void RED_LED_OFF(void);

void GREEN_LED_ON(void);
void GREEN_LED_OFF(void);

//void init_RGB(void);

#endif /* DRIVERS_RGB_RGB_H_ */
