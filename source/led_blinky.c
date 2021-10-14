/*
 * Copyright 2019 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
/*#define BOARD_LED_GPIO_RED     			BOARD_LED_RED_GPIO
#define BOARD_LED_GPIO_PIN_RED 			BOARD_LED_RED_PIN
*/
#define BOARD_LED_GPIO_GREEN     		BOARD_LED_GREEN_GPIO
#define BOARD_LED_GPIO_PIN_GREEN 		BOARD_LED_GREEN_PIN
/*
#define BOARD_LED_GPIO_BLUE     		BOARD_LED_BLUE_GPIO
#define BOARD_LED_GPIO_PIN_BLUE 		BOARD_LED_BLUE_PIN*/


/*******************************************************************************
 * Prototypes
 ******************************************************************************/

/*******************************************************************************
 * Variables
 ******************************************************************************/
volatile uint32_t g_systickCounter;

/*******************************************************************************
 * Code
 ******************************************************************************/
void SysTick_Handler(void)
{
    if (g_systickCounter != 0U)
    {
        g_systickCounter--;
    }
}

void SysTick_DelayTicks(uint32_t n)
{
    g_systickCounter = n;
    while (g_systickCounter != 0U)
    {
    }
}

/*!
 * @brief Main function
 */
int main(void)
{
    /* Board pin init */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();

    /* Set systick reload value to generate 1ms interrupt */
    if (SysTick_Config(SystemCoreClock / 1000U))
    {
        while (1)
        {
        }
    }

    while (1)
    {
        /* Delay 1000 ms */
        SysTick_DelayTicks(100U);
        /*GPIO_PortToggle(BOARD_LED_GPIO_RED, 1u << BOARD_LED_GPIO_PIN_RED);
        SysTick_DelayTicks(100U);*/
        GPIO_PortToggle(BOARD_LED_GPIO_GREEN, 1u << BOARD_LED_GPIO_PIN_GREEN);
        /*SysTick_DelayTicks(100U);
        GPIO_PortToggle(BOARD_LED_GPIO_BLUE, 1u << BOARD_LED_GPIO_PIN_BLUE);*/
    }
}
