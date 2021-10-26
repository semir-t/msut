#include "stm32f4xx.h"

void delay_soft_ms(uint32_t cnt);

int main(void)
{
	uint8_t tmp = 0;
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// inicijalizacija
	///-----------------------------------------------------------------
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								//
    GPIOD->MODER |= 0x55000000;             							//
    GPIOD->OTYPER |= 0x00000000;										//
    GPIOD->OSPEEDR |= 0xFF000000; 										//
	
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;  										//
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	
	
	uint8_t pb_state = (GPIOA->IDR & 0x0001);
	while(1)
	{
		uint8_t pb_new_state = (GPIOA->IDR & 0x0001);
		if((pb_new_state == 1) && (pb_state != pb_new_state))
		{
			if(tmp == 0) 
			{
				tmp = 1;
			}
			else 
			{
				tmp = 0;
			}
			delay_soft_ms(100);	
		}		
		pb_state = pb_new_state;
		
		if(tmp == 1)
		{
			GPIOD->ODR |= 0xF000;
		}
		else
		{
			GPIOD->ODR &= ~0xF000;
		}
	}
}


void delay_soft_ms(uint32_t cnt)
{/// primitivna rutina za kasnjenje 									
	volatile uint32_t time = cnt*10500;											
																		// izbjegavati softverski definirane rutine																// za kasnjenje
	while(time)
	{
		time--;
	}														
	
	return;
}
