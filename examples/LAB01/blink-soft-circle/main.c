#include "stm32f4xx.h"

void delay_soft_ms(uint32_t cnt);

int main(void)
{
	uint16_t leds[8] = {0xF000,0xE000,0xC000,0x8000,0x0000,0x1000,0x3000,0x7000};
	uint8_t n = 0;
	
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// initialize 4 LED's on the board 
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								// enable the clock for GPIOD
    GPIOD->MODER |= 0x55000000;             							// set PORTD pin 12,13,14,15 as output
    GPIOD->OTYPER = 0x00000000;											// Output push-pull 
    GPIOD->OSPEEDR |= 0xFF000000; 										// set max speed

	GPIOD->ODR &= ~(0x000F << 12);										// Clear all LEDs
	
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	
	while(1)
	{
		delay_soft_ms(100);
		GPIOD->ODR = leds[n];
		
		n++;
		if(n == 8)
			n = 0;
	}
}

void delay_soft_ms(uint32_t cnt)
{
	/// primitivna rutina za kasnjenje
	volatile uint32_t time = cnt*10500;
	while(time)
	{
		time--;
	}
	return;
}
