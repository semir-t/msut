#include "stm32f4xx.h"

int main(void)
{
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// inicijalizacija
	///-----------------------------------------------------------------
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								// 
    GPIOD->MODER |= 0x55000000;             							// 
    GPIOD->OTYPER |= 0x00000000;										// 
    GPIOD->OSPEEDR |= 0xFF000000; 										// 
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	// GPIOA->MODER &= 0xFFFFFFFC;  
	GPIOA->MODER &= ~(0x00000003);  
	GPIOA->PUPDR |= 0x00000002;								
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	
	
	while(1)
	{
IDR-A: xxxxxxxxxxxxxxx1xx
&	 : 0b0000000000000100
--------------------------
	 : 0b0000000000000100

		if((GPIOA->IDR & 0x0004) == 0x0004)
		{
			GPIOD->ODR |= 0xF000;
		}
		else
		{
// ODR-A: 0b0000000000000000
// ~    : 0b1111000000000000
// --------------------------
// ODR-A: 0bxxxx000011100110
// &    : 0b0000111111111111
// --------------------------
// 	 : 0b0000000011100110
	
			GPIOD->ODR &= ~0xF000;
		}
	}
}
