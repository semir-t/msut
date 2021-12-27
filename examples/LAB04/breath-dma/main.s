	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.file 1 "main.c"
	.loc 1 11 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 15 0
	movs	r0, #45
	bl	initUSART2
.LVL1:
	.loc 1 16 0
	ldr	r0, .L5
	.loc 1 21 0
	ldr	r5, .L5+4
	ldr	r4, .L5+8
	.loc 1 16 0
	add	r1, r0, #2048
	mov	r2, #1024
	bl	initDmaADC1
.LVL2:
	.loc 1 17 0
	movs	r0, #10
	bl	delay_ms
.LVL3:
	.loc 1 18 0
	ldr	r3, .L5+12
	movs	r2, #0
	str	r2, [r3, #64]
.L2:
	.loc 1 21 0 discriminator 1
	ldr	r1, [r5, #4]
	ldr	r0, .L5+16
	ldr	r2, [r4, #36]
	bl	printUSART2
.LVL4:
	.loc 1 22 0 discriminator 1
	movs	r0, #100
	bl	delay_ms
.LVL5:
	.loc 1 23 0 discriminator 1
	b	.L2
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.word	1073897536
	.word	1073742848
	.word	1073743872
	.word	.LC0
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"[%d][%d]\012\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adc_buff0, %object
	.size	adc_buff0, 2048
adc_buff0:
	.space	2048
	.type	adc_buff1, %object
	.size	adc_buff1, 2048
adc_buff1:
	.space	2048
	.text
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2020/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2020/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "usart.h"
	.file 6 "adc.h"
	.file 7 "delay.h"
	.file 8 "../../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x46c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x3f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.2byte	0x1d7
	.4byte	0x130
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1d9
	.4byte	0xca
	.byte	0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1da
	.4byte	0xca
	.byte	0x4
	.uleb128 0x7
	.ascii	"PAR\000"
	.byte	0x4
	.2byte	0x1db
	.4byte	0xca
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1dc
	.4byte	0xca
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1dd
	.4byte	0xca
	.byte	0x10
	.uleb128 0x7
	.ascii	"FCR\000"
	.byte	0x4
	.2byte	0x1de
	.4byte	0xca
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1df
	.4byte	0xd9
	.uleb128 0x6
	.byte	0x54
	.byte	0x4
	.2byte	0x369
	.4byte	0x318
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x36b
	.4byte	0xcf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x36d
	.4byte	0xcf
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x36f
	.4byte	0xcf
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x371
	.4byte	0xcf
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0x7
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x373
	.4byte	0xcf
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0x7
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x375
	.4byte	0xcf
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x377
	.4byte	0xcf
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x379
	.4byte	0xcf
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x37b
	.4byte	0xcf
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0x7
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x37d
	.4byte	0xca
	.byte	0x24
	.uleb128 0x7
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x37e
	.4byte	0xcf
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0x7
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x380
	.4byte	0xca
	.byte	0x2c
	.uleb128 0x7
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x381
	.4byte	0xcf
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x383
	.4byte	0xca
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x384
	.4byte	0xca
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x385
	.4byte	0xca
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x386
	.4byte	0xca
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x387
	.4byte	0xcf
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0x7
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x389
	.4byte	0xcf
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x38b
	.4byte	0xcf
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0x7
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x38d
	.4byte	0xcf
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x38f
	.4byte	0x13c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF49
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa
	.4byte	0x89
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3df
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x1
	.byte	0xc
	.4byte	0xb8
	.uleb128 0xd
	.ascii	"k\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xb8
	.byte	0
	.uleb128 0xd
	.ascii	"n\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x41e
	.4byte	0x37d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0xe
	.4byte	.LVL2
	.4byte	0x42f
	.4byte	0x3a4
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+2048
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x450
	.4byte	0x3b7
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x461
	.4byte	0x3ce
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL5
	.4byte	0x450
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xa2
	.4byte	0x3f0
	.uleb128 0x12
	.4byte	0xc3
	.2byte	0x3ff
	.byte	0
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x7
	.4byte	0x3df
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_buff0
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x8
	.4byte	0x3df
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_buff1
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x51b
	.4byte	0xd4
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0x5
	.byte	0xe
	.4byte	0x42f
	.uleb128 0x16
	.4byte	0xb8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x6
	.byte	0x8
	.4byte	0x44a
	.uleb128 0x16
	.4byte	0x44a
	.uleb128 0x16
	.4byte	0x44a
	.uleb128 0x16
	.4byte	0xa2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x7
	.byte	0xb
	.4byte	0x461
	.uleb128 0x16
	.4byte	0xb8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x5
	.byte	0x10
	.uleb128 0x16
	.4byte	0x324
	.uleb128 0x18
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"CCER\000"
.LASF54:
	.ascii	"delay_ms\000"
.LASF45:
	.ascii	"DMAR\000"
.LASF21:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF30:
	.ascii	"CCMR1\000"
.LASF32:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF24:
	.ascii	"SMCR\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF58:
	.ascii	"main\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF55:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF10:
	.ascii	"long long int\000"
.LASF38:
	.ascii	"CCR1\000"
.LASF39:
	.ascii	"CCR2\000"
.LASF40:
	.ascii	"CCR3\000"
.LASF41:
	.ascii	"CCR4\000"
.LASF52:
	.ascii	"initUSART2\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"TIM_TypeDef\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF37:
	.ascii	"RESERVED10\000"
.LASF43:
	.ascii	"RESERVED11\000"
.LASF44:
	.ascii	"RESERVED12\000"
.LASF46:
	.ascii	"RESERVED13\000"
.LASF47:
	.ascii	"RESERVED14\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF53:
	.ascii	"initDmaADC1\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF57:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/2020/MSUT/STM32F407/LV5/primjeri/breath-dma"
	.ascii	"\000"
.LASF26:
	.ascii	"DIER\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"M1AR\000"
.LASF61:
	.ascii	"printUSART2\000"
.LASF49:
	.ascii	"char\000"
.LASF7:
	.ascii	"long int\000"
.LASF42:
	.ascii	"BDTR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF19:
	.ascii	"M0AR\000"
.LASF22:
	.ascii	"RESERVED0\000"
.LASF23:
	.ascii	"RESERVED1\000"
.LASF25:
	.ascii	"RESERVED2\000"
.LASF27:
	.ascii	"RESERVED3\000"
.LASF28:
	.ascii	"RESERVED4\000"
.LASF29:
	.ascii	"RESERVED5\000"
.LASF31:
	.ascii	"RESERVED6\000"
.LASF33:
	.ascii	"RESERVED7\000"
.LASF35:
	.ascii	"RESERVED8\000"
.LASF36:
	.ascii	"RESERVED9\000"
.LASF59:
	.ascii	"utmp32\000"
.LASF18:
	.ascii	"NDTR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF50:
	.ascii	"adc_buff0\000"
.LASF51:
	.ascii	"adc_buff1\000"
.LASF56:
	.ascii	"main.c\000"
.LASF60:
	.ascii	"ITM_RxBuffer\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
