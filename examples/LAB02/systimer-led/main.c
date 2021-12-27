#include "stm32f4xx.h"
#include "delay.h"
#include "usart.h"

int main(void)
{
	uint32_t cnt = 0, time;
	
	initUSART2(USART2_BAUDRATE_115200);
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	printUSART2("w Starting systimter-task test app...\n");
	printUSART2("\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
	

	// Initialize LEDs
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								//  
    GPIOD->MODER |= 0x55000000;             							// 
    GPIOD->OTYPER |= 0x00000000;										// 
	GPIOD->OSPEEDR |= 0xFF000000; 										// 

	GPIOD->ODR = 0x0000;
	initSYSTIMER();
	delay_ms(100);

	uint32_t led1_time = getSYSTIMER();
	uint32_t led2_time = getSYSTIMER();
	uint32_t led3_time = getSYSTIMER();
	uint32_t led4_time = getSYSTIMER();
	while(1)
	{
		if(chk4TimeoutSYSTIMER(led1_time,100) == SYSTIMER_TIMEOUT)
		{
			GPIOD->ODR ^= 0x1000;
			led1_time = getSYSTIMER();
			/* printUSART2("-> Toggle LED[1]\n"); */
		}
		if(chk4TimeoutSYSTIMER(led2_time,150) == SYSTIMER_TIMEOUT)
		{
			GPIOD->ODR ^= 0x2000;
			led2_time = getSYSTIMER();
			/* printUSART2("-> Toggle LED[1]\n"); */
		}
		if(chk4TimeoutSYSTIMER(led3_time,250) == SYSTIMER_TIMEOUT)
		{
			GPIOD->ODR ^= 0x4000;
			led3_time = getSYSTIMER();
			/* printUSART2("-> Toggle LED[1]\n"); */
		}
		if(chk4TimeoutSYSTIMER(led4_time,430) == SYSTIMER_TIMEOUT)
		{
			GPIOD->ODR ^= 0x8000;
			led4_time = getSYSTIMER();
			/* printUSART2("-> Toggle LED[1]\n"); */
		}

	}
}

