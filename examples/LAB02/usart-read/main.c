#include "stm32f4xx.h"
#include "usart.h"

void delay_soft_ms(uint32_t cnt);
void toggleLED(uint8_t ledNo);

int main(void)
{
	uint32_t utmp32 = 0;	
	initUSART2(USART2_BAUDRATE_115200);
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								//  
    GPIOD->MODER |= 0x55000000;             							// 
    GPIOD->OTYPER |= 0x00000000;										// 
    GPIOD->OSPEEDR |= 0xFF000000; 										// 
	GPIOD->ODR &= ~(0xf000);

	char data = 'a';
	// while(1)
	// {
	// 	data = getcharUSART2();
	// 	putcharUSART2(data);
	// 	/* putcharUSART2('k'); */
	// 	delay_soft_ms(100);
	// }
	while(1)
	{
		uint8_t data = getcharUSART2();
		printUSART2("-> Toggle LED [%c]\n",data);
		switch(data)
		{
			case ('1'):
			{
				toggleLED(1);
				break;
			}
			case ('2'):
			{
				toggleLED(2);
				break;
			}
			case ('3'):
			{
				toggleLED(3);
				break;
			}
			case ('4'):
			{
				toggleLED(4);
				break;
			}
			default:
			{
				printUSART2("Invalid LED[%c]\n",data);
			}
		}

		delay_soft_ms(100);
		utmp32++;
	}
}

void toggleLED(uint8_t ledNo)
{
	ledNo += 11; // add offset because on the board LED are starting from PD12
	GPIOD->ODR ^= (0x0001 << ledNo);
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

