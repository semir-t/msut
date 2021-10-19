#include "stm32f4xx.h"

void delay_soft_ms(uint32_t cnt);

int main(void)
{
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// inicijalizacija
	///-----------------------------------------------------------------
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;  								//  
	GPIOB->MODER &= ~(0x0000000f);
    GPIOB->MODER |= 0x00000005;             							// 
    GPIOB->OTYPER |= 0x00000002;										// PB0(PP) PB1 (OD)
    // GPIOB->OSPEEDR |= 0xFF000000; 										// 
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	
	GPIOB->ODR = 0x0000;
	while(1)
	{
		GPIOB->ODR ^= 0x0003;
		delay_soft_ms(1000);
	}
}

void delay_soft_ms(uint32_t cnt)
{/// primitivna rutina za kasnjenje 									
volatile uint32_t time = cnt*10500;											
																		// 																// za kasnjenje
	while(time)
	{
		time--;
	}														
	
	return;
}

