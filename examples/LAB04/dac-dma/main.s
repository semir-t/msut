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
	.align	2
	.global	getData4DAC
	.thumb
	.thumb_func
	.type	getData4DAC, %function
getData4DAC:
.LFB111:
	.file 1 "main.c"
	.loc 1 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	.cfi_def_cfa_offset 56
	.cfi_offset 80, -56
	.cfi_offset 81, -52
	.cfi_offset 82, -48
	.cfi_offset 83, -44
	.cfi_offset 84, -40
	.cfi_offset 85, -36
	.cfi_offset 86, -32
	.cfi_offset 87, -28
	.cfi_offset 88, -24
	.cfi_offset 89, -20
	.loc 1 71 0
	flds	s23, .L36
	.loc 1 106 0
	flds	s18, .L36+4
	.loc 1 110 0
	flds	s19, .L36+8
	flds	s16, .L36+12
	flds	s17, .L36+16
	.loc 1 93 0
	flds	s21, .L36+20
	.loc 1 95 0
	flds	s22, .L36+24
	.loc 1 91 0
	flds	s20, .L36+28
	.loc 1 69 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 64
	.loc 1 69 0
	mov	r5, r1
	subs	r4, r0, #2
	addw	r6, r0, #1998
.LVL1:
.L16:
	.loc 1 75 0
	cbnz	r5, .L2
	.loc 1 77 0
	flds	s0, .L36+32
	fmuls	s0, s23, s0
	bl	sinf
.LVL2:
	flds	s15, .L36+36
	fconsts	s14, #96
.LVL3:
	vfma.f32	s14, s0, s15
.LVL4:
.L31:
	fmuls	s15, s14, s17
	fadds	s23, s23, s16
