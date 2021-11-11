#include "stm32f4xx.h"
#include "adc.h"
#include "usart.h"
#include "delay.h"

void doLED(void);
void initLED();

int main(void)
{
	uint32_t utmp32, k = 0;
	uint16_t utmp16;
	uint16_t pwm_val = 0;
	
	initSYSTIM();
	initUSART2(USART2_BAUDRATE_115200);
	initADC1();
	
	{ 
		///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
		/// setup PWM on TIM4 CH1, CH2, CH3 & CH4 -> PD12, PD13, PD14 & PD15
		///----------------------------------------------------------------
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								//
		GPIOD->MODER |= 0xAA000000;             							//
		GPIOD->OTYPER |= 0x00000000; 										//
		GPIOD->AFR[1] |= 0x22220000;										//  
	
		RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; 							// enable TIM4 on APB1 
		TIM4->PSC = 0x0054 - 0x0001;									// set TIM4 counting prescaler 
																		// 84MHz/84 = 1MHz -> count each 1us
		TIM4->ARR = 0x03E8;												// period of the PWM 1ms
		
		TIM4->CCR1 = 0x0000;											// duty cycle for the PWM set to 0%
		TIM4->CCR2 = 0x0000;
		TIM4->CCR3 = 0x0000;
		TIM4->CCR4 = 0x0000;
		
		TIM4->CCMR1 |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
		TIM4->CCMR1 |= (TIM_CCMR1_OC2PE)|(TIM_CCMR1_OC2M_2)|(TIM_CCMR1_OC2M_1);	
		TIM4->CCMR2 |= (TIM_CCMR2_OC3PE)|(TIM_CCMR2_OC3M_2)|(TIM_CCMR2_OC3M_1);	
		TIM4->CCMR2 |= (TIM_CCMR2_OC4PE)|(TIM_CCMR2_OC4M_2)|(TIM_CCMR2_OC4M_1);					
																			// set PWM 1 mod, enable OC1PE preload mode 
																			
		// set active mode high for pulse polarity
		TIM4->CCER &= ~((TIM_CCER_CC1P)|(TIM_CCER_CC2P)|(TIM_CCER_CC3P)|(TIM_CCER_CC4P));
		TIM4->CR1 |= (TIM_CR1_ARPE)|(TIM_CR1_URS);
		
		// update event, reload all config 
		TIM4->EGR |= TIM_EGR_UG;											
		// activate capture compare mode
		TIM4->CCER |= (TIM_CCER_CC1E)|(TIM_CCER_CC2E)|(TIM_CCER_CC3E)|(TIM_CCER_CC4E);
		// start counter										
		TIM4->CR1 |= TIM_CR1_CEN;											
	}
	
	uint32_t disp_timer = getSYSTIM();
	uint32_t update_timer = getSYSTIM(); 
	while(1)
	{
		
		if(chk4TimeoutSYSTIM(update_timer, 3000) == (SYSTIM_TIMEOUT))
		{
			update_timer = getSYSTIM();
			
			pwm_val += 100;
			if(pwm_val > 1000)
				pwm_val = 0;
			
			TIM4->CCR1 = pwm_val;
			TIM4->CCR2 = pwm_val;
			TIM4->CCR3 = pwm_val;
			TIM4->CCR4 = pwm_val;
				
		}
		
		
		if(chk4TimeoutSYSTIM(disp_timer, 100) == (SYSTIM_TIMEOUT))
		{
			disp_timer = getSYSTIM();
			
			// instantaneous value
			// utmp32 = getADC1();
			//// average value
			uint32_t cap_timer = getSYSTIM();
			utmp32 = 0;
			k = 0;
			while(chk4TimeoutSYSTIM(cap_timer, 1) != (SYSTIM_TIMEOUT))
			{
				utmp32 += getADC1();
				k++;
			}
			utmp32 = utmp32/k;


			printUSART2("-> ADC[%d]:  [%d/4095]\n",k,utmp32);
			utmp32 = ((3000*utmp32)/4095);
			printUSART2("-> ADC: measured %d[mV] -> expected %d[mV]\n",utmp32,(pwm_val*30)/10);	
		}		
	}
}
































































		
