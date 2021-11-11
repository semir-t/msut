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
	.loc 1 10 0
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
	bl	initSYSTIM
.LVL1:
	.loc 1 16 0
	mov	r0, #364
	bl	initUSART2
.LVL2:
	.loc 1 17 0
	bl	initADC1
.LVL3:
	.loc 1 23 0
	ldr	r0, .L13
	.loc 1 24 0
	ldr	r2, .L13+4
	.loc 1 23 0
	ldr	r1, [r0, #48]
	.loc 1 29 0
	ldr	r3, .L13+8
	.loc 1 45 0
	ldr	r4, .L13+12
	.loc 1 23 0
	orr	r1, r1, #8
	str	r1, [r0, #48]
	.loc 1 24 0
	ldr	r1, [r2]
	orr	r1, r1, #-1442840576
	str	r1, [r2]
	.loc 1 25 0
	ldr	r1, [r2, #4]
	str	r1, [r2, #4]
	.loc 1 26 0
	ldr	r1, [r2, #36]
	orr	r1, r1, #570425344
	orr	r1, r1, #2228224
	str	r1, [r2, #36]
	.loc 1 28 0
	ldr	r2, [r0, #64]
	.loc 1 33 0
	movs	r6, #0
	.loc 1 31 0
	mov	r1, #1000
	.loc 1 28 0
	orr	r2, r2, #4
	.loc 1 29 0
	movs	r5, #83
	.loc 1 28 0
	str	r2, [r0, #64]
	.loc 1 29 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 31 0
	str	r1, [r3, #44]
	.loc 1 33 0
	str	r6, [r3, #52]
	.loc 1 34 0
	str	r6, [r3, #56]
	.loc 1 35 0
	str	r6, [r3, #60]
	.loc 1 36 0
	str	r6, [r3, #64]
	.loc 1 38 0
	ldrh	r2, [r3, #24]
	orr	r2, r2, #104
	strh	r2, [r3, #24]	@ movhi
	.loc 1 39 0
	ldrh	r2, [r3, #24]
	orr	r2, r2, #26624
	strh	r2, [r3, #24]	@ movhi
	.loc 1 40 0
	ldrh	r2, [r3, #28]
	orr	r2, r2, #104
	strh	r2, [r3, #28]	@ movhi
	.loc 1 41 0
	ldrh	r2, [r3, #28]
	orr	r2, r2, #26624
	strh	r2, [r3, #28]	@ movhi
	.loc 1 45 0
	ldrh	r2, [r3, #32]
	ands	r2, r2, r4
	strh	r2, [r3, #32]	@ movhi
	.loc 1 46 0
	ldrh	r2, [r3]
	orr	r2, r2, #132
	strh	r2, [r3]	@ movhi
	.loc 1 49 0
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 51 0
	ldrh	r2, [r3, #32]
	orr	r2, r2, #4352
	orr	r2, r2, #17
	strh	r2, [r3, #32]	@ movhi
	.loc 1 53 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 69 0
	mov	r8, r3
	.loc 1 56 0
	bl	getSYSTIM
.LVL4:
	mov	r7, r0
.LVL5:
	.loc 1 57 0
	bl	getSYSTIM
.LVL6:
	mov	r9, r0
.LVL7:
.L2:
	.loc 1 61 0
	movw	r1, #3000
	mov	r0, r9
	bl	chk4TimeoutSYSTIM
.LVL8:
	mov	r4, r0
	cmp	r0, #0
	beq	.L12
.L3:
	.loc 1 77 0
	movs	r1, #100
	mov	r0, r7
	bl	chk4TimeoutSYSTIM
.LVL9:
	cmp	r0, #0
	bne	.L2
.LBB2:
	.loc 1 86 0
	mov	r4, r0
	.loc 1 79 0
	bl	getSYSTIM
.LVL10:
	mov	r7, r0
.LVL11:
	.loc 1 84 0
	bl	getSYSTIM
.LVL12:
	.loc 1 85 0
	mov	r5, r4
	.loc 1 84 0
	mov	r10, r0
.LVL13:
	.loc 1 87 0
	b	.L6
.LVL14:
.L7:
	.loc 1 89 0
	bl	getADC1
.LVL15:
	.loc 1 90 0
	adds	r4, r4, #1
.LVL16:
	.loc 1 89 0
	add	r5, r5, r0
.LVL17:
.L6:
	.loc 1 87 0
	movs	r1, #1
	mov	r0, r10
	bl	chk4TimeoutSYSTIM
.LVL18:
	cmp	r0, #0
	bne	.L7
	.loc 1 92 0
	udiv	r5, r5, r4
.LVL19:
	.loc 1 95 0
	mov	r1, r4
	mov	r2, r5
	ldr	r0, .L13+16
	bl	printUSART2
.LVL20:
	.loc 1 96 0
	movw	r3, #3000
	ldr	r1, .L13+20
	.loc 1 97 0
	ldr	r0, .L13+24
	.loc 1 96 0
	mul	r5, r3, r5
.LVL21:
	umull	r3, r1, r1, r5
	subs	r5, r5, r1
.LVL22:
	add	r1, r1, r5, lsr #1
	.loc 1 97 0
	lsrs	r1, r1, #11
	add	r2, r6, r6, lsl #1
	bl	printUSART2
.LVL23:
.LBE2:
	.loc 1 61 0
	movw	r1, #3000
	mov	r0, r9
	bl	chk4TimeoutSYSTIM
.LVL24:
	mov	r4, r0
.LVL25:
	cmp	r0, #0
	bne	.L3
.LVL26:
.L12:
	.loc 1 65 0
	adds	r6, r6, #100
.LVL27:
	.loc 1 63 0
	bl	getSYSTIM
.LVL28:
	.loc 1 65 0
	uxth	r6, r6
	.loc 1 66 0
	cmp	r6, #1000
	it	hi
	movhi	r6, r4
	.loc 1 69 0
	str	r6, [r8, #52]
	.loc 1 63 0
	mov	r9, r0
.LVL29:
	.loc 1 70 0
	str	r6, [r8, #56]
	.loc 1 71 0
	str	r6, [r8, #60]
	.loc 1 72 0
	str	r6, [r8, #64]
	b	.L3
.L14:
	.align	2
.L13:
	.word	1073887232
	.word	1073875968
	.word	1073743872
	.word	-8739
	.word	.LC0
	.word	1048833
	.word	.LC1
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> ADC[%d]:  [%d/4095]\012\000"
.LC1:
	.ascii	"-> ADC: measured %d[mV] -> expected %d[mV]\012\000"
	.text
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.file 7 "delay.h"
	.file 8 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 9 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 10 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 11 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 12 "adc.h"
	.file 13 "usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf39
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0xc
	.4byte	.LASF201
	.4byte	.LASF202
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x5e
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x70
	.uleb128 0x5
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x185
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x290
	.4byte	0xcd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x291
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x292
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x293
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xc
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xc
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x296
	.4byte	0xad
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x297
	.4byte	0xad
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x298
	.4byte	0xcd
	.byte	0x1c
	.uleb128 0xc
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x195
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xcd
	.4byte	0x195
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x29a
	.4byte	0xf9
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x335
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xcd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xc
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xcd
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xcd
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2e9
	.4byte	0xe9
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xcd
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xc2
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xcd
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f0
	.4byte	0xe9
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xcd
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xcd
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xcd
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xc2
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xcd
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xcd
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2f7
	.4byte	0xe9
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xcd
	.byte	0x70
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xcd
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xe9
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xcd
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xcd
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2fd
	.4byte	0x1a6
	.uleb128 0xa
	.byte	0x54
	.byte	0x6
	.2byte	0x369
	.4byte	0x51d
	.uleb128 0xc
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x36b
	.4byte	0xad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xc
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x36d
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x36f
	.4byte	0xad
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x371
	.4byte	0xad
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0xc
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x373
	.4byte	0xad
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0xc
	.ascii	"EGR\000"
	.byte	0x6
	.2byte	0x375
	.4byte	0xad
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x377
	.4byte	0xad
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x379
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x37b
	.4byte	0xad
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0xc
	.ascii	"CNT\000"
	.byte	0x6
	.2byte	0x37d
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xc
	.ascii	"PSC\000"
	.byte	0x6
	.2byte	0x37e
	.4byte	0xad
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0xc
	.ascii	"ARR\000"
	.byte	0x6
	.2byte	0x380
	.4byte	0xcd
	.byte	0x2c
	.uleb128 0xc
	.ascii	"RCR\000"
	.byte	0x6
	.2byte	0x381
	.4byte	0xad
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x383
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x384
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x385
	.4byte	0xcd
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x386
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x387
	.4byte	0xad
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0xc
	.ascii	"DCR\000"
	.byte	0x6
	.2byte	0x389
	.4byte	0xad
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x38b
	.4byte	0xad
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0xc
	.ascii	"OR\000"
	.byte	0x6
	.2byte	0x38d
	.4byte	0xad
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x38f
	.4byte	0x341
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x7
	.byte	0x1c
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF76
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x8
	.byte	0x22
	.4byte	0x548
	.uleb128 0xf
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x10
	.4byte	.LASF184
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x9
	.byte	0x2c
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x9
	.byte	0x72
	.4byte	0x69
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x165
	.4byte	0x25
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.4byte	0x594
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x9
	.byte	0xa8
	.4byte	0x569
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x9
	.byte	0xa9
	.4byte	0x594
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x5a4
	.uleb128 0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.byte	0xa3
	.4byte	0x5c5
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x9
	.byte	0xa5
	.4byte	0x90
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x9
	.byte	0xaa
	.4byte	0x575
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0xab
	.4byte	0x5a4
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0xaf
	.4byte	0x53d
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xb
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x18
	.byte	0xb
	.byte	0x2f
	.4byte	0x639
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xb
	.byte	0x31
	.4byte	0x639
	.byte	0
	.uleb128 0x16
	.ascii	"_k\000"
	.byte	0xb
	.byte	0x32
	.4byte	0x90
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0xb
	.byte	0x32
	.4byte	0x90
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0xb
	.byte	0x32
	.4byte	0x90
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xb
	.byte	0x32
	.4byte	0x90
	.byte	0x10
	.uleb128 0x16
	.ascii	"_x\000"
	.byte	0xb
	.byte	0x33
	.4byte	0x63f
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e6
	.uleb128 0x8
	.4byte	0x5db
	.4byte	0x64f
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x24
	.byte	0xb
	.byte	0x37
	.4byte	0x6c8
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xb
	.byte	0x39
	.4byte	0x90
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xb
	.byte	0x3a
	.4byte	0x90
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xb
	.byte	0x3b
	.4byte	0x90
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xb
	.byte	0x3c
	.4byte	0x90
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xb
	.byte	0x3d
	.4byte	0x90
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xb
	.byte	0x3e
	.4byte	0x90
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xb
	.byte	0x3f
	.4byte	0x90
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xb
	.byte	0x40
	.4byte	0x90
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xb
	.byte	0x41
	.4byte	0x90
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF103
	.2byte	0x108
	.byte	0xb
	.byte	0x4a
	.4byte	0x708
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xb
	.byte	0x4b
	.4byte	0x708
	.byte	0
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xb
	.byte	0x4c
	.4byte	0x708
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0xb
	.byte	0x4e
	.4byte	0x5db
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0xb
	.byte	0x51
	.4byte	0x5db
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x53b
	.4byte	0x718
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF108
	.2byte	0x190
	.byte	0xb
	.byte	0x5d
	.4byte	0x756
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5e
	.4byte	0x756
	.byte	0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0xb
	.byte	0x5f
	.4byte	0x90
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0xb
	.byte	0x61
	.4byte	0x75c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xb
	.byte	0x62
	.4byte	0x6c8
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x718
	.uleb128 0x8
	.4byte	0x76c
	.4byte	0x76c
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x772
	.uleb128 0x19
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x8
	.byte	0xb
	.byte	0x75
	.4byte	0x798
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0xb
	.byte	0x76
	.4byte	0x798
	.byte	0
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0xb
	.byte	0x77
	.4byte	0x90
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x68
	.byte	0xb
	.byte	0xb5
	.4byte	0x8c8
	.uleb128 0x16
	.ascii	"_p\000"
	.byte	0xb
	.byte	0xb6
	.4byte	0x798
	.byte	0
	.uleb128 0x16
	.ascii	"_r\000"
	.byte	0xb
	.byte	0xb7
	.4byte	0x90
	.byte	0x4
	.uleb128 0x16
	.ascii	"_w\000"
	.byte	0xb
	.byte	0xb8
	.4byte	0x90
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0xb
	.byte	0xb9
	.4byte	0x45
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0xb
	.byte	0xba
	.4byte	0x45
	.byte	0xe
	.uleb128 0x16
	.ascii	"_bf\000"
	.byte	0xb
	.byte	0xbb
	.4byte	0x773
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0xb
	.byte	0xbc
	.4byte	0x90
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0xb
	.byte	0xc3
	.4byte	0x53b
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0xb
	.byte	0xc5
	.4byte	0xa35
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0xb
	.byte	0xc7
	.4byte	0xa5f
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0xb
	.byte	0xca
	.4byte	0xa83
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0xb
	.byte	0xcb
	.4byte	0xa9d
	.byte	0x2c
	.uleb128 0x16
	.ascii	"_ub\000"
	.byte	0xb
	.byte	0xce
	.4byte	0x773
	.byte	0x30
	.uleb128 0x16
	.ascii	"_up\000"
	.byte	0xb
	.byte	0xcf
	.4byte	0x798
	.byte	0x38
	.uleb128 0x16
	.ascii	"_ur\000"
	.byte	0xb
	.byte	0xd0
	.4byte	0x90
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0xb
	.byte	0xd3
	.4byte	0xaa3
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0xb
	.byte	0xd4
	.4byte	0xab3
	.byte	0x43
	.uleb128 0x16
	.ascii	"_lb\000"
	.byte	0xb
	.byte	0xd7
	.4byte	0x773
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0xb
	.byte	0xda
	.4byte	0x90
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0xb
	.byte	0xdb
	.4byte	0x553
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0xb
	.byte	0xde
	.4byte	0x8e6
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0xb
	.byte	0xe2
	.4byte	0x5d0
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0xb
	.byte	0xe4
	.4byte	0x5c5
	.byte	0x5c
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0xb
	.byte	0xe5
	.4byte	0x90
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0x8e6
	.uleb128 0x1b
	.4byte	0x8e6
	.uleb128 0x1b
	.4byte	0x53b
	.uleb128 0x1b
	.4byte	0xa23
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0x1c
	.4byte	0x8e6
	.uleb128 0x1d
	.4byte	.LASF131
	.2byte	0x428
	.byte	0xb
	.2byte	0x260
	.4byte	0xa23
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x262
	.4byte	0x90
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x267
	.4byte	0xb0a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x267
	.4byte	0xb0a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x267
	.4byte	0xb0a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x269
	.4byte	0x90
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x26a
	.4byte	0xcec
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x26d
	.4byte	0x90
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x26e
	.4byte	0xd01
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x270
	.4byte	0x90
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x272
	.4byte	0xd12
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x275
	.4byte	0x639
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x276
	.4byte	0x90
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x277
	.4byte	0x639
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x278
	.4byte	0xd18
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xb
	.2byte	0x27b
	.4byte	0x90
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xb
	.2byte	0x27c
	.4byte	0xa23
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xb
	.2byte	0x29f
	.4byte	0xcca
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x2a3
	.4byte	0x756
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xb
	.2byte	0x2a4
	.4byte	0x718
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0xb
	.2byte	0x2a8
	.4byte	0xd29
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0xb
	.2byte	0x2ad
	.4byte	0xacf
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x2af
	.4byte	0xd35
	.2byte	0x2ec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa29
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF153
	.uleb128 0x1c
	.4byte	0xa29
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8c8
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0xa59
	.uleb128 0x1b
	.4byte	0x8e6
	.uleb128 0x1b
	.4byte	0x53b
	.uleb128 0x1b
	.4byte	0xa59
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa30
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa3b
	.uleb128 0x1a
	.4byte	0x55e
	.4byte	0xa83
	.uleb128 0x1b
	.4byte	0x8e6
	.uleb128 0x1b
	.4byte	0x53b
	.uleb128 0x1b
	.4byte	0x55e
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa65
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0xa9d
	.uleb128 0x1b
	.4byte	0x8e6
	.uleb128 0x1b
	.4byte	0x53b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa89
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xab3
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xac3
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x11f
	.4byte	0x79e
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0xc
	.byte	0xb
	.2byte	0x123
	.4byte	0xb04
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x125
	.4byte	0xb04
	.byte	0
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x126
	.4byte	0x90
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x127
	.4byte	0xb0a
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xacf
	.uleb128 0xf
	.byte	0x4
	.4byte	0xac3
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0xe
	.byte	0xb
	.2byte	0x13f
	.4byte	0xb45
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x140
	.4byte	0xb45
	.byte	0
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x141
	.4byte	0xb45
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x142
	.4byte	0x57
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xb55
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xd0
	.byte	0xb
	.2byte	0x280
	.4byte	0xc56
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x282
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x283
	.4byte	0xa23
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x284
	.4byte	0xc56
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x285
	.4byte	0x64f
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x286
	.4byte	0x90
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x287
	.4byte	0x89
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x288
	.4byte	0xb10
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x289
	.4byte	0x5c5
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x28a
	.4byte	0x5c5
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x28b
	.4byte	0x5c5
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x28c
	.4byte	0xc66
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x28d
	.4byte	0xc76
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x28e
	.4byte	0x90
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x28f
	.4byte	0x5c5
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xb
	.2byte	0x290
	.4byte	0x5c5
	.byte	0xac
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x291
	.4byte	0x5c5
	.byte	0xb4
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x292
	.4byte	0x5c5
	.byte	0xbc
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x293
	.4byte	0x5c5
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x294
	.4byte	0x90
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0xa29
	.4byte	0xc66
	.uleb128 0x9
	.4byte	0x25
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0xa29
	.4byte	0xc76
	.uleb128 0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xa29
	.4byte	0xc86
	.uleb128 0x9
	.4byte	0x25
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.byte	0xf0
	.byte	0xb
	.2byte	0x299
	.4byte	0xcaa
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x29c
	.4byte	0xcaa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x29d
	.4byte	0xcba
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x798
	.4byte	0xcba
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0xcca
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xb
	.2byte	0x27e
	.4byte	0xcec
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x295
	.4byte	0xb55
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x29e
	.4byte	0xc86
	.byte	0
	.uleb128 0x8
	.4byte	0xa29
	.4byte	0xcfc
	.uleb128 0x9
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF185
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcfc
	.uleb128 0x22
	.4byte	0xd12
	.uleb128 0x1b
	.4byte	0x8e6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd07
	.uleb128 0xf
	.byte	0x4
	.4byte	0x639
	.uleb128 0x22
	.4byte	0xd29
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd2f
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd1e
	.uleb128 0x8
	.4byte	0xac3
	.4byte	0xd45
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0xb
	.2byte	0x32e
	.4byte	0x8e6
	.uleb128 0x6
	.4byte	.LASF187
	.byte	0xb
	.2byte	0x32f
	.4byte	0x8ec
	.uleb128 0x23
	.4byte	.LASF203
	.byte	0x1
	.byte	0x9
	.4byte	0x90
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeef
	.uleb128 0x24
	.4byte	.LASF188
	.byte	0x1
	.byte	0xb
	.4byte	0xc2
	.4byte	.LLST0
	.uleb128 0x25
	.ascii	"k\000"
	.byte	0x1
	.byte	0xb
	.4byte	0xc2
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.byte	0xc
	.4byte	0xa2
	.uleb128 0x24
	.4byte	.LASF189
	.byte	0x1
	.byte	0xd
	.4byte	0xa2
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF190
	.byte	0x1
	.byte	0x38
	.4byte	0xc2
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF191
	.byte	0x1
	.byte	0x39
	.4byte	0xc2
	.4byte	.LLST4
	.uleb128 0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xe5c
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x1
	.byte	0x54
	.4byte	0xc2
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xeef
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xeef
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xefa
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0xf05
	.4byte	0xe1a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0xf10
	.4byte	0xe3d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL23
	.4byte	0xf10
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xf1b
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0xf26
	.4byte	0xe7a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0xf31
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0xeef
	.uleb128 0x28
	.4byte	.LVL6
	.4byte	0xeef
	.uleb128 0x29
	.4byte	.LVL8
	.4byte	0xf05
	.4byte	0xeb0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.byte	0
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xf05
	.4byte	0xeca
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL24
	.4byte	0xf05
	.4byte	0xee5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.byte	0
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0xeef
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x7
	.byte	0x18
	.uleb128 0x2c
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xc
	.byte	0x8
	.uleb128 0x2c
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0x7
	.byte	0x19
	.uleb128 0x2c
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xd
	.byte	0x10
	.uleb128 0x2c
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x7
	.byte	0x17
	.uleb128 0x2c
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xd
	.byte	0xe
	.uleb128 0x2c
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xc
	.byte	0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xd
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-1
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
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
.LASF105:
	.ascii	"_dso_handle\000"
.LASF3:
	.ascii	"short int\000"
.LASF188:
	.ascii	"utmp32\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF114:
	.ascii	"__sFILE\000"
.LASF104:
	.ascii	"_fnargs\000"
.LASF158:
	.ascii	"_rand48\000"
.LASF137:
	.ascii	"_emergency\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF149:
	.ascii	"_atexit0\000"
.LASF74:
	.ascii	"TIM_TypeDef\000"
.LASF178:
	.ascii	"_wcrtomb_state\000"
.LASF179:
	.ascii	"_wcsrtombs_state\000"
.LASF19:
	.ascii	"MODER\000"
.LASF191:
	.ascii	"update_timer\000"
.LASF117:
	.ascii	"_lbfsize\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF185:
	.ascii	"__locale_t\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF176:
	.ascii	"_mbrtowc_state\000"
.LASF68:
	.ascii	"BDTR\000"
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF198:
	.ascii	"initUSART2\000"
.LASF171:
	.ascii	"_wctomb_state\000"
.LASF94:
	.ascii	"__tm_sec\000"
.LASF57:
	.ascii	"CCMR1\000"
.LASF58:
	.ascii	"CCMR2\000"
.LASF122:
	.ascii	"_close\000"
.LASF1:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF123:
	.ascii	"_ubuf\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF96:
	.ascii	"__tm_hour\000"
.LASF81:
	.ascii	"__wch\000"
.LASF152:
	.ascii	"__sf\000"
.LASF103:
	.ascii	"_on_exit_args\000"
.LASF70:
	.ascii	"RESERVED12\000"
.LASF72:
	.ascii	"RESERVED13\000"
.LASF73:
	.ascii	"RESERVED14\000"
.LASF91:
	.ascii	"_wds\000"
.LASF118:
	.ascii	"_cookie\000"
.LASF151:
	.ascii	"__sglue\000"
.LASF8:
	.ascii	"long int\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF115:
	.ascii	"_flags\000"
.LASF107:
	.ascii	"_is_cxa\000"
.LASF133:
	.ascii	"_stdin\000"
.LASF143:
	.ascii	"_result_k\000"
.LASF60:
	.ascii	"CCER\000"
.LASF75:
	.ascii	"g_tim7_val\000"
.LASF11:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF202:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/MSUT/students/examples/LAB03/adc-sample-pwm"
	.ascii	"-output\000"
.LASF147:
	.ascii	"_cvtbuf\000"
.LASF126:
	.ascii	"_offset\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF177:
	.ascii	"_mbsrtowcs_state\000"
.LASF163:
	.ascii	"_strtok_last\000"
.LASF175:
	.ascii	"_mbrlen_state\000"
.LASF162:
	.ascii	"_unused_rand\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF110:
	.ascii	"_fns\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF90:
	.ascii	"_sign\000"
.LASF186:
	.ascii	"_impure_ptr\000"
.LASF135:
	.ascii	"_stderr\000"
.LASF92:
	.ascii	"_Bigint\000"
.LASF88:
	.ascii	"_next\000"
.LASF119:
	.ascii	"_read\000"
.LASF93:
	.ascii	"__tm\000"
.LASF82:
	.ascii	"__wchb\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF146:
	.ascii	"_cvtlen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF116:
	.ascii	"_file\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF127:
	.ascii	"_data\000"
.LASF156:
	.ascii	"_niobs\000"
.LASF167:
	.ascii	"_rand_next\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF173:
	.ascii	"_signal_buf\000"
.LASF164:
	.ascii	"_asctime_buf\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF142:
	.ascii	"_result\000"
.LASF200:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF181:
	.ascii	"_nextf\000"
.LASF77:
	.ascii	"_LOCK_T\000"
.LASF201:
	.ascii	"main.c\000"
.LASF148:
	.ascii	"_new\000"
.LASF48:
	.ascii	"APB2LPENR\000"
.LASF128:
	.ascii	"_lock\000"
.LASF160:
	.ascii	"_mult\000"
.LASF196:
	.ascii	"printUSART2\000"
.LASF120:
	.ascii	"_write\000"
.LASF99:
	.ascii	"__tm_year\000"
.LASF182:
	.ascii	"_nmalloc\000"
.LASF78:
	.ascii	"_off_t\000"
.LASF138:
	.ascii	"_unspecified_locale_info\000"
.LASF192:
	.ascii	"cap_timer\000"
.LASF69:
	.ascii	"RESERVED11\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF98:
	.ascii	"__tm_mon\000"
.LASF108:
	.ascii	"_atexit\000"
.LASF140:
	.ascii	"__sdidinit\000"
.LASF166:
	.ascii	"_gamma_signgam\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF80:
	.ascii	"wint_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF145:
	.ascii	"_freelist\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF61:
	.ascii	"RESERVED8\000"
.LASF62:
	.ascii	"RESERVED9\000"
.LASF112:
	.ascii	"_base\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF157:
	.ascii	"_iobs\000"
.LASF180:
	.ascii	"_h_errno\000"
.LASF86:
	.ascii	"_flock_t\000"
.LASF101:
	.ascii	"__tm_yday\000"
.LASF111:
	.ascii	"__sbuf\000"
.LASF130:
	.ascii	"_flags2\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF154:
	.ascii	"__FILE\000"
.LASF85:
	.ascii	"_mbstate_t\000"
.LASF129:
	.ascii	"_mbstate\000"
.LASF169:
	.ascii	"_mblen_state\000"
.LASF136:
	.ascii	"_inc\000"
.LASF109:
	.ascii	"_ind\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF139:
	.ascii	"_locale\000"
.LASF141:
	.ascii	"__cleanup\000"
.LASF89:
	.ascii	"_maxwds\000"
.LASF131:
	.ascii	"_reent\000"
.LASF159:
	.ascii	"_seed\000"
.LASF83:
	.ascii	"__count\000"
.LASF184:
	.ascii	"__lock\000"
.LASF84:
	.ascii	"__value\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF121:
	.ascii	"_seek\000"
.LASF100:
	.ascii	"__tm_wday\000"
.LASF79:
	.ascii	"_fpos_t\000"
.LASF76:
	.ascii	"long double\000"
.LASF204:
	.ascii	"utmp16\000"
.LASF132:
	.ascii	"_errno\000"
.LASF153:
	.ascii	"char\000"
.LASF125:
	.ascii	"_blksize\000"
.LASF55:
	.ascii	"SMCR\000"
.LASF113:
	.ascii	"_size\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF71:
	.ascii	"DMAR\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF106:
	.ascii	"_fntypes\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF199:
	.ascii	"initADC1\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF193:
	.ascii	"getSYSTIM\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF161:
	.ascii	"_add\000"
.LASF87:
	.ascii	"__ULong\000"
.LASF190:
	.ascii	"disp_timer\000"
.LASF174:
	.ascii	"_getdate_err\000"
.LASF63:
	.ascii	"RESERVED10\000"
.LASF187:
	.ascii	"_global_impure_ptr\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF64:
	.ascii	"CCR1\000"
.LASF65:
	.ascii	"CCR2\000"
.LASF66:
	.ascii	"CCR3\000"
.LASF67:
	.ascii	"CCR4\000"
.LASF23:
	.ascii	"BSRRL\000"
.LASF134:
	.ascii	"_stdout\000"
.LASF155:
	.ascii	"_glue\000"
.LASF24:
	.ascii	"BSRRH\000"
.LASF189:
	.ascii	"pwm_val\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF172:
	.ascii	"_l64a_buf\000"
.LASF150:
	.ascii	"_sig_func\000"
.LASF197:
	.ascii	"initSYSTIM\000"
.LASF124:
	.ascii	"_nbuf\000"
.LASF183:
	.ascii	"_unused\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF56:
	.ascii	"DIER\000"
.LASF102:
	.ascii	"__tm_isdst\000"
.LASF165:
	.ascii	"_localtime_buf\000"
.LASF95:
	.ascii	"__tm_min\000"
.LASF168:
	.ascii	"_r48\000"
.LASF170:
	.ascii	"_mbtowc_state\000"
.LASF144:
	.ascii	"_p5s\000"
.LASF203:
	.ascii	"main\000"
.LASF195:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF97:
	.ascii	"__tm_mday\000"
.LASF194:
	.ascii	"getADC1\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
