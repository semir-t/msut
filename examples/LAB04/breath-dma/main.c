#include "stm32f4xx.h"
#include "adc.h"
#include "usart.h"
#include "delay.h"

#define ADC_BUFF_SIZE		1024
static uint16_t adc_buff0[ADC_BUFF_SIZE];
static uint16_t adc_buff1[ADC_BUFF_SIZE];

int main(void)
{
	uint32_t utmp32, k = 0;
	uint8_t n = 0;

	initUSART2(USART2_BAUDRATE_921600);
	initDmaADC1(adc_buff0, adc_buff1, ADC_BUFF_SIZE);					// init ADC1 in double buffer DMA mode
	delay_ms(10);
	TIM4->CCR4 = 0;
	while(1)
	{
		printUSART2("[%d][%d]\n",DMA1_Stream2->NDTR,TIM3->CNT);
		delay_ms(100);
	}
}
