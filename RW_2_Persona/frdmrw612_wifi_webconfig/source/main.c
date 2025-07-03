#include "Drivers/web_config/web_config_d.h"
#include "Drivers/RGB/rgb.h"
#include "Drivers/I2C/i2c.h"
#define APP_SW_PORT              BOARD_SW2_GPIO_PORT
#define APP_SW_PIN               BOARD_SW2_GPIO_PIN
#define APP_GPIO_INTA_IRQHandler GPIO_INTA_DriverIRQHandler
#define APP_GPIO_INTB_IRQHandler GPIO_INTA_DriverIRQHandler

#define APP_SW_IRQ               GPIO_INTA_IRQn
#define APP_SW_CONNECTED_LEVEL   0U
#define APP_SW_NAME              "SW2"

volatile bool presion = false;
volatile bool g_InputSignal3 = false;

void i2c_Task(void *pvParameters) {
    imu_data_t imuData;

    for (;;) {
    	 Accelerometer_Init();
        XYZ_GYRO();  // Se realiza la lectura del giroscopio

//        if (presion)
//        {
//            vTaskDelay(pdMS_TO_TICKS(7));
//            if (APP_SW_CONNECTED_LEVEL == GPIO_PinRead(GPIO, APP_SW_PORT, APP_SW_PIN))
//            {
//                PRINTF("%s is turned on.\r\n", APP_SW_NAME);
//            }
//
//            /* Reset state of switch. */
//            presion = false;
//        }
        vTaskDelay(pdMS_TO_TICKS(200));
    }
}

/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Interrupt service fuction of switch.
 */
