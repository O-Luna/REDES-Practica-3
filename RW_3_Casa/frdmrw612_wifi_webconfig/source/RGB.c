/*
 * RGB.c
 *
 *  Created on: 3 jul. 2025
 *      Author: armzr
 */
#include "RGB.h"

void init_RGB(void)
{
	gpio_pin_config_t led_config = {
		kGPIO_DigitalOutput,
	    0,
	};

	GPIO_PortInit(GPIO, 0U);
	GPIO_PortInit(GPIO, 1U);

	GPIO_PinInit(GPIO, 0U, 0U, &led_config); // Azul
	GPIO_PinWrite(GPIO, 0U, 0U, 1);

	GPIO_PinInit(GPIO, 0U, 1U, &led_config); // Rojo
	GPIO_PinWrite(GPIO, 0U, 1U, 1);

	GPIO_PinInit(GPIO, 0U, 12U, &led_config); // Verde
	GPIO_PinWrite(GPIO, 0U, 12U, 1);

	GPIO_PortToggle(GPIO, 0U, 1u << 12U);
}

