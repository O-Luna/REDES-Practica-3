#include "rgb.h"

#define LED_PIN 0U  // BLUE LED PIN


void LED_INIT(void)
{
    gpio_pin_config_t RGB_LED_config = {
        kGPIO_DigitalOutput,
        1,
    };
    IO_MUX_SetPinMux(IO_MUX_GPIO0);

    GPIO_PortInit(GPIO, RGB_GPIO_PORT);

    GPIO_PinInit(GPIO, RGB_GPIO_PORT, RGB_LED_BLUE_PIN, &RGB_LED_config);
    GPIO_PinInit(GPIO, RGB_GPIO_PORT, RGB_LED_RED_PIN, &RGB_LED_config);
    GPIO_PinInit(GPIO, RGB_GPIO_PORT, RGB_LED_GREEN_PIN, &RGB_LED_config);

    GPIO_PinWrite(GPIO, RGB_GPIO_PORT, RGB_LED_BLUE_PIN, 1U); //apagar
    GPIO_PinWrite(GPIO, RGB_GPIO_PORT, RGB_LED_RED_PIN, 1U); //apagar
    GPIO_PinWrite(GPIO, RGB_GPIO_PORT, RGB_LED_GREEN_PIN, 1U); //apagar
}

void BLUE_LED_ON(void)
{
    GPIO_PinWrite(GPIO, 0U, RGB_LED_BLUE_PIN, 0U);
}

void BLUE_LED_OFF(void)
{
    GPIO_PinWrite(GPIO, 0U, RGB_LED_BLUE_PIN, 1U);
}

void RED_LED_ON(void)
{
    GPIO_PinWrite(GPIO, 0U, RGB_LED_RED_PIN, 0U);
}

void RED_LED_OFF(void)
{
    GPIO_PinWrite(GPIO, 0U, RGB_LED_RED_PIN, 1U);
}

void GREEN_LED_ON(void)
{
    GPIO_PinWrite(GPIO, 0U, RGB_LED_GREEN_PIN, 0U);
}

void GREEN_LED_OFF(void)
{
    GPIO_PinWrite(GPIO, 0U, RGB_LED_GREEN_PIN, 1U);
}
