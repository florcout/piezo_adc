/*
 * bsp.c
 *
 *  Created on: Feb 23, 2023
 *      Author: florent
 */

/*
 * BSP_Console_Init()
 * USART2 @ 115200 Full Duplex
 * 1 start - 8-bit - 1 stop
 * TX -> PB10 (AF1)
 * RX -> PB11 (AF1)
 */

#include "bsp.h"

void BSP_Console_Init()
{
	// Enable GPIOA clock
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

	// Configure PA0 and PA1 as Alternate function
	GPIOB->MODER &= ~(GPIO_MODER_MODER10_Msk | GPIO_MODER_MODER11_Msk);
	GPIOB->MODER |= (0x02 <<GPIO_MODER_MODER10_Pos) | (0x02 <<GPIO_MODER_MODER11_Pos);

	// Set PB10 and PB11 to AF8 (USART3)
	GPIOB->AFR[1] &= ~(0x0000FF00);
	GPIOB->AFR[1] |=  (0x00007700);

	// Enable USART3 clock
	RCC -> APB1ENR |= RCC_APB1ENR_USART3EN;

	// Clear USART2 configuration (reset state)
	// 8-bit, 1 start, 1 stop, CTS/RTS disabled
	USART3->CR1 = 0x00000000;
	USART3->CR2 = 0x00000000;
	USART3->CR3 = 0x00000000;

	// Select PCLK (APB1) as clock source
	// PCLK -> 48 MHz
	RCC->DCKCFGR2 &= ~RCC_DCKCFGR2_USART3SEL_Msk;

	// Baud Rate = 115200
	// With OVER8=0 and Fck=48MHz, USARTDIV =   16E6/115200 = 139
	// BRR = 139 -> Baud Rate = 115107.9137 -> 0.08% error
	//
	// With OVER8=1 and Fck=48MHz, USARTDIV = 2*48E6/115200 = 833.3333
	// BRR = 833 -> Baud Rate = 115246.0984 -> 0.04% error (better)

	USART3->CR1 &= ~USART_CR1_OVER8_Msk;
	USART3->BRR = 139;

	// Enable both Transmitter and Receiver
	USART3->CR1 |= USART_CR1_TE | USART_CR1_RE;

	// Enable USART2
	USART3->CR1 |= USART_CR1_UE;
}
