#include "stm32f4xx.h"
#include "adc.h"
#include "dac.h"
#include "usart.h"
#include "delay.h"
#include "rand.h"
#include "math.h"
#include "fir.h"

#define IRQ_IDLE			0
#define IRQ_DETECTED		1
#define IRQ_WAIT4LOW		2
#define IRQ_DEBOUNCE		3
#define ADC_BUFF_SIZE			(DAC_BUFF_SIZE)
volatile uint8_t g_gpioa_irq_state = (IRQ_IDLE);
volatile uint32_t g_irq_timer = 0;
volatile uint8_t g_pbtn_cnt = 0;

#define DAC_BUFF_SIZE			1000
#define ADC_BUFF_SIZE			(DAC_BUFF_SIZE)
#define PI 3.14159
#define T1 1e-3
#define T2 3e-3
#define T3 4e-3

#define MA_FIR_SIZE				20

void serviceIRQA(void);
void getData4DAC(uint16_t * dac_buff, uint8_t pb);

int main(void)
{
	uint8_t c, t_pbtn_cnt = g_pbtn_cnt;
	uint32_t utmp32, k = 0, n ;
	uint16_t utmp16, dac_val, widx;
	uint8_t pb = 0;
	uint32_t time = 0, y;
	uint16_t dac_buff[DAC_BUFF_SIZE];
	uint16_t dac_buff_noise[DAC_BUFF_SIZE];
	uint16_t adc_buff0[ADC_BUFF_SIZE];
	uint16_t adc_buff1[ADC_BUFF_SIZE];
		
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	GPIOA->MODER &= ~0x00000003;  										// 
	
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;								// enable clock on SYSCFG register
	NVIC_EnableIRQ(EXTI0_IRQn);
	SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI0_PA;						// select PA 0 as interrupt source p259
	EXTI->IMR = EXTI_IMR_MR0;											// enable interrupt on EXTI_Line0
	EXTI->EMR &= ~EXTI_EMR_MR0;											// disable event on EXTI_Line0
	EXTI->RTSR = EXTI_RTSR_TR0;	
	EXTI->FTSR = 0x00000000;	
							  
	
	initSYSTIM();
	time = 0;
	initUSART2(USART2_BAUDRATE_921600);
	
	getData4DAC(dac_buff, pb);
	initDmaADC1(adc_buff0, adc_buff1, ADC_BUFF_SIZE);					
	initDmaDAC1(dac_buff_noise, DAC_BUFF_SIZE);							
	
	float * fir_coeff = lpcoeff;
	float fout[ADC_BUFF_SIZE];
	float fin[ADC_BUFF_SIZE], ftmp;
	uint32_t m = 0;
	uint16_t fir_data[ADC_BUFF_SIZE];
	while(1)
	{
		uint8_t c = getcharUSART2();
		/* n = ADC_BUFF_SIZE/2; */
		n = ADC_BUFF_SIZE/2;
		/*{{{ Procces data*/
		if((DMA2_Stream0->CR & DMA_SxCR_CT) == DMA_SxCR_CT)
		{// we can read buffer 0
			for(k=0;k<(n+FIR_N);k++)
			{
				if((k>=((FIR_N)/2))&&(k<((FIR_N)/2 + n)))
				{
					fin[k] = 3.0 * ((float)adc_buff0[k])/4095;

				}
				else
				{
					fin[k] = 0;

				}

			}

			for(k=0;k<n;k++)
			{
				ftmp = 0;
				for(m=0;m<(FIR_N);m++)
				{
					ftmp += fir_coeff[m]*fin[k+m];

				}
				fir_data[k] = (int16_t)(ftmp*4095/3.0);

			}

			for(k=0;k<n;k++)
			{
				uint16_t utmp16 = adc_buff0[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);

			}

			for(k=0;k<n;k++)
			{
				uint16_t utmp16 = fir_data[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);

			}
		}
		else
		{// we can read buffer 1
			/* for(k=0;k<(n+FIR_N);k++) */
			/* { */
			/* 	if((k>=((FIR_N)/2))&&(k<((FIR_N)/2 + n))) */
			/* 	{ */
			/* 		fin[k] = 3.0 * ((float)adc_buff1[k])/4095; */

			/* 	} */
			/* 	else */
			/* 	{ */
			/* 		fin[k] = 0; */

			/* 	} */

			/* } */

			/* for(k=0;k<n;k++) */
			/* { */
			/* 	ftmp = 0; */
			/* 	for(m=0;m<(FIR_N);m++) */
			/* 	{ */
			/* 		ftmp += fir_coeff[m]*fin[k+m]; */

			/* 	} */
			/* 	fir_data[k] = (int16_t)(ftmp*4095/3.0); */

			/* } */

			for(k=0;k<n;k++)
			{
				uint16_t utmp16 = adc_buff1[k];
				putcharUSART2((utmp16&0xFF00)>>8);
				putcharUSART2(utmp16&0x00FF);

			}

			/* for(k=0;k<n;k++) */
			/* { */
			/* 	uint16_t utmp16 = fir_data[k]; */
			/* 	putcharUSART2((utmp16&0xFF00)>>8); */
			/* 	putcharUSART2(utmp16&0x00FF); */

			/* } */
		}/*}}}*/
	}/*}}}*/
}

void getData4DAC(uint16_t * dac_buff, uint8_t pb)
{
	uint16_t n;
	float y, t =0;
	
	for(n=0;n<(DAC_BUFF_SIZE);n++)
	{
		y = 0.2*sinf(2*PI*200*t)+0.5 +0.1*sinf(2*PI*800*t);
		if(y*4094 > 4095)
			dac_buff[n] = 4095;
		else
			dac_buff[n] = (uint16_t)(y*4094);
		t = t + 1e-4;
	}
}

void serviceIRQA(void)
{
	switch(g_gpioa_irq_state)
	{
		case(IRQ_IDLE):
		{
			break;
		}
		case(IRQ_DETECTED):
		{
			g_pbtn_cnt++;
			if(g_pbtn_cnt >= 4)
				g_pbtn_cnt = 0;
				
			g_gpioa_irq_state = (IRQ_WAIT4LOW); 
			break;
		}
		case(IRQ_WAIT4LOW):
		{
			if((GPIOA->IDR & 0x0001) == 0x0000)
			{
				g_gpioa_irq_state = (IRQ_DEBOUNCE);
				g_irq_timer = getSYSTIM(); 
			}
			break;
		}
		case(IRQ_DEBOUNCE):
		{
			if(chk4TimeoutSYSTIM(g_irq_timer, 50) == (SYSTIM_TIMEOUT))
			{
				g_gpioa_irq_state = (IRQ_IDLE); 
			}
		}
		default:
		{
			break;
		}
	}
}

void EXTI0_IRQHandler(void)
{
	if((EXTI->PR & EXTI_PR_PR0) == EXTI_PR_PR0)							// EXTI_Line0 interrupt pending?
	{
		if(g_gpioa_irq_state == (IRQ_IDLE))
		{
			g_gpioa_irq_state = (IRQ_DETECTED);
		}
		EXTI->PR = EXTI_PR_PR0;											// clear EXTI_Line0 interrupt flag
	}
}


