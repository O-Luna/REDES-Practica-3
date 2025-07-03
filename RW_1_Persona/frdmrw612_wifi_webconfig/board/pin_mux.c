/*
 * Copyright 2021 NXP.
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "fsl_common.h"
#include "pin_mux.h"
#include "fsl_io_mux.h"
#include "fsl_gpio.h"

/* FUNCTION ************************************************************************************************************
 *
 * Function Name : BOARD_InitBootPins
 * Description   : Calls initialization functions.
 *
 * END ****************************************************************************************************************/
void BOARD_InitBootPins(void)
{
    BOARD_InitPins();
}

/* FUNCTION ************************************************************************************************************
 *
 * Function Name : BOARD_InitPins
 * Description   : Configures pin routing and optionally pin electrical features.
 *
 * END ****************************************************************************************************************/
void BOARD_InitPins(void) {                                /*!< Function assigned for the core: Cortex-M33[cm33] */
    IO_MUX_SetPinMux(IO_MUX_FC3_USART_DATA);
    IO_MUX_SetPinMux(IO_MUX_GPIO11);

    IO_MUX_SetPinMux(IO_MUX_FC2_I2C_16_17);

    IO_MUX_SetPinMux(IO_MUX_GPIO0);
    IO_MUX_SetPinMux(IO_MUX_GPIO1);
    IO_MUX_SetPinMux(IO_MUX_GPIO11);
    IO_MUX_SetPinMux(IO_MUX_GPIO12);

    GPIO_PortInit(GPIO, 0);

      gpio_pin_config_t gpio0_pinG3_config = {
          .pinDirection = kGPIO_DigitalInput,
          .outputLogic = 0U
      };
      gpio_interrupt_config_t gpio0_pinG3_int_config = {
          .mode = kGPIO_PinIntEnableEdge,
          .polarity = kGPIO_PinIntEnableLowOrFall
      };
      /* Initialize GPIO functionality on pin PIO0_25 (pin G3)  */
      GPIO_PinInit(GPIO, 0U, 25U, &gpio0_pinG3_config);
      GPIO_SetPinInterruptConfig(GPIO, 0U, 25U, &gpio0_pinG3_int_config);
      GPIO_PinEnableInterrupt(GPIO, 0U, 25U, (uint32_t)kGPIO_InterruptA);
      /* Initialize FC3_USART_DATA functionality on pin GPIO_24 (pin F3) */
      IO_MUX_SetPinMux(IO_MUX_FC3_USART_DATA);
      /* Initialize GPIO25 functionality on pin GPIO_25 (pin G3) */
      IO_MUX_SetPinMux(IO_MUX_GPIO25);
  	IO_MUX_SetPinMux(IO_MUX_GPIO11);
  	IO_MUX_SetPinMux(IO_MUX_GPIO4);

      GPIO_PinInit(GPIO, 0U, 11U, &gpio0_pinG3_config);
      GPIO_SetPinInterruptConfig(GPIO, 0U, 11U, &gpio0_pinG3_int_config);
      GPIO_PinEnableInterrupt(GPIO, 0U, 11U, (uint32_t)kGPIO_InterruptA);


}

/***********************************************************************************************************************
 * EOF
 **********************************************************************************************************************/
