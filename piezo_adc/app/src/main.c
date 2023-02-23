/*
 * main.c
 *
 *  Created on: Feb 23, 2023
 *      Author: florent
 */
#include "stm32f7xx.h"

int main()
{
	uint32_t i;

	SystemCoreClockUpdate();

	BSP_Console_Init();
	my_printf("Console ready!\r\n");

	// Start GPIOA clock
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOIEN;

	// Configure PA5 as output
	GPIOI->MODER &= ~GPIO_MODER_MODER1_Msk;
	GPIOI->MODER |= (0x01 <<GPIO_MODER_MODER1_Pos);

	while(1)
	{
		/*// LED toggle
		GPIOI->ODR ^= GPIO_ODR_OD1;

		// Wait
		for(i=0; i<100000; i++);*/
		GPIOI->BSRR = GPIO_BSRR_BS1;

	}
}

