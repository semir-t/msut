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
	.loc 1 8 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 10 0
	ldr	r5, .L6
.LBB2:
	.loc 1 62 0
	ldr	r8, .L6+32
	.loc 1 65 0
	ldr	r7, .L6+4
.LBE2:
	.loc 1 10 0
	ldmia	r5!, {r0, r1, r2, r3}
	.loc 1 8 0
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
	.loc 1 10 0
	add	r4, sp, #4
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.LVL1:
	.loc 1 13 0
	mov	r0, #364
	bl	initUSART2
.LVL2:
	.loc 1 14 0
	ldr	r0, .L6+8
	.loc 1 28 0
	ldr	r5, .L6+12
	.loc 1 14 0
	bl	printUSART2
.LVL3:
	.loc 1 15 0
	ldr	r0, .L6+16
	bl	printUSART2
.LVL4:
	.loc 1 16 0
	ldr	r0, .L6+8
	bl	printUSART2
.LVL5:
	.loc 1 21 0
	ldr	r1, .L6+20
	.loc 1 22 0
	ldr	r3, .L6+24
	.loc 1 21 0
	ldr	r2, [r1, #48]
	.loc 1 44 0
	ldr	r0, .L6+28
	.loc 1 21 0
	orr	r2, r2, #8
	str	r2, [r1, #48]
	.loc 1 22 0
	ldr	r2, [r3]
	orr	r2, r2, #-1442840576
	str	r2, [r3]
	.loc 1 23 0
	ldr	r2, [r3, #4]
	str	r2, [r3, #4]
	.loc 1 24 0
	ldr	r2, [r3, #36]
	orr	r2, r2, #570425344
	orr	r2, r2, #2228224
	str	r2, [r3, #36]
	.loc 1 27 0
	ldr	r3, [r1, #64]
	orr	r3, r3, #4
	str	r3, [r1, #64]
	.loc 1 32 0
	movs	r4, #0
	.loc 1 30 0
	mov	r3, #1000
	.loc 1 28 0
	movs	r2, #83
	strh	r2, [r5, #40]	@ movhi
	.loc 1 30 0
	str	r3, [r5, #44]
	.loc 1 32 0
	str	r4, [r5, #52]
	.loc 1 33 0
	str	r4, [r5, #56]
	.loc 1 34 0
	str	r4, [r5, #60]
	.loc 1 35 0
	str	r4, [r5, #64]
	.loc 1 37 0
	ldrh	r3, [r5, #24]
	orr	r3, r3, #104
	strh	r3, [r5, #24]	@ movhi
	.loc 1 38 0
	ldrh	r3, [r5, #24]
	orr	r3, r3, #26624
	strh	r3, [r5, #24]	@ movhi
	.loc 1 39 0
	ldrh	r3, [r5, #28]
	orr	r3, r3, #104
	strh	r3, [r5, #28]	@ movhi
	.loc 1 40 0
	ldrh	r3, [r5, #28]
	orr	r3, r3, #26624
	strh	r3, [r5, #28]	@ movhi
	.loc 1 44 0
	ldrh	r3, [r5, #32]
	ands	r3, r3, r0
	strh	r3, [r5, #32]	@ movhi
	.loc 1 45 0
	ldrh	r3, [r5]
	orr	r3, r3, #132
	strh	r3, [r5]	@ movhi
	.loc 1 48 0
	ldrh	r3, [r5, #20]
	orr	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
	.loc 1 50 0
	ldrh	r3, [r5, #32]
	orr	r3, r3, #4352
	orr	r3, r3, #17
	strh	r3, [r5, #32]	@ movhi
	.loc 1 52 0
	ldrh	r3, [r5]
	orr	r3, r3, #1
	strh	r3, [r5]	@ movhi
	.loc 1 9 0
	mov	r6, r4
.LVL6:
.L2:
.LBB3:
	.loc 1 57 0
	add	r3, sp, #24
	add	r3, r3, r4, lsl #1
	.loc 1 62 0
	mov	r1, r6
	.loc 1 57 0
	ldrh	r3, [r3, #-20]
	str	r3, [r5, #52]
	.loc 1 62 0
	mov	r0, r8
	.loc 1 58 0
	str	r3, [r5, #56]
	.loc 1 59 0
	str	r3, [r5, #60]
	.loc 1 60 0
	str	r3, [r5, #64]
	.loc 1 62 0
	bl	printUSART2
.LVL7:
	.loc 1 67 0
	adds	r4, r4, #1
.LVL8:
	.loc 1 64 0
	ldr	r1, [r5, #36]
	.loc 1 65 0
	mov	r0, r7
	bl	printUSART2
.LVL9:
	.loc 1 67 0
	uxtb	r4, r4
	.loc 1 66 0
	mov	r0, #500
	bl	delay_ms
.LVL10:
	.loc 1 69 0
	cmp	r4, #10
	.loc 1 63 0
	add	r6, r6, #1
.LVL11:
	.loc 1 69 0
	it	eq
	moveq	r4, #0
.LVL12:
	b	.L2
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.word	.LC4
	.word	.LC1
	.word	1073743872
	.word	.LC2
	.word	1073887232
	.word	1073875968
	.word	-8739
	.word	.LC3
.LBE3:
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.short	0
	.short	2
	.short	5
	.short	11
	.short	23
	.short	50
	.short	109
	.short	235
	.short	509
	.short	999
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwww\012\000"
.LC2:
	.ascii	"w Starting test app...\000"
	.space	1
.LC3:
	.ascii	"-> SW: test [%d]\012\000"
	.space	2
.LC4:
	.ascii	"-> TIM4->CNT: [%d]\012\000"
	.text
.Letext0:
	.file 2 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.file 7 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 8 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 9 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 10 "/home/semir/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 11 "usart.h"
	.file 12 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe7b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0xc
	.4byte	.LASF194
	.4byte	.LASF195
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
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
	.4byte	0x90
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
	.4byte	0x90
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF75
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x7
	.byte	0x22
	.4byte	0x53d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x543
	.uleb128 0x10
	.4byte	.LASF183
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x8
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x8
	.byte	0x72
	.4byte	0x62
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x165
	.4byte	0x90
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.4byte	0x589
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0xa8
	.4byte	0x55e
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0xa9
	.4byte	0x589
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x599
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.4byte	0x5ba
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x8
	.byte	0xa5
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x8
	.byte	0xaa
	.4byte	0x56a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x8
	.byte	0xab
	.4byte	0x599
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x8
	.byte	0xaf
	.4byte	0x532
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xa
	.byte	0x16
	.4byte	0x74
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x18
	.byte	0xa
	.byte	0x2f
	.4byte	0x62e
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0xa
	.byte	0x31
	.4byte	0x62e
	.byte	0
	.uleb128 0x16
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x32
	.4byte	0x89
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xa
	.byte	0x32
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0xa
	.byte	0x32
	.4byte	0x89
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0xa
	.byte	0x32
	.4byte	0x89
	.byte	0x10
	.uleb128 0x16
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x33
	.4byte	0x634
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5db
	.uleb128 0x8
	.4byte	0x5d0
	.4byte	0x644
	.uleb128 0x9
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x24
	.byte	0xa
	.byte	0x37
	.4byte	0x6bd
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xa
	.byte	0x39
	.4byte	0x89
	.byte	0
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xa
	.byte	0x3a
	.4byte	0x89
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xa
	.byte	0x3b
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xa
	.byte	0x3c
	.4byte	0x89
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xa
	.byte	0x3d
	.4byte	0x89
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xa
	.byte	0x3e
	.4byte	0x89
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xa
	.byte	0x3f
	.4byte	0x89
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xa
	.byte	0x40
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xa
	.byte	0x41
	.4byte	0x89
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF102
	.2byte	0x108
	.byte	0xa
	.byte	0x4a
	.4byte	0x6fd
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xa
	.byte	0x4b
	.4byte	0x6fd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa
	.byte	0x4c
	.4byte	0x6fd
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0xa
	.byte	0x4e
	.4byte	0x5d0
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0xa
	.byte	0x51
	.4byte	0x5d0
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x530
	.4byte	0x70d
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF107
	.2byte	0x190
	.byte	0xa
	.byte	0x5d
	.4byte	0x74b
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0xa
	.byte	0x5e
	.4byte	0x74b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0xa
	.byte	0x5f
	.4byte	0x89
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0xa
	.byte	0x61
	.4byte	0x751
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xa
	.byte	0x62
	.4byte	0x6bd
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x70d
	.uleb128 0x8
	.4byte	0x761
	.4byte	0x761
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x767
	.uleb128 0x19
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.byte	0xa
	.byte	0x75
	.4byte	0x78d
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0xa
	.byte	0x76
	.4byte	0x78d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0xa
	.byte	0x77
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x37
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x68
	.byte	0xa
	.byte	0xb5
	.4byte	0x8bd
	.uleb128 0x16
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xb6
	.4byte	0x78d
	.byte	0
	.uleb128 0x16
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xb7
	.4byte	0x89
	.byte	0x4
	.uleb128 0x16
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x89
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0xa
	.byte	0xb9
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0xa
	.byte	0xba
	.4byte	0x3e
	.byte	0xe
	.uleb128 0x16
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0x768
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0xa
	.byte	0xbc
	.4byte	0x89
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0xa
	.byte	0xc3
	.4byte	0x530
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0xa
	.byte	0xc5
	.4byte	0xa2a
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0xa
	.byte	0xc7
	.4byte	0xa54
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0xa
	.byte	0xca
	.4byte	0xa78
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0xa
	.byte	0xcb
	.4byte	0xa92
	.byte	0x2c
	.uleb128 0x16
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xce
	.4byte	0x768
	.byte	0x30
	.uleb128 0x16
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xcf
	.4byte	0x78d
	.byte	0x38
	.uleb128 0x16
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xd0
	.4byte	0x89
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0xa
	.byte	0xd3
	.4byte	0xa98
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0xa
	.byte	0xd4
	.4byte	0xaa8
	.byte	0x43
	.uleb128 0x16
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xd7
	.4byte	0x768
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0xa
	.byte	0xda
	.4byte	0x89
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0xa
	.byte	0xdb
	.4byte	0x548
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0xa
	.byte	0xde
	.4byte	0x8db
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0xa
	.byte	0xe2
	.4byte	0x5c5
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0xa
	.byte	0xe4
	.4byte	0x5ba
	.byte	0x5c
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0xa
	.byte	0xe5
	.4byte	0x89
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x89
	.4byte	0x8db
	.uleb128 0x1b
	.4byte	0x8db
	.uleb128 0x1b
	.4byte	0x530
	.uleb128 0x1b
	.4byte	0xa18
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e6
	.uleb128 0x1c
	.4byte	0x8db
	.uleb128 0x1d
	.4byte	.LASF130
	.2byte	0x428
	.byte	0xa
	.2byte	0x260
	.4byte	0xa18
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x262
	.4byte	0x89
	.byte	0
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x267
	.4byte	0xaff
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x267
	.4byte	0xaff
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x267
	.4byte	0xaff
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x269
	.4byte	0x89
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x26a
	.4byte	0xce1
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x26d
	.4byte	0x89
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x26e
	.4byte	0xcf6
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x270
	.4byte	0x89
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x272
	.4byte	0xd07
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x275
	.4byte	0x62e
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x276
	.4byte	0x89
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x277
	.4byte	0x62e
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x278
	.4byte	0xd0d
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x27b
	.4byte	0x89
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x27c
	.4byte	0xa18
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x29f
	.4byte	0xcbf
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x2a3
	.4byte	0x74b
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x70d
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x2a8
	.4byte	0xd1e
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x2ad
	.4byte	0xac4
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x2af
	.4byte	0xd2a
	.2byte	0x2ec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa1e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF152
	.uleb128 0x1c
	.4byte	0xa1e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8bd
	.uleb128 0x1a
	.4byte	0x89
	.4byte	0xa4e
	.uleb128 0x1b
	.4byte	0x8db
	.uleb128 0x1b
	.4byte	0x530
	.uleb128 0x1b
	.4byte	0xa4e
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa25
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa30
	.uleb128 0x1a
	.4byte	0x553
	.4byte	0xa78
	.uleb128 0x1b
	.4byte	0x8db
	.uleb128 0x1b
	.4byte	0x530
	.uleb128 0x1b
	.4byte	0x553
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa5a
	.uleb128 0x1a
	.4byte	0x89
	.4byte	0xa92
	.uleb128 0x1b
	.4byte	0x8db
	.uleb128 0x1b
	.4byte	0x530
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa7e
	.uleb128 0x8
	.4byte	0x37
	.4byte	0xaa8
	.uleb128 0x9
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0xab8
	.uleb128 0x9
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x11f
	.4byte	0x793
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0xc
	.byte	0xa
	.2byte	0x123
	.4byte	0xaf9
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x125
	.4byte	0xaf9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x126
	.4byte	0x89
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x127
	.4byte	0xaff
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xac4
	.uleb128 0xf
	.byte	0x4
	.4byte	0xab8
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0xe
	.byte	0xa
	.2byte	0x13f
	.4byte	0xb3a
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x140
	.4byte	0xb3a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x141
	.4byte	0xb3a
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x142
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x50
	.4byte	0xb4a
	.uleb128 0x9
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xd0
	.byte	0xa
	.2byte	0x280
	.4byte	0xc4b
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x282
	.4byte	0x90
	.byte	0
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x283
	.4byte	0xa18
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x284
	.4byte	0xc4b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x285
	.4byte	0x644
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x286
	.4byte	0x89
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x287
	.4byte	0x82
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x288
	.4byte	0xb05
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x289
	.4byte	0x5ba
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x28a
	.4byte	0x5ba
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x28b
	.4byte	0x5ba
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x28c
	.4byte	0xc5b
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x28d
	.4byte	0xc6b
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x28e
	.4byte	0x89
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x28f
	.4byte	0x5ba
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x290
	.4byte	0x5ba
	.byte	0xac
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xa
	.2byte	0x291
	.4byte	0x5ba
	.byte	0xb4
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xa
	.2byte	0x292
	.4byte	0x5ba
	.byte	0xbc
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xa
	.2byte	0x293
	.4byte	0x5ba
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x294
	.4byte	0x89
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0xa1e
	.4byte	0xc5b
	.uleb128 0x9
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0xa1e
	.4byte	0xc6b
	.uleb128 0x9
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xa1e
	.4byte	0xc7b
	.uleb128 0x9
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.byte	0xf0
	.byte	0xa
	.2byte	0x299
	.4byte	0xc9f
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xa
	.2byte	0x29c
	.4byte	0xc9f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xa
	.2byte	0x29d
	.4byte	0xcaf
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x78d
	.4byte	0xcaf
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0xcbf
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xa
	.2byte	0x27e
	.4byte	0xce1
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x295
	.4byte	0xb4a
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x29e
	.4byte	0xc7b
	.byte	0
	.uleb128 0x8
	.4byte	0xa1e
	.4byte	0xcf1
	.uleb128 0x9
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF184
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcf1
	.uleb128 0x22
	.4byte	0xd07
	.uleb128 0x1b
	.4byte	0x8db
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcfc
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62e
	.uleb128 0x22
	.4byte	0xd1e
	.uleb128 0x1b
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd24
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd13
	.uleb128 0x8
	.4byte	0xab8
	.4byte	0xd3a
	.uleb128 0x9
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0xa
	.2byte	0x32e
	.4byte	0x8db
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0xa
	.2byte	0x32f
	.4byte	0x8e1
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x1
	.byte	0x7
	.4byte	0x89
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4d
	.uleb128 0x24
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x9
	.4byte	0xc2
	.4byte	.LLST0
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1
	.byte	0x9
	.4byte	0xc2
	.uleb128 0x26
	.ascii	"pwm\000"
	.byte	0x1
	.byte	0xa
	.4byte	0xe4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.4byte	.LASF187
	.byte	0x1
	.byte	0xb
	.4byte	0x97
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0xdf6
	.uleb128 0x25
	.4byte	.LASF189
	.byte	0x1
	.byte	0x40
	.4byte	0xc2
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xe5d
	.4byte	0xdd0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xe5d
	.4byte	0xde4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0xe68
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL2
	.4byte	0xe73
	.4byte	0xe0b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x29
	.4byte	.LVL3
	.4byte	0xe5d
	.4byte	0xe22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x29
	.4byte	.LVL4
	.4byte	0xe5d
	.4byte	0xe39
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xe5d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xa2
	.4byte	0xe5d
	.uleb128 0x9
	.4byte	0x90
	.byte	0x9
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xb
	.byte	0xe
	.uleb128 0x2c
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0xc
	.byte	0x9
	.uleb128 0x2c
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xb
	.byte	0xc
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF104:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF189:
	.ascii	"utmp32\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF113:
	.ascii	"__sFILE\000"
.LASF103:
	.ascii	"_fnargs\000"
.LASF157:
	.ascii	"_rand48\000"
.LASF136:
	.ascii	"_emergency\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF148:
	.ascii	"_atexit0\000"
.LASF74:
	.ascii	"TIM_TypeDef\000"
.LASF177:
	.ascii	"_wcrtomb_state\000"
.LASF178:
	.ascii	"_wcsrtombs_state\000"
.LASF19:
	.ascii	"MODER\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF116:
	.ascii	"_lbfsize\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF184:
	.ascii	"__locale_t\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF175:
	.ascii	"_mbrtowc_state\000"
.LASF68:
	.ascii	"BDTR\000"
.LASF187:
	.ascii	"pwm_cnt\000"
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF192:
	.ascii	"initUSART2\000"
.LASF170:
	.ascii	"_wctomb_state\000"
.LASF93:
	.ascii	"__tm_sec\000"
.LASF57:
	.ascii	"CCMR1\000"
.LASF58:
	.ascii	"CCMR2\000"
.LASF121:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF122:
	.ascii	"_ubuf\000"
.LASF111:
	.ascii	"_base\000"
.LASF95:
	.ascii	"__tm_hour\000"
.LASF80:
	.ascii	"__wch\000"
.LASF151:
	.ascii	"__sf\000"
.LASF102:
	.ascii	"_on_exit_args\000"
.LASF70:
	.ascii	"RESERVED12\000"
.LASF72:
	.ascii	"RESERVED13\000"
.LASF73:
	.ascii	"RESERVED14\000"
.LASF117:
	.ascii	"_cookie\000"
.LASF150:
	.ascii	"__sglue\000"
.LASF195:
	.ascii	"/home/semir/Dropbox/Fakultet/MSUT/students/examples"
	.ascii	"/LAB03/pwm\000"
.LASF7:
	.ascii	"long int\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF114:
	.ascii	"_flags\000"
.LASF106:
	.ascii	"_is_cxa\000"
.LASF132:
	.ascii	"_stdin\000"
.LASF142:
	.ascii	"_result_k\000"
.LASF60:
	.ascii	"CCER\000"
.LASF10:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF146:
	.ascii	"_cvtbuf\000"
.LASF125:
	.ascii	"_offset\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF176:
	.ascii	"_mbsrtowcs_state\000"
.LASF174:
	.ascii	"_mbrlen_state\000"
.LASF161:
	.ascii	"_unused_rand\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF109:
	.ascii	"_fns\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF89:
	.ascii	"_sign\000"
.LASF185:
	.ascii	"_impure_ptr\000"
.LASF134:
	.ascii	"_stderr\000"
.LASF91:
	.ascii	"_Bigint\000"
.LASF87:
	.ascii	"_next\000"
.LASF118:
	.ascii	"_read\000"
.LASF92:
	.ascii	"__tm\000"
.LASF81:
	.ascii	"__wchb\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF145:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF115:
	.ascii	"_file\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF126:
	.ascii	"_data\000"
.LASF155:
	.ascii	"_niobs\000"
.LASF166:
	.ascii	"_rand_next\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF172:
	.ascii	"_signal_buf\000"
.LASF163:
	.ascii	"_asctime_buf\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF141:
	.ascii	"_result\000"
.LASF193:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF180:
	.ascii	"_nextf\000"
.LASF76:
	.ascii	"_LOCK_T\000"
.LASF194:
	.ascii	"main.c\000"
.LASF147:
	.ascii	"_new\000"
.LASF48:
	.ascii	"APB2LPENR\000"
.LASF127:
	.ascii	"_lock\000"
.LASF159:
	.ascii	"_mult\000"
.LASF190:
	.ascii	"printUSART2\000"
.LASF119:
	.ascii	"_write\000"
.LASF98:
	.ascii	"__tm_year\000"
.LASF181:
	.ascii	"_nmalloc\000"
.LASF86:
	.ascii	"__ULong\000"
.LASF77:
	.ascii	"_off_t\000"
.LASF137:
	.ascii	"_unspecified_locale_info\000"
.LASF90:
	.ascii	"_wds\000"
.LASF69:
	.ascii	"RESERVED11\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF97:
	.ascii	"__tm_mon\000"
.LASF107:
	.ascii	"_atexit\000"
.LASF188:
	.ascii	"time\000"
.LASF139:
	.ascii	"__sdidinit\000"
.LASF165:
	.ascii	"_gamma_signgam\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF79:
	.ascii	"wint_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF144:
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
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF156:
	.ascii	"_iobs\000"
.LASF179:
	.ascii	"_h_errno\000"
.LASF85:
	.ascii	"_flock_t\000"
.LASF100:
	.ascii	"__tm_yday\000"
.LASF110:
	.ascii	"__sbuf\000"
.LASF129:
	.ascii	"_flags2\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF153:
	.ascii	"__FILE\000"
.LASF84:
	.ascii	"_mbstate_t\000"
.LASF128:
	.ascii	"_mbstate\000"
.LASF168:
	.ascii	"_mblen_state\000"
.LASF135:
	.ascii	"_inc\000"
.LASF108:
	.ascii	"_ind\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF138:
	.ascii	"_locale\000"
.LASF140:
	.ascii	"__cleanup\000"
.LASF88:
	.ascii	"_maxwds\000"
.LASF130:
	.ascii	"_reent\000"
.LASF158:
	.ascii	"_seed\000"
.LASF191:
	.ascii	"delay_ms\000"
.LASF82:
	.ascii	"__count\000"
.LASF183:
	.ascii	"__lock\000"
.LASF83:
	.ascii	"__value\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF120:
	.ascii	"_seek\000"
.LASF99:
	.ascii	"__tm_wday\000"
.LASF78:
	.ascii	"_fpos_t\000"
.LASF75:
	.ascii	"long double\000"
.LASF131:
	.ascii	"_errno\000"
.LASF152:
	.ascii	"char\000"
.LASF124:
	.ascii	"_blksize\000"
.LASF55:
	.ascii	"SMCR\000"
.LASF112:
	.ascii	"_size\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF71:
	.ascii	"DMAR\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF105:
	.ascii	"_fntypes\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF162:
	.ascii	"_strtok_last\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF160:
	.ascii	"_add\000"
.LASF173:
	.ascii	"_getdate_err\000"
.LASF63:
	.ascii	"RESERVED10\000"
.LASF186:
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
.LASF133:
	.ascii	"_stdout\000"
.LASF154:
	.ascii	"_glue\000"
.LASF24:
	.ascii	"BSRRH\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF171:
	.ascii	"_l64a_buf\000"
.LASF149:
	.ascii	"_sig_func\000"
.LASF123:
	.ascii	"_nbuf\000"
.LASF182:
	.ascii	"_unused\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF56:
	.ascii	"DIER\000"
.LASF101:
	.ascii	"__tm_isdst\000"
.LASF164:
	.ascii	"_localtime_buf\000"
.LASF94:
	.ascii	"__tm_min\000"
.LASF167:
	.ascii	"_r48\000"
.LASF169:
	.ascii	"_mbtowc_state\000"
.LASF143:
	.ascii	"_p5s\000"
.LASF196:
	.ascii	"main\000"
.LASF96:
	.ascii	"__tm_mday\000"
.LASF38:
	.ascii	"AHB3ENR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