void APP_GPIO_INTA_IRQHandler(void)
{
    /* clear the interrupt status */
    GPIO_PinClearInterruptFlag(GPIO, APP_SW_PORT, APP_SW_PIN, 0);
//    GPIO_PinClearInterruptFlag(GPIO, APP_SW_PORT, 9U, 0);
    /* Change state of switch. */
//    presion = true;
    presion=true;
    SDK_ISR_EXIT_BARRIER;
}
int main(void)
{
//	void pins_init_web();
    /* Initialize the hardware */


	    BOARD_InitBootPins();
	    BOARD_InitBootClocks();
	    BOARD_InitDebugConsole();
	    BOARD_BootClockRUN();
	    CLOCK_AttachClk(kSFRO_to_FLEXCOMM2);

	    gpio_pin_config_t sw_config    = {kGPIO_DigitalInput, 0};
	    gpio_interrupt_config_t config = {kGPIO_PinIntEnableEdge, kGPIO_PinIntEnableLowOrFall};

	    EnableIRQ(APP_SW_IRQ);
	        EnableIRQ(GPIO_INTB_IRQn);
	        GPIO_PortInit(GPIO, APP_SW_PORT);

	        GPIO_PinInit(GPIO, APP_SW_PORT, APP_SW_PIN, &sw_config);
	    //    GPIO_PinInit(GPIO, 0U, 9U, &sw_config);


	        /* Enable GPIO pin interrupt */
	        GPIO_SetPinInterruptConfig(GPIO, APP_SW_PORT, APP_SW_PIN, &config);
	        GPIO_PinEnableInterrupt(GPIO, APP_SW_PORT, APP_SW_PIN, 0);

	    //    GPIO_SetPinInterruptConfig(GPIO, 0U, 9U, &config);
	    //    GPIO_PinEnableInterrupt(GPIO, 0U, 9U, kGPIO_InterruptA);

	        // Configuración
	        GPIO_PinInit(GPIO, 0U, 4U, &sw_config);
	        GPIO_SetPinInterruptConfig(GPIO, 0U, 4U, &config);
	        GPIO_PinEnableInterrupt(GPIO, 0U, 4U, 0);


	        // NVIC
	        EnableIRQ(PIN_INT0_IRQn);
	        EnableIRQ(PIN_INT1_IRQn);


    if (BOARD_IS_XIP())
    {
        BOARD_BootClockLPR();
        CLOCK_EnableClock(kCLOCK_Otp);
        CLOCK_EnableClock(kCLOCK_Els);
        CLOCK_EnableClock(kCLOCK_ElsApb);
        RESET_PeripheralReset(kOTP_RST_SHIFT_RSTn);
        RESET_PeripheralReset(kELS_APB_RST_SHIFT_RSTn);
    }
    else
    {
        BOARD_InitBootClocks();
    }
    BOARD_InitDebugConsole();
    /* Reset GMDA */
    RESET_PeripheralReset(kGDMA_RST_SHIFT_RSTn);
    /* Keep CAU sleep clock here. */
    /* CPU1 uses Internal clock when in low power mode. */
    POWER_ConfigCauInSleep(false);
    BOARD_InitSleepPinConfig();


    if (xTaskCreate(main_task, "main_task", 2048, NULL, configMAX_PRIORITIES - 4, &g_BoardState.mainTask) != pdPASS)
    {
        PRINTF("[!] MAIN Task creation failed!\r\n");
        while (1)
            ;
    }
    xTaskCreate(i2c_Task, "IMU_Read_Task", configMINIMAL_STACK_SIZE + 200,NULL, tskIDLE_PRIORITY + 4, NULL);


    /* Run RTOS */

    vTaskStartScheduler();

    /* Should not reach this statement */
    for (;;)
        ;
}
//int main(void)
//{
//    /* Define the init structure for the input switch pin */
//    gpio_pin_config_t sw_config    = {kGPIO_DigitalInput, 0};
//    gpio_interrupt_config_t config = {kGPIO_PinIntEnableEdge, kGPIO_PinIntEnableLowOrFall};
//
//    /* hardware initialiize, include IOMUX, Uart debug initialize */
//
//        BOARD_InitPins();
//        BOARD_BootClockRUN();
//        BOARD_InitDebugConsole();
//    PRINTF("GPIO Driver example.\r\n");
//
//    /* Init input switch GPIO. */
//    EnableIRQ(APP_SW_IRQ);
//    EnableIRQ(GPIO_INTB_IRQn);
//    GPIO_PortInit(GPIO, APP_SW_PORT);
//
//    GPIO_PinInit(GPIO, APP_SW_PORT, APP_SW_PIN, &sw_config);
////    GPIO_PinInit(GPIO, 0U, 9U, &sw_config);
//
//
//    /* Enable GPIO pin interrupt */
//    GPIO_SetPinInterruptConfig(GPIO, APP_SW_PORT, APP_SW_PIN, &config);
//    GPIO_PinEnableInterrupt(GPIO, APP_SW_PORT, APP_SW_PIN, 0);
//
////    GPIO_SetPinInterruptConfig(GPIO, 0U, 9U, &config);
////    GPIO_PinEnableInterrupt(GPIO, 0U, 9U, kGPIO_InterruptA);
//
//    // Configuración
//    GPIO_PinInit(GPIO, 0U, 4U, &sw_config);
//    GPIO_SetPinInterruptConfig(GPIO, 0U, 4U, &config);
//    GPIO_PinEnableInterrupt(GPIO, 0U, 4U, 0);
//
//
//    // NVIC
//    EnableIRQ(PIN_INT0_IRQn);
//    EnableIRQ(PIN_INT1_IRQn);
//
//
//
//    while (1)
//    {
//        if (g_InputSignal)
//        {
////            delay();
//            if (APP_SW_CONNECTED_LEVEL == GPIO_PinRead(GPIO, APP_SW_PORT, APP_SW_PIN))
//            {
//                PRINTF("%s is turned on.\r\n", APP_SW_NAME);
//            }
//
//            /* Reset state of switch. */
//            g_InputSignal = false;
//        }
//        if(g_InputSignal3){
//            if (APP_SW_CONNECTED_LEVEL == GPIO_PinRead(GPIO, APP_SW_PORT, 9U))
//                   {
//                               PRINTF("sw3 is turned on.\r\n");
//                           }
//        }
//    }
//}
