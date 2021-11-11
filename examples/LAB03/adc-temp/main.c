#include "stm32f4xx.h"
#include "adc.h"
#include "usart.h"
#include "delay.h"

int main(void)
{
	uint16_t states[8] = {0xF000,0xE000,0xC000,0x8000,0x0000,0x1000,0x3000,0x7000};
	uint32_t utmp32, n;
	
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// inicijalizacija
	///-----------------------------------------------------------------
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								// aktiviramo GPIOD port (takt impulsi)
    GPIOD->MODER |= 0x55000000;             							// proglasimo pinove 12,13,14,15 kao izlaz
    GPIOD->OTYPER |= 0x00000000;										// onemogucimo 
    GPIOD->OSPEEDR |= 0xFF000000; 										// maksimalna brzina (tranzicije 100MHz)
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	
	initUSART2(USART2_BAUDRATE_115200);
	
	initADC1Temp();
	
	n = 0;
	while(1)
	{
		utmp32 = getADC1Temp(); 
		n++; 
		printUSART2("[%d] MCU temp: %d C\n",n, utmp32); 

		// int32_t temp = 0;
		// int32_t k = 0;
		// for(k = 0 ; k < 3000; ++k)
		// {
		// 	temp = (k - (ADC1_TEMP_V25))/(ADC1_AVR_SLOPE) + 25;
		// 	printUSART2(" [%d]MCU temp: %d C\n",k,temp);
		// 	delay_ms(10);
		// }
		// return;
		delay_ms(500);
	}
}
