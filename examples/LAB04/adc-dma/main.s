	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB113:
	.file 1 "main.c"
	.loc 1 11 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 15 0
	movs	r0, #45
	bl	initUSART2
.LVL1:
	.loc 1 16 0
	ldr	r1, .L14
	.loc 1 21 0
	ldr	r7, .L14+4
	.loc 1 40 0
	ldr	r10, .L14+12
	.loc 1 29 0
	ldr	r9, .L14+16
	.loc 1 16 0
	add	r0, r1, #2048
	mov	r2, #1024
	mov	r8, r1
	.loc 1 13 0
	movs	r6, #0
	.loc 1 16 0
	bl	initDmaADC1
.LVL2:
	.loc 1 17 0
	movs	r0, #10
	bl	delay_ms
.LVL3:
	.loc 1 12 0
	mov	r4, r6
	b	.L7
.LVL4:
.L13:
	.loc 1 23 0
	cbnz	r6, .L8
	mov	r5, r4
	adds	r4, r4, #1
.LVL5:
.L3:
	.loc 1 29 0
	mov	r1, r5
	.loc 1 30 0
	add	r5, r8, r5, lsl #1
.LVL6:
	.loc 1 29 0
	ldr	r2, [r7, #4]
	mov	r0, r9
	bl	printUSART2
.LVL7:
	.loc 1 30 0
	ldrh	r1, [r5, #2048]
.LVL8:
	movs	r6, #0
.LVL9:
.L4:
	.loc 1 48 0
	ldr	r0, .L14+8
	.loc 1 45 0
	cmp	r4, #1024
	it	cs
	movcs	r4, #0
.LVL10:
	.loc 1 48 0
	bl	printUSART2
.LVL11:
	.loc 1 49 0
	movs	r0, #10
	bl	delay_ms
.LVL12:
.L7:
	.loc 1 21 0
	ldr	r3, [r7]
	lsls	r3, r3, #12
	bmi	.L13
	.loc 1 34 0
	cbz	r6, .L9
	mov	r5, r4
	adds	r4, r4, #1
.LVL13:
.L5:
	.loc 1 40 0
	mov	r1, r5
	ldr	r2, [r7, #4]
	mov	r0, r10
	bl	printUSART2
.LVL14:
	.loc 1 41 0
	movs	r6, #1
	ldrh	r1, [r8, r5, lsl #1]
.LVL15:
	b	.L4
.LVL16:
.L9:
	.loc 1 36 0
	mov	r5, r6
	movs	r4, #1
.LVL17:
	b	.L5
.LVL18:
.L8:
	mov	r4, r6
.LVL19:
	.loc 1 25 0
	movs	r5, #0
	b	.L3
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	1073898512
	.word	.LC2
	.word	.LC1
	.word	.LC0
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adc_buff1, %object
	.size	adc_buff1, 2048
adc_buff1:
	.space	2048
	.type	adc_buff0, %object
	.size	adc_buff0, 2048
adc_buff0:
	.space	2048
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"R[0: %d] W[1: %d] adc_buff1\000"
.LC1:
	.ascii	"R[1: %d] W[0: %d] adc_buff2\000"
.LC2:
	.ascii	"-> ADC: %d\012\012\000"
	.text
.Letext0:
	.file 2 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.file 7 "delay.h"
	.file 8 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 9 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 10 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 11 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 12 "usart.h"
	.file 13 "adc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xab7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
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
	.byte	0x2b
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
	.byte	0x39
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
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
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x5
	.4byte	0xbd
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xbd
	.uleb128 0x8
	.byte	0x18
	.byte	0x6
	.2byte	0x1d7
	.4byte	0x13b
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x1d9
	.4byte	0xc8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x1da
	.4byte	0xc8
	.byte	0x4
	.uleb128 0x9
	.ascii	"PAR\000"
	.byte	0x6
	.2byte	0x1db
	.4byte	0xc8
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x1dc
	.4byte	0xc8
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x1dd
	.4byte	0xc8
	.byte	0x10
	.uleb128 0x9
	.ascii	"FCR\000"
	.byte	0x6
	.2byte	0x1de
	.4byte	0xc8
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x1df
	.4byte	0xe4
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x7
	.byte	0x1c
	.4byte	0xc8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x22
	.4byte	0x166
	.uleb128 0xd
	.byte	0x4
	.4byte	0x16c
	.uleb128 0xe
	.4byte	.LASF132
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x9
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x72
	.4byte	0x62
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x165
	.4byte	0x90
	.uleb128 0xf
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.4byte	0x1b2
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x9
	.byte	0xa8
	.4byte	0x187
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x9
	.byte	0xa9
	.4byte	0x1b2
	.byte	0
	.uleb128 0x11
	.4byte	0x37
	.4byte	0x1c2
	.uleb128 0x12
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.byte	0xa3
	.4byte	0x1e3
	.uleb128 0x14
	.4byte	.LASF31
	.byte	0x9
	.byte	0xa5
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x9
	.byte	0xaa
	.4byte	0x193
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0xab
	.4byte	0x1c2
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0xaf
	.4byte	0x15b
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xb
	.byte	0x16
	.4byte	0x74
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x18
	.byte	0xb
	.byte	0x2f
	.4byte	0x257
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0xb
	.byte	0x31
	.4byte	0x257
	.byte	0
	.uleb128 0x16
	.ascii	"_k\000"
	.byte	0xb
	.byte	0x32
	.4byte	0x89
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0xb
	.byte	0x32
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0xb
	.byte	0x32
	.4byte	0x89
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0xb
	.byte	0x32
	.4byte	0x89
	.byte	0x10
	.uleb128 0x16
	.ascii	"_x\000"
	.byte	0xb
	.byte	0x33
	.4byte	0x25d
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x204
	.uleb128 0x11
	.4byte	0x1f9
	.4byte	0x26d
	.uleb128 0x12
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x24
	.byte	0xb
	.byte	0x37
	.4byte	0x2e6
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0xb
	.byte	0x39
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0xb
	.byte	0x3a
	.4byte	0x89
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0xb
	.byte	0x3b
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0xb
	.byte	0x3c
	.4byte	0x89
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0xb
	.byte	0x3d
	.4byte	0x89
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0xb
	.byte	0x3e
	.4byte	0x89
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0xb
	.byte	0x3f
	.4byte	0x89
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0xb
	.byte	0x40
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xb
	.byte	0x41
	.4byte	0x89
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF51
	.2byte	0x108
	.byte	0xb
	.byte	0x4a
	.4byte	0x326
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0xb
	.byte	0x4b
	.4byte	0x326
	.byte	0
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xb
	.byte	0x4c
	.4byte	0x326
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0xb
	.byte	0x4e
	.4byte	0x1f9
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0xb
	.byte	0x51
	.4byte	0x1f9
	.2byte	0x104
	.byte	0
	.uleb128 0x11
	.4byte	0x159
	.4byte	0x336
	.uleb128 0x12
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF56
	.2byte	0x190
	.byte	0xb
	.byte	0x5d
	.4byte	0x374
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0xb
	.byte	0x5e
	.4byte	0x374
	.byte	0
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xb
	.byte	0x5f
	.4byte	0x89
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xb
	.byte	0x61
	.4byte	0x37a
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xb
	.byte	0x62
	.4byte	0x2e6
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x336
	.uleb128 0x11
	.4byte	0x38a
	.4byte	0x38a
	.uleb128 0x12
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x390
	.uleb128 0x19
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x8
	.byte	0xb
	.byte	0x75
	.4byte	0x3b6
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xb
	.byte	0x76
	.4byte	0x3b6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xb
	.byte	0x77
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x37
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x68
	.byte	0xb
	.byte	0xb5
	.4byte	0x4e6
	.uleb128 0x16
	.ascii	"_p\000"
	.byte	0xb
	.byte	0xb6
	.4byte	0x3b6
	.byte	0
	.uleb128 0x16
	.ascii	"_r\000"
	.byte	0xb
	.byte	0xb7
	.4byte	0x89
	.byte	0x4
	.uleb128 0x16
	.ascii	"_w\000"
	.byte	0xb
	.byte	0xb8
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0xb
	.byte	0xb9
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0xb
	.byte	0xba
	.4byte	0x3e
	.byte	0xe
	.uleb128 0x16
	.ascii	"_bf\000"
	.byte	0xb
	.byte	0xbb
	.4byte	0x391
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0xb
	.byte	0xbc
	.4byte	0x89
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0xb
	.byte	0xc3
	.4byte	0x159
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xb
	.byte	0xc5
	.4byte	0x653
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0xb
	.byte	0xc7
	.4byte	0x67d
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0xb
	.byte	0xca
	.4byte	0x6a1
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xb
	.byte	0xcb
	.4byte	0x6bb
	.byte	0x2c
	.uleb128 0x16
	.ascii	"_ub\000"
	.byte	0xb
	.byte	0xce
	.4byte	0x391
	.byte	0x30
	.uleb128 0x16
	.ascii	"_up\000"
	.byte	0xb
	.byte	0xcf
	.4byte	0x3b6
	.byte	0x38
	.uleb128 0x16
	.ascii	"_ur\000"
	.byte	0xb
	.byte	0xd0
	.4byte	0x89
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xb
	.byte	0xd3
	.4byte	0x6c1
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0xb
	.byte	0xd4
	.4byte	0x6d1
	.byte	0x43
	.uleb128 0x16
	.ascii	"_lb\000"
	.byte	0xb
	.byte	0xd7
	.4byte	0x391
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xb
	.byte	0xda
	.4byte	0x89
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xb
	.byte	0xdb
	.4byte	0x171
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0xb
	.byte	0xde
	.4byte	0x504
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0xb
	.byte	0xe2
	.4byte	0x1ee
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0xb
	.byte	0xe4
	.4byte	0x1e3
	.byte	0x5c
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0xb
	.byte	0xe5
	.4byte	0x89
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x89
	.4byte	0x504
	.uleb128 0x1b
	.4byte	0x504
	.uleb128 0x1b
	.4byte	0x159
	.uleb128 0x1b
	.4byte	0x641
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x1c
	.4byte	0x504
	.uleb128 0x1d
	.4byte	.LASF79
	.2byte	0x428
	.byte	0xb
	.2byte	0x260
	.4byte	0x641
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xb
	.2byte	0x262
	.4byte	0x89
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xb
	.2byte	0x267
	.4byte	0x728
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x267
	.4byte	0x728
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xb
	.2byte	0x267
	.4byte	0x728
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xb
	.2byte	0x269
	.4byte	0x89
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x26a
	.4byte	0x90a
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x26d
	.4byte	0x89
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x26e
	.4byte	0x91f
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x270
	.4byte	0x89
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x272
	.4byte	0x930
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x275
	.4byte	0x257
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x276
	.4byte	0x89
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x277
	.4byte	0x257
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x278
	.4byte	0x936
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x27b
	.4byte	0x89
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x27c
	.4byte	0x641
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x29f
	.4byte	0x8e8
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0xb
	.2byte	0x2a3
	.4byte	0x374
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x2a4
	.4byte	0x336
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x2a8
	.4byte	0x947
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x2ad
	.4byte	0x6ed
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x2af
	.4byte	0x953
	.2byte	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x647
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF101
	.uleb128 0x1c
	.4byte	0x647
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4e6
	.uleb128 0x1a
	.4byte	0x89
	.4byte	0x677
	.uleb128 0x1b
	.4byte	0x504
	.uleb128 0x1b
	.4byte	0x159
	.uleb128 0x1b
	.4byte	0x677
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x64e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x659
	.uleb128 0x1a
	.4byte	0x17c
	.4byte	0x6a1
	.uleb128 0x1b
	.4byte	0x504
	.uleb128 0x1b
	.4byte	0x159
	.uleb128 0x1b
	.4byte	0x17c
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x683
	.uleb128 0x1a
	.4byte	0x89
	.4byte	0x6bb
	.uleb128 0x1b
	.4byte	0x504
	.uleb128 0x1b
	.4byte	0x159
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a7
	.uleb128 0x11
	.4byte	0x37
	.4byte	0x6d1
	.uleb128 0x12
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	0x37
	.4byte	0x6e1
	.uleb128 0x12
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x11f
	.4byte	0x3bc
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0xc
	.byte	0xb
	.2byte	0x123
	.4byte	0x722
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xb
	.2byte	0x125
	.4byte	0x722
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x126
	.4byte	0x89
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x127
	.4byte	0x728
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6ed
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6e1
	.uleb128 0x1f
	.4byte	.LASF106
	.byte	0xe
	.byte	0xb
	.2byte	0x13f
	.4byte	0x763
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xb
	.2byte	0x140
	.4byte	0x763
	.byte	0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x141
	.4byte	0x763
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x142
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	0x50
	.4byte	0x773
	.uleb128 0x12
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0xd0
	.byte	0xb
	.2byte	0x280
	.4byte	0x874
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x282
	.4byte	0x90
	.byte	0
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x283
	.4byte	0x641
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x284
	.4byte	0x874
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x285
	.4byte	0x26d
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x286
	.4byte	0x89
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x287
	.4byte	0x82
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x288
	.4byte	0x72e
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x289
	.4byte	0x1e3
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x28a
	.4byte	0x1e3
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x28b
	.4byte	0x1e3
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x28c
	.4byte	0x884
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x28d
	.4byte	0x894
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x28e
	.4byte	0x89
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x28f
	.4byte	0x1e3
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x290
	.4byte	0x1e3
	.byte	0xac
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x291
	.4byte	0x1e3
	.byte	0xb4
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x292
	.4byte	0x1e3
	.byte	0xbc
	.uleb128 0xa
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x293
	.4byte	0x1e3
	.byte	0xc4
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x294
	.4byte	0x89
	.byte	0xcc
	.byte	0
	.uleb128 0x11
	.4byte	0x647
	.4byte	0x884
	.uleb128 0x12
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	0x647
	.4byte	0x894
	.uleb128 0x12
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x11
	.4byte	0x647
	.4byte	0x8a4
	.uleb128 0x12
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.byte	0xf0
	.byte	0xb
	.2byte	0x299
	.4byte	0x8c8
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x29c
	.4byte	0x8c8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x29d
	.4byte	0x8d8
	.byte	0x78
	.byte	0
	.uleb128 0x11
	.4byte	0x3b6
	.4byte	0x8d8
	.uleb128 0x12
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	0x90
	.4byte	0x8e8
	.uleb128 0x12
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xb
	.2byte	0x27e
	.4byte	0x90a
	.uleb128 0x21
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x295
	.4byte	0x773
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x29e
	.4byte	0x8a4
	.byte	0
	.uleb128 0x11
	.4byte	0x647
	.4byte	0x91a
	.uleb128 0x12
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF133
	.uleb128 0xd
	.byte	0x4
	.4byte	0x91a
	.uleb128 0x22
	.4byte	0x930
	.uleb128 0x1b
	.4byte	0x504
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x925
	.uleb128 0xd
	.byte	0x4
	.4byte	0x257
	.uleb128 0x22
	.4byte	0x947
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x94d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x93c
	.uleb128 0x11
	.4byte	0x6e1
	.4byte	0x963
	.uleb128 0x12
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x32e
	.4byte	0x504
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x32f
	.4byte	0x50a
	.uleb128 0x11
	.4byte	0xa2
	.4byte	0x98c
	.uleb128 0x23
	.4byte	0x90
	.2byte	0x3ff
	.byte	0
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x7
	.4byte	0x97b
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_buff0
	.uleb128 0x24
	.4byte	.LASF137
	.byte	0x1
	.byte	0x8
	.4byte	0x97b
	.uleb128 0x5
	.byte	0x3
	.4byte	adc_buff1
	.uleb128 0x25
	.4byte	.LASF146
	.byte	0x1
	.byte	0xa
	.4byte	0x89
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8e
	.uleb128 0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0xc
	.4byte	0xbd
	.4byte	.LLST0
	.uleb128 0x27
	.ascii	"k\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xbd
	.4byte	.LLST1
	.uleb128 0x27
	.ascii	"n\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x97
	.4byte	.LLST2
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xa8e
	.4byte	0xa04
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0xa99
	.4byte	0xa26
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x78
	.sleb128 2048
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0xaa4
	.4byte	0xa39
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0xaaf
	.4byte	0xa4d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xaaf
	.4byte	0xa64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xaa4
	.4byte	0xa77
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL14
	.4byte	0xaaf
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xc
	.byte	0xe
	.uleb128 0x2b
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xd
	.byte	0x8
	.uleb128 0x2b
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x7
	.byte	0xb
	.uleb128 0x2b
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xc
	.byte	0x10
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
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0x17
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF53:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF138:
	.ascii	"utmp32\000"
.LASF20:
	.ascii	"M0AR\000"
.LASF106:
	.ascii	"_rand48\000"
.LASF85:
	.ascii	"_emergency\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF97:
	.ascii	"_atexit0\000"
.LASF126:
	.ascii	"_wcrtomb_state\000"
.LASF127:
	.ascii	"_wcsrtombs_state\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF65:
	.ascii	"_lbfsize\000"
.LASF92:
	.ascii	"_p5s\000"
.LASF133:
	.ascii	"__locale_t\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF124:
	.ascii	"_mbrtowc_state\000"
.LASF139:
	.ascii	"initUSART2\000"
.LASF42:
	.ascii	"__tm_sec\000"
.LASF26:
	.ascii	"_off_t\000"
.LASF70:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF71:
	.ascii	"_ubuf\000"
.LASF60:
	.ascii	"_base\000"
.LASF44:
	.ascii	"__tm_hour\000"
.LASF29:
	.ascii	"__wch\000"
.LASF100:
	.ascii	"__sf\000"
.LASF51:
	.ascii	"_on_exit_args\000"
.LASF66:
	.ascii	"_cookie\000"
.LASF99:
	.ascii	"__sglue\000"
.LASF7:
	.ascii	"long int\000"
.LASF63:
	.ascii	"_flags\000"
.LASF55:
	.ascii	"_is_cxa\000"
.LASF81:
	.ascii	"_stdin\000"
.LASF91:
	.ascii	"_result_k\000"
.LASF23:
	.ascii	"g_tim7_val\000"
.LASF10:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF95:
	.ascii	"_cvtbuf\000"
.LASF74:
	.ascii	"_offset\000"
.LASF125:
	.ascii	"_mbsrtowcs_state\000"
.LASF123:
	.ascii	"_mbrlen_state\000"
.LASF58:
	.ascii	"_fns\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF38:
	.ascii	"_sign\000"
.LASF134:
	.ascii	"_impure_ptr\000"
.LASF83:
	.ascii	"_stderr\000"
.LASF40:
	.ascii	"_Bigint\000"
.LASF67:
	.ascii	"_read\000"
.LASF41:
	.ascii	"__tm\000"
.LASF145:
	.ascii	"/home/semir/Dropbox/Fakultet/MSUT/students/examples"
	.ascii	"/LAB04/adc-dma\000"
.LASF30:
	.ascii	"__wchb\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF82:
	.ascii	"_stdout\000"
.LASF94:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF64:
	.ascii	"_file\000"
.LASF75:
	.ascii	"_data\000"
.LASF104:
	.ascii	"_niobs\000"
.LASF115:
	.ascii	"_rand_next\000"
.LASF121:
	.ascii	"_signal_buf\000"
.LASF112:
	.ascii	"_asctime_buf\000"
.LASF90:
	.ascii	"_result\000"
.LASF143:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF25:
	.ascii	"_LOCK_T\000"
.LASF144:
	.ascii	"main.c\000"
.LASF96:
	.ascii	"_new\000"
.LASF76:
	.ascii	"_lock\000"
.LASF108:
	.ascii	"_mult\000"
.LASF142:
	.ascii	"printUSART2\000"
.LASF68:
	.ascii	"_write\000"
.LASF47:
	.ascii	"__tm_year\000"
.LASF130:
	.ascii	"_nmalloc\000"
.LASF129:
	.ascii	"_nextf\000"
.LASF46:
	.ascii	"__tm_mon\000"
.LASF56:
	.ascii	"_atexit\000"
.LASF88:
	.ascii	"__sdidinit\000"
.LASF114:
	.ascii	"_gamma_signgam\000"
.LASF28:
	.ascii	"wint_t\000"
.LASF93:
	.ascii	"_freelist\000"
.LASF119:
	.ascii	"_wctomb_state\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF105:
	.ascii	"_iobs\000"
.LASF128:
	.ascii	"_h_errno\000"
.LASF34:
	.ascii	"_flock_t\000"
.LASF49:
	.ascii	"__tm_yday\000"
.LASF59:
	.ascii	"__sbuf\000"
.LASF78:
	.ascii	"_flags2\000"
.LASF102:
	.ascii	"__FILE\000"
.LASF33:
	.ascii	"_mbstate_t\000"
.LASF62:
	.ascii	"__sFILE\000"
.LASF77:
	.ascii	"_mbstate\000"
.LASF117:
	.ascii	"_mblen_state\000"
.LASF84:
	.ascii	"_inc\000"
.LASF57:
	.ascii	"_ind\000"
.LASF87:
	.ascii	"_locale\000"
.LASF89:
	.ascii	"__cleanup\000"
.LASF86:
	.ascii	"_unspecified_locale_info\000"
.LASF37:
	.ascii	"_maxwds\000"
.LASF79:
	.ascii	"_reent\000"
.LASF107:
	.ascii	"_seed\000"
.LASF141:
	.ascii	"delay_ms\000"
.LASF31:
	.ascii	"__count\000"
.LASF132:
	.ascii	"__lock\000"
.LASF32:
	.ascii	"__value\000"
.LASF69:
	.ascii	"_seek\000"
.LASF140:
	.ascii	"initDmaADC1\000"
.LASF48:
	.ascii	"__tm_wday\000"
.LASF27:
	.ascii	"_fpos_t\000"
.LASF24:
	.ascii	"long double\000"
.LASF80:
	.ascii	"_errno\000"
.LASF101:
	.ascii	"char\000"
.LASF73:
	.ascii	"_blksize\000"
.LASF61:
	.ascii	"_size\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"_fnargs\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF19:
	.ascii	"NDTR\000"
.LASF36:
	.ascii	"_next\000"
.LASF111:
	.ascii	"_strtok_last\000"
.LASF22:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF54:
	.ascii	"_fntypes\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF109:
	.ascii	"_add\000"
.LASF35:
	.ascii	"__ULong\000"
.LASF122:
	.ascii	"_getdate_err\000"
.LASF21:
	.ascii	"M1AR\000"
.LASF135:
	.ascii	"_global_impure_ptr\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF110:
	.ascii	"_unused_rand\000"
.LASF39:
	.ascii	"_wds\000"
.LASF103:
	.ascii	"_glue\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF120:
	.ascii	"_l64a_buf\000"
.LASF98:
	.ascii	"_sig_func\000"
.LASF72:
	.ascii	"_nbuf\000"
.LASF131:
	.ascii	"_unused\000"
.LASF50:
	.ascii	"__tm_isdst\000"
.LASF113:
	.ascii	"_localtime_buf\000"
.LASF43:
	.ascii	"__tm_min\000"
.LASF116:
	.ascii	"_r48\000"
.LASF118:
	.ascii	"_mbtowc_state\000"
.LASF136:
	.ascii	"adc_buff0\000"
.LASF137:
	.ascii	"adc_buff1\000"
.LASF146:
	.ascii	"main\000"
.LASF45:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