.LVL5:
	ftouizs	s15, s15
	fsts	s15, [sp, #4]	@ int
	ldrh	r3, [sp, #4]
.L3:
	.loc 1 121 0 discriminator 2
	strh	r3, [r4, #2]!	@ movhi
.LVL6:
	.loc 1 73 0 discriminator 2
	cmp	r4, r6
	bne	.L16
	.loc 1 125 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	@ sp needed
	fldmfdd	sp!, {d8-d12}
	.cfi_restore 88
	.cfi_restore 89
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
	pop	{r4, r5, r6, pc}
.LVL7:
.L2:
	.cfi_restore_state
	.loc 1 79 0
	cmp	r5, #1
	beq	.L34
	.loc 1 83 0
	cmp	r5, #2
	beq	.L35
	.loc 1 104 0
	cmp	r5, #3
	beq	.L12
	fmuls	s15, s14, s17
	fadds	s23, s23, s16
.LVL8:
	ftouizs	s15, s15
	fsts	s15, [sp, #4]	@ int
	ldrh	r3, [sp, #4]
	b	.L3
.LVL9:
.L34:
	.loc 1 81 0
	flds	s0, .L36+32
	fmuls	s0, s23, s0
	bl	sinf
.LVL10:
	fcpys	s24, s0
	flds	s0, .L36+40
	fmuls	s0, s23, s0
	bl	sinf
.LVL11:
	flds	s13, .L36+44
	flds	s15, .L36+48
	fconsts	s14, #96
	vfma.f32	s14, s24, s13
.LVL12:
	fadds	s23, s23, s16
.LVL13:
	vfma.f32	s14, s0, s15
.LVL14:
	fmuls	s15, s14, s17
	ftouizs	s15, s15
	fsts	s15, [sp, #4]	@ int
	ldrh	r3, [sp, #4]
	b	.L3
.LVL15:
.L35:
	.loc 1 85 0
	fcmpes	s23, s18
	fmstat
	bpl	.L25
.LVL16:
	.loc 1 87 0
	fdivs	s15, s23, s18
	fconsts	s14, #112
	fadds	s15, s15, s14
	fconsts	s14, #8
	fdivs	s14, s15, s14
	b	.L31
.LVL17:
.L12:
	.loc 1 106 0
	fcmpes	s23, s18
	fmstat
	bpl	.L28
	fadds	s23, s23, s16
.LVL18:
	movw	r3, #4095
.LVL19:
	.loc 1 108 0
	fconsts	s14, #112
	b	.L3
.LVL20:
.L25:
	.loc 1 89 0
	fcmpes	s23, s19
	fmstat
	bpl	.L26
.LVL21:
	.loc 1 91 0
	fsubs	s15, s23, s18
	fconsts	s14, #128
	fmuls	s15, s15, s14
	fconsts	s13, #0
	fdivs	s15, s15, s20
	fconsts	s14, #8
	fadds	s15, s15, s13
.LVL22:
.L32:
	fdivs	s14, s15, s14
	fadds	s23, s23, s16
.LVL23:
	fmuls	s15, s14, s17
	ftouizs	s15, s15
	fsts	s15, [sp, #4]	@ int
	ldrh	r3, [sp, #4]
	b	.L3
.LVL24:
.L28:
	.loc 1 110 0
	fcmpes	s23, s19
	fmstat
	bpl	.L29
	fadds	s23, s23, s16
.LVL25:
	movs	r3, #0
.LVL26:
	.loc 1 112 0
	flds	s14, .L36
	b	.L3
.LVL27:
.L26:
	.loc 1 93 0
	fcmpes	s23, s21
	fmstat
	bpl	.L27
.LVL28:
	.loc 1 95 0
	fsubs	s15, s23, s19
	fconsts	s14, #8
	fdivs	s15, s15, s22
	b	.L32
.LVL29:
.L29:
	flds	s23, .L36+12
.LVL30:
	movw	r3, #4095
.LVL31:
	.loc 1 117 0
	fconsts	s14, #112
	b	.L3
.LVL32:
.L27:
	flds	s23, .L36+12
.LVL33:
	flds	s14, .L36+52
	movw	r3, #1365
.LVL34:
	b	.L3
.L37:
	.align	2
.L36:
	.word	0
	.word	981668463
	.word	994352038
	.word	953267991
	.word	1166012416
	.word	998445679
	.word	981668464
	.word	990057070
	.word	1142756442
	.word	1050253722
	.word	1167922266
	.word	1045220557
	.word	1036831949
	.word	1051372203
	.cfi_endproc
.LFE111:
	.size	getData4DAC, .-getData4DAC
	.align	2
	.global	EXTI0_IRQHandler
	.thumb
	.thumb_func
	.type	EXTI0_IRQHandler, %function
EXTI0_IRQHandler:
.LFB112:
	.loc 1 129 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 130 0
	ldr	r3, .L45
	ldr	r3, [r3, #20]
	lsls	r3, r3, #31
	bpl	.L38
	.loc 1 132 0
	ldr	r3, .L45+4
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbz	r2, .L44
.L40:
	.loc 1 136 0
	ldr	r3, .L45
	movs	r2, #1
	str	r2, [r3, #20]
.L38:
	bx	lr
.L44:
	.loc 1 134 0
	movs	r2, #1
	strb	r2, [r3]
	b	.L40
.L46:
	.align	2
.L45:
	.word	1073822720
	.word	.LANCHOR0
	.cfi_endproc
.LFE112:
	.size	EXTI0_IRQHandler, .-EXTI0_IRQHandler
	.align	2
	.global	serviceIRQA
	.thumb
	.thumb_func
	.type	serviceIRQA, %function
serviceIRQA:
.LFB113:
	.loc 1 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 142 0
	ldr	r4, .L57
	ldrb	r3, [r4]	@ zero_extendqisi2
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L49
	cmp	r3, #3
	beq	.L50
	cmp	r3, #1
	beq	.L56
.L47:
	pop	{r4, pc}
.L56:
	.loc 1 150 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r4, #1]
	.loc 1 151 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #3
	.loc 1 152 0
	itt	hi
	movhi	r3, #0
	strbhi	r3, [r4, #1]
	.loc 1 154 0
	movs	r3, #2
	strb	r3, [r4]
	.loc 1 155 0
	pop	{r4, pc}
.L50:
	.loc 1 168 0
	ldr	r0, [r4, #4]
	movs	r1, #50
	bl	chk4TimeoutSYSTIM
.LVL35:
	cmp	r0, #0
	bne	.L47
	.loc 1 170 0
	strb	r0, [r4]
	pop	{r4, pc}
.L49:
	.loc 1 159 0
	ldr	r3, .L57+4
	ldr	r3, [r3, #16]
	lsls	r3, r3, #31
	bmi	.L47
.LBB6:
.LBB7:
	.loc 1 161 0
	movs	r3, #3
	strb	r3, [r4]
	.loc 1 162 0
	bl	getSYSTIM
.LVL36:
	str	r0, [r4, #4]
	pop	{r4, pc}
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.word	1073872896
.LBE7:
.LBE6:
	.cfi_endproc
.LFE113:
	.size	serviceIRQA, .-serviceIRQA
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 2000
	@ frame_needed = 0, uses_anonymous_args = 0
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
	.loc 1 31 0
	ldr	r2, .L65
	.loc 1 27 0
	ldr	r6, .L65+4
	.loc 1 32 0
	ldr	r5, .L65+8
	.loc 1 27 0
	ldrb	r4, [r6, #1]	@ zero_extendqisi2
	.loc 1 31 0
	ldr	r1, [r2, #48]
	.loc 1 36 0
	ldr	r3, .L65+12
	.loc 1 35 0
	ldr	r0, .L65+16
.LBB8:
.LBB9:
	.file 2 "../../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1075 0
	ldr	r7, .L65+20
.LBE9:
.LBE8:
	.loc 1 61 0
	ldr	r10, .L65+28
	.loc 1 31 0
	orr	r1, r1, #1
	str	r1, [r2, #48]
	.loc 1 32 0
	ldr	r1, [r5]
	bic	r1, r1, #3
	str	r1, [r5]
	.loc 1 34 0
	ldr	r1, [r2, #68]
	.loc 1 36 0
	mov	lr, #1
	.loc 1 35 0
	movs	r5, #0
	.loc 1 34 0
	orr	r1, r1, #16384
	str	r1, [r2, #68]
	.loc 1 35 0
	str	r5, [r0, #8]
	.loc 1 36 0
	str	lr, [r3]
	.loc 1 37 0
	ldr	r2, [r3, #4]
	.loc 1 26 0
	sub	sp, sp, #2008
	.cfi_def_cfa_offset 2040
	.loc 1 37 0
	bic	r2, r2, #1
.LBB12:
.LBB10:
	.loc 2 1075 0
	movs	r1, #64
.LBE10:
.LBE12:
	.loc 1 37 0
	str	r2, [r3, #4]
	.loc 1 42 0
	movs	r0, #45
	.loc 1 38 0
	str	lr, [r3, #8]
	.loc 1 39 0
	str	r5, [r3, #12]
.LBB13:
.LBB11:
	.loc 2 1075 0
	str	r1, [r7]
.LBE11:
.LBE13:
	.loc 1 43 0
	add	r7, sp, #8
	.loc 1 42 0
	bl	initUSART2
.LVL37:
	.loc 1 43 0
	ldrb	r1, [r6, #1]	@ zero_extendqisi2
	mov	r0, r7
	bl	getData4DAC
.LVL38:
	.loc 1 44 0
	mov	r0, r7
	mov	r1, #1000
	bl	initDmaDAC1
.LVL39:
	.loc 1 46 0
	bl	initSYSTIM
.LVL40:
	.loc 1 47 0
	bl	getSYSTIM
.LVL41:
	.loc 1 27 0
	uxtb	r4, r4
.LVL42:
	.loc 1 50 0
	mov	r9, r6
	.loc 1 47 0
	mov	r8, r0
.LVL43:
.L60:
	.loc 1 50 0
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, r4
	.loc 1 53 0
	mov	r0, r7
	.loc 1 50 0
	beq	.L61
.L64:
	.loc 1 52 0
	ldrb	r4, [r9, #1]	@ zero_extendqisi2
.LVL44:
	.loc 1 53 0
	ldrb	r1, [r9, #1]	@ zero_extendqisi2
	.loc 1 52 0
	uxtb	r4, r4
.LVL45:
	.loc 1 53 0
	bl	getData4DAC
.LVL46:
.L61:
	.loc 1 56 0
	bl	serviceIRQA
.LVL47:
	.loc 1 57 0
	mov	r0, r8
	movs	r1, #100
	bl	chk4TimeoutSYSTIM
.LVL48:
	cmp	r0, #0
	bne	.L60
	.loc 1 59 0
	bl	getSYSTIM
.LVL49:
	.loc 1 61 0
	ldr	r1, [r10, #4]
	.loc 1 62 0
	ldrb	r2, [r6, #1]	@ zero_extendqisi2
	ldrh	r1, [r7, r1, lsl #1]
	ldr	r3, [r10, #4]
	str	r1, [sp]
	.loc 1 59 0
	mov	r8, r0
.LVL50:
	.loc 1 62 0
	mov	r1, r5
	ldr	r0, .L65+24
.LVL51:
	bl	printUSART2
.LVL52:
	.loc 1 50 0
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, r4
	.loc 1 63 0
	add	r5, r5, #1
.LVL53:
	.loc 1 53 0
	mov	r0, r7
	.loc 1 50 0
	bne	.L64
	b	.L61
.L66:
	.align	2
.L65:
	.word	1073887232
	.word	.LANCHOR0
	.word	1073872896
	.word	1073822720
	.word	1073821696
	.word	-536813312
	.word	.LC0
	.word	1073897608
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.global	g_pbtn_cnt
	.global	g_irq_timer
	.global	g_gpioa_irq_state
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> RUN[%x] SIG[%d] DMA_NTDR[%d] DAC V[%d]\012\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_gpioa_irq_state, %object
	.size	g_gpioa_irq_state, 1
g_gpioa_irq_state:
	.space	1
	.type	g_pbtn_cnt, %object
	.size	g_pbtn_cnt, 1
g_pbtn_cnt:
	.space	1
	.space	2
	.type	g_irq_timer, %object
	.size	g_irq_timer, 4
g_irq_timer:
	.space	4
	.text
.Letext0:
	.file 3 "../../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2020/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2020/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 6 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2020/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 7 "delay.h"
	.file 8 "usart.h"
	.file 9 "dac.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xaf3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x1
	.4byte	.LASF185
	.4byte	.LASF186
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF90
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x1
	.byte	0x3
	.byte	0x91
	.4byte	0x267
	.uleb128 0x4
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x4
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x4
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x4
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x4
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x4
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x4
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF9
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF10
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF11
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF12
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF13
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF14
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF15
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF16
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF17
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF18
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF19
	.sleb128 11
	.uleb128 0x4
	.4byte	.LASF20
	.sleb128 12
	.uleb128 0x4
	.4byte	.LASF21
	.sleb128 13
	.uleb128 0x4
	.4byte	.LASF22
	.sleb128 14
	.uleb128 0x4
	.4byte	.LASF23
	.sleb128 15
	.uleb128 0x4
	.4byte	.LASF24
	.sleb128 16
	.uleb128 0x4
	.4byte	.LASF25
	.sleb128 17
	.uleb128 0x4
	.4byte	.LASF26
	.sleb128 18
	.uleb128 0x4
	.4byte	.LASF27
	.sleb128 19
	.uleb128 0x4
	.4byte	.LASF28
	.sleb128 20
	.uleb128 0x4
	.4byte	.LASF29
	.sleb128 21
	.uleb128 0x4
	.4byte	.LASF30
	.sleb128 22
	.uleb128 0x4
	.4byte	.LASF31
	.sleb128 23
	.uleb128 0x4
	.4byte	.LASF32
	.sleb128 24
	.uleb128 0x4
	.4byte	.LASF33
	.sleb128 25
	.uleb128 0x4
	.4byte	.LASF34
	.sleb128 26
	.uleb128 0x4
	.4byte	.LASF35
	.sleb128 27
	.uleb128 0x4
	.4byte	.LASF36
	.sleb128 28
	.uleb128 0x4
	.4byte	.LASF37
	.sleb128 29
	.uleb128 0x4
	.4byte	.LASF38
	.sleb128 30
	.uleb128 0x4
	.4byte	.LASF39
	.sleb128 31
	.uleb128 0x4
	.4byte	.LASF40
	.sleb128 32
	.uleb128 0x4
	.4byte	.LASF41
	.sleb128 33
	.uleb128 0x4
	.4byte	.LASF42
	.sleb128 34
	.uleb128 0x4
	.4byte	.LASF43
	.sleb128 35
	.uleb128 0x4
	.4byte	.LASF44
	.sleb128 36
	.uleb128 0x4
	.4byte	.LASF45
	.sleb128 37
	.uleb128 0x4
	.4byte	.LASF46
	.sleb128 38
	.uleb128 0x4
	.4byte	.LASF47
	.sleb128 39
	.uleb128 0x4
	.4byte	.LASF48
	.sleb128 40
	.uleb128 0x4
	.4byte	.LASF49
	.sleb128 41
	.uleb128 0x4
	.4byte	.LASF50
	.sleb128 42
	.uleb128 0x4
	.4byte	.LASF51
	.sleb128 43
	.uleb128 0x4
	.4byte	.LASF52
	.sleb128 44
	.uleb128 0x4
	.4byte	.LASF53
	.sleb128 45
	.uleb128 0x4
	.4byte	.LASF54
	.sleb128 46
	.uleb128 0x4
	.4byte	.LASF55
	.sleb128 47
	.uleb128 0x4
	.4byte	.LASF56
	.sleb128 48
	.uleb128 0x4
	.4byte	.LASF57
	.sleb128 49
	.uleb128 0x4
	.4byte	.LASF58
	.sleb128 50
	.uleb128 0x4
	.4byte	.LASF59
	.sleb128 51
	.uleb128 0x4
	.4byte	.LASF60
	.sleb128 52
	.uleb128 0x4
	.4byte	.LASF61
	.sleb128 53
	.uleb128 0x4
	.4byte	.LASF62
	.sleb128 54
	.uleb128 0x4
	.4byte	.LASF63
	.sleb128 55
	.uleb128 0x4
	.4byte	.LASF64
	.sleb128 56
	.uleb128 0x4
	.4byte	.LASF65
	.sleb128 57
	.uleb128 0x4
	.4byte	.LASF66
	.sleb128 58
	.uleb128 0x4
	.4byte	.LASF67
	.sleb128 59
	.uleb128 0x4
	.4byte	.LASF68
	.sleb128 60
	.uleb128 0x4
	.4byte	.LASF69
	.sleb128 61
	.uleb128 0x4
	.4byte	.LASF70
	.sleb128 62
	.uleb128 0x4
	.4byte	.LASF71
	.sleb128 63
	.uleb128 0x4
	.4byte	.LASF72
	.sleb128 64
	.uleb128 0x4
	.4byte	.LASF73
	.sleb128 65
	.uleb128 0x4
	.4byte	.LASF74
	.sleb128 66
	.uleb128 0x4
	.4byte	.LASF75
	.sleb128 67
	.uleb128 0x4
	.4byte	.LASF76
	.sleb128 68
	.uleb128 0x4
	.4byte	.LASF77
	.sleb128 69
	.uleb128 0x4
	.4byte	.LASF78
	.sleb128 70
	.uleb128 0x4
	.4byte	.LASF79
	.sleb128 71
	.uleb128 0x4
	.4byte	.LASF80
	.sleb128 72
	.uleb128 0x4
	.4byte	.LASF81
	.sleb128 73
	.uleb128 0x4
	.4byte	.LASF82
	.sleb128 74
	.uleb128 0x4
	.4byte	.LASF83
	.sleb128 75
	.uleb128 0x4
	.4byte	.LASF84
	.sleb128 76
	.uleb128 0x4
	.4byte	.LASF85
	.sleb128 77
	.uleb128 0x4
	.4byte	.LASF86
	.sleb128 78
	.uleb128 0x4
	.4byte	.LASF87
	.sleb128 79
	.uleb128 0x4
	.4byte	.LASF88
	.sleb128 80
	.uleb128 0x4
	.4byte	.LASF89
	.sleb128 81
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x3
	.byte	0xef
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF91
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x4
	.byte	0x1d
	.4byte	0x284
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF95
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x4
	.byte	0x2b
	.4byte	0x29d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF97
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x4
	.byte	0x3f
	.4byte	0x2af
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x5
	.4byte	.LASF100
	.byte	0x4
	.byte	0x41
	.4byte	0x2c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF101
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF102
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF104
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x5
	.byte	0x15
	.4byte	0x279
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0x5
	.byte	0x21
	.4byte	0x292
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0x5
	.byte	0x2c
	.4byte	0x2a4
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0x5
	.byte	0x2d
	.4byte	0x2b6
	.uleb128 0x7
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.4byte	0x3cc
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x132
	.4byte	0x3e3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x133
	.4byte	0x3e8
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x134
	.4byte	0x3f8
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x135
	.4byte	0x3e8
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x136
	.4byte	0x3fd
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x137
	.4byte	0x3e8
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x138
	.4byte	0x402
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x139
	.4byte	0x3e8
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13a
	.4byte	0x407
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13b
	.4byte	0x40c
	.2byte	0x220
	.uleb128 0xa
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x42c
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x13d
	.4byte	0x431
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x13e
	.4byte	0x442
	.2byte	0xe00
	.byte	0
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x3dc
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF121
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x3f8
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xd
	.4byte	0x3cc
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x41c
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x37
	.byte	0
	.uleb128 0xb
	.4byte	0x2e4
	.4byte	0x42c
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0xef
	.byte	0
	.uleb128 0xd
	.4byte	0x41c
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x442
	.uleb128 0xe
	.4byte	0x3dc
	.2byte	0x283
	.byte	0
	.uleb128 0xd
	.4byte	0x305
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x13f
	.4byte	0x310
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x463
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x305
	.4byte	0x473
	.uleb128 0xc
	.4byte	0x3dc
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	0x2e4
	.uleb128 0xd
	.4byte	0x2ef
	.uleb128 0xd
	.4byte	0x2fa
	.uleb128 0x10
	.byte	0x18
	.byte	0x3
	.2byte	0x1d7
	.4byte	0x4d9
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x1da
	.4byte	0x442
	.byte	0x4
	.uleb128 0x11
	.ascii	"PAR\000"
	.byte	0x3
	.2byte	0x1db
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x1dc
	.4byte	0x442
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x1dd
	.4byte	0x442
	.byte	0x10
	.uleb128 0x11
	.ascii	"FCR\000"
	.byte	0x3
	.2byte	0x1de
	.4byte	0x442
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x1df
	.4byte	0x482
	.uleb128 0x10
	.byte	0x18
	.byte	0x3
	.2byte	0x237
	.4byte	0x53c
	.uleb128 0x11
	.ascii	"IMR\000"
	.byte	0x3
	.2byte	0x239
	.4byte	0x442
	.byte	0
	.uleb128 0x11
	.ascii	"EMR\000"
	.byte	0x3
	.2byte	0x23a
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x23b
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x23c
	.4byte	0x442
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x23d
	.4byte	0x442
	.byte	0x10
	.uleb128 0x11
	.ascii	"PR\000"
	.byte	0x3
	.2byte	0x23e
	.4byte	0x442
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x23f
	.4byte	0x4e5
	.uleb128 0x10
	.byte	0x28
	.byte	0x3
	.2byte	0x28e
	.4byte	0x5d4
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x290
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x291
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x292
	.4byte	0x442
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x293
	.4byte	0x442
	.byte	0xc
	.uleb128 0x11
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x294
	.4byte	0x442
	.byte	0x10
	.uleb128 0x11
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x295
	.4byte	0x442
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x296
	.4byte	0x478
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x297
	.4byte	0x478
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x298
	.4byte	0x442
	.byte	0x1c
	.uleb128 0x11
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x299
	.4byte	0x5d4
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x29a
	.4byte	0x548
	.uleb128 0x10
	.byte	0x24
	.byte	0x3
	.2byte	0x2a0
	.4byte	0x630
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x2a2
	.4byte	0x442
	.byte	0
	.uleb128 0x11
	.ascii	"PMC\000"
	.byte	0x3
	.2byte	0x2a3
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x2a4
	.4byte	0x630
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x2a5
	.4byte	0x453
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2a6
	.4byte	0x442
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x463
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x2a7
	.4byte	0x5e5
	.uleb128 0x10
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x7d0
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.4byte	0x442
	.byte	0
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2e0
	.4byte	0x442
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2e1
	.4byte	0x442
	.byte	0x8
	.uleb128 0x11
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.4byte	0x442
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x442
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x442
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2e5
	.4byte	0x442
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x2e6
	.4byte	0x305
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x442
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2e8
	.4byte	0x442
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x453
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x2ea
	.4byte	0x442
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x442
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x2ec
	.4byte	0x442
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x305
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x2ee
	.4byte	0x442
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x2ef
	.4byte	0x442
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x453
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x2f1
	.4byte	0x442
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x2f2
	.4byte	0x442
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x442
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f4
	.4byte	0x305
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x2f5
	.4byte	0x442
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x2f6
	.4byte	0x442
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x2f7
	.4byte	0x453
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x2f8
	.4byte	0x442
	.byte	0x70
	.uleb128 0x11
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x442
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x2fa
	.4byte	0x453
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x2fb
	.4byte	0x442
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x2fc
	.4byte	0x442
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x2fd
	.4byte	0x641
	.uleb128 0x12
	.byte	0x4
	.4byte	0x7e2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF167
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF168
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF169
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF188
	.byte	0x2
	.2byte	0x430
	.byte	0x3
	.4byte	0x819
	.uleb128 0x15
	.4byte	.LASF187
	.byte	0x2
	.2byte	0x430
	.4byte	0x267
	.byte	0
	.uleb128 0x16
	.4byte	.LASF189
	.byte	0x1
	.byte	0x44
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8c9
	.uleb128 0x17
	.4byte	.LASF170
	.byte	0x1
	.byte	0x44
	.4byte	0x8c9
	.4byte	.LLST0
	.uleb128 0x18
	.ascii	"pb\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x2e4
	.4byte	.LLST1
	.uleb128 0x19
	.ascii	"n\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x2ef
	.4byte	.LLST2
	.uleb128 0x19
	.ascii	"y\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x19
	.ascii	"t\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0xa7f
	.4byte	0x890
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x441d145a
	.byte	0x1e
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0xa7f
	.4byte	0x8ae
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x441d145a
	.byte	0x1e
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0xa7f
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x459d145a
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x2ef
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0x1
	.byte	0x80
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	0x7f7
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x911
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0xa95
	.4byte	0x907
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL36
	.4byte	0xaaf
	.byte	0
	.uleb128 0x20
	.4byte	.LASF191
	.byte	0x1
	.byte	0x19
	.4byte	0x2d6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2f
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x1
	.byte	0x1b
	.4byte	0x2e4
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF172
	.byte	0x1
	.byte	0x1c
	.4byte	0x305
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x1
	.byte	0x1c
	.4byte	0x305
	.4byte	.LLST6
	.uleb128 0x19
	.ascii	"k\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x305
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x1d
	.4byte	0xa2f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2032
	.uleb128 0x23
	.4byte	0x7ff
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x28
	.4byte	0x98b
	.uleb128 0x24
	.4byte	0x80c
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL37
	.4byte	0xaba
	.4byte	0x99f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL38
	.4byte	0x819
	.4byte	0x9b3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0xacb
	.4byte	0x9ce
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0xae1
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0xaaf
	.uleb128 0x1f
	.4byte	.LVL46
	.4byte	0x819
	.uleb128 0x1f
	.4byte	.LVL47
	.4byte	0x7f7
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0xa95
	.4byte	0xa0c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL49
	.4byte	0xaaf
	.uleb128 0x1c
	.4byte	.LVL52
	.4byte	0xae8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x2ef
	.4byte	0xa40
	.uleb128 0xe
	.4byte	0x3dc
	.2byte	0x3e7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF174
	.byte	0x2
	.2byte	0x51b
	.4byte	0x47d
	.uleb128 0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0xb
	.4byte	0x473
	.uleb128 0x5
	.byte	0x3
	.4byte	g_gpioa_irq_state
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x1
	.byte	0xc
	.4byte	0x442
	.uleb128 0x5
	.byte	0x3
	.4byte	g_irq_timer
	.uleb128 0x26
	.4byte	.LASF177
	.byte	0x1
	.byte	0xe
	.4byte	0x473
	.uleb128 0x5
	.byte	0x3
	.4byte	g_pbtn_cnt
	.uleb128 0x27
	.4byte	.LASF178
	.byte	0x6
	.2byte	0x13c
	.4byte	0x25
	.4byte	0xa95
	.uleb128 0x28
	.4byte	0x25
	.byte	0
	.uleb128 0x29
	.4byte	.LASF179
	.byte	0x7
	.byte	0x19
	.4byte	0x2e4
	.4byte	0xaaf
	.uleb128 0x28
	.4byte	0x305
	.uleb128 0x28
	.4byte	0x305
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF192
	.byte	0x7
	.byte	0x18
	.4byte	0x305
	.uleb128 0x2b
	.4byte	.LASF180
	.byte	0x8
	.byte	0xe
	.4byte	0xacb
	.uleb128 0x28
	.4byte	0x305
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF181
	.byte	0x9
	.byte	0x9
	.4byte	0xae1
	.uleb128 0x28
	.4byte	0x8c9
	.uleb128 0x28
	.4byte	0x2ef
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF183
	.byte	0x7
	.byte	0x17
	.uleb128 0x2d
	.4byte	.LASF193
	.byte	0x8
	.byte	0x10
	.uleb128 0x28
	.4byte	0x7dc
	.uleb128 0x2e
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
	.uleb128 0x4
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x76
	.sleb128 -1998
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3a83126f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800000
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x24
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3a83126f
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0xc0000000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3b03126e
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x40000000
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3b449ba6
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3a831270
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL34
	.4byte	.LFE111
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3eaaaaab
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF115:
	.ascii	"ICPR\000"
.LASF172:
	.ascii	"utmp32\000"
.LASF137:
	.ascii	"LCKR\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF124:
	.ascii	"M0AR\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF93:
	.ascii	"__uint8_t\000"
.LASF132:
	.ascii	"OTYPER\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF129:
	.ascii	"SWIER\000"
.LASF139:
	.ascii	"MEMRMP\000"
.LASF131:
	.ascii	"MODER\000"
.LASF103:
	.ascii	"long long unsigned int\000"
.LASF134:
	.ascii	"PUPDR\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF176:
	.ascii	"g_irq_timer\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF157:
	.ascii	"AHB1LPENR\000"
.LASF180:
	.ascii	"initUSART2\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF102:
	.ascii	"long long int\000"
.LASF91:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF146:
	.ascii	"AHB1RSTR\000"
.LASF113:
	.ascii	"ISPR\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF99:
	.ascii	"long int\000"
.LASF150:
	.ascii	"APB2RSTR\000"
.LASF171:
	.ascii	"t_pbtn_cnt\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF181:
	.ascii	"initDmaDAC1\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF106:
	.ascii	"uint16_t\000"
.LASF168:
	.ascii	"double\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF144:
	.ascii	"PLLCFGR\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF138:
	.ascii	"GPIO_TypeDef\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF133:
	.ascii	"OSPEEDR\000"
.LASF100:
	.ascii	"__uint32_t\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF104:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF184:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF127:
	.ascii	"RTSR\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF101:
	.ascii	"long unsigned int\000"
.LASF166:
	.ascii	"RCC_TypeDef\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF97:
	.ascii	"short unsigned int\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF160:
	.ascii	"APB1LPENR\000"
.LASF165:
	.ascii	"PLLI2SCFGR\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF148:
	.ascii	"AHB3RSTR\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF153:
	.ascii	"AHB2ENR\000"
.LASF161:
	.ascii	"APB2LPENR\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF177:
	.ascii	"g_pbtn_cnt\000"
.LASF193:
	.ascii	"printUSART2\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF190:
	.ascii	"EXTI0_IRQHandler\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF187:
	.ascii	"IRQn\000"
.LASF175:
	.ascii	"g_gpioa_irq_state\000"
.LASF121:
	.ascii	"sizetype\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF117:
	.ascii	"IABR\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF186:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/2020/MSUT/STM32F407/LV7/primjeri/dac-dma\000"
.LASF154:
	.ascii	"AHB3ENR\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF158:
	.ascii	"AHB2LPENR\000"
.LASF111:
	.ascii	"ICER\000"
.LASF185:
	.ascii	"main.c\000"
.LASF149:
	.ascii	"APB1RSTR\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF142:
	.ascii	"CMPCR\000"
.LASF90:
	.ascii	"float\000"
.LASF143:
	.ascii	"SYSCFG_TypeDef\000"
.LASF110:
	.ascii	"RESERVED0\000"
.LASF151:
	.ascii	"RESERVED1\000"
.LASF114:
	.ascii	"RESERVED2\000"
.LASF116:
	.ascii	"RESERVED3\000"
.LASF118:
	.ascii	"RESERVED4\000"
.LASF119:
	.ascii	"RESERVED5\000"
.LASF163:
	.ascii	"RESERVED6\000"
.LASF189:
	.ascii	"getData4DAC\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF107:
	.ascii	"int32_t\000"
.LASF94:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF174:
	.ascii	"ITM_RxBuffer\000"
.LASF128:
	.ascii	"FTSR\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF95:
	.ascii	"short int\000"
.LASF109:
	.ascii	"ISER\000"
.LASF122:
	.ascii	"NVIC_Type\000"
.LASF159:
	.ascii	"AHB3LPENR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF188:
	.ascii	"NVIC_EnableIRQ\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF156:
	.ascii	"APB2ENR\000"
.LASF170:
	.ascii	"dac_buff\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF92:
	.ascii	"IRQn_Type\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF108:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF155:
	.ascii	"APB1ENR\000"
.LASF169:
	.ascii	"long double\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF167:
	.ascii	"char\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF96:
	.ascii	"__uint16_t\000"
.LASF147:
	.ascii	"AHB2RSTR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF141:
	.ascii	"RESERVED\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF98:
	.ascii	"__int32_t\000"
.LASF123:
	.ascii	"NDTR\000"
.LASF178:
	.ascii	"sinf\000"
.LASF126:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF192:
	.ascii	"getSYSTIM\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF173:
	.ascii	"disp_timer\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF125:
	.ascii	"M1AR\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF164:
	.ascii	"SSCGR\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF135:
	.ascii	"BSRRL\000"
.LASF162:
	.ascii	"BDCR\000"
.LASF136:
	.ascii	"BSRRH\000"
.LASF105:
	.ascii	"uint8_t\000"
.LASF182:
	.ascii	"serviceIRQA\000"
.LASF112:
	.ascii	"RSERVED1\000"
.LASF120:
	.ascii	"STIR\000"
.LASF183:
	.ascii	"initSYSTIM\000"
.LASF152:
	.ascii	"AHB1ENR\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF145:
	.ascii	"CFGR\000"
.LASF130:
	.ascii	"EXTI_TypeDef\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF191:
	.ascii	"main\000"
.LASF179:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF140:
	.ascii	"EXTICR\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
