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
.LFB110:
	.file 1 "main.c"
	.loc 1 6 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 11 0
	ldr	r3, .L28
	.loc 1 12 0
	ldr	r1, .L28+4
	.loc 1 11 0
	ldr	r2, [r3, #48]
	.loc 1 18 0
	ldr	r0, .L28+8
	.loc 1 11 0
	orr	r2, r2, #8
	.loc 1 6 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 11 0
	str	r2, [r3, #48]
	.loc 1 12 0
	ldr	r2, [r1]
.LBB5:
.LBB6:
.LBB7:
	.loc 1 60 0
	ldr	r5, .L28+12
.LBE7:
.LBE6:
.LBE5:
	.loc 1 12 0
	orr	r2, r2, #1426063360
	str	r2, [r1]
	.loc 1 13 0
	ldr	r2, [r1, #4]
	str	r2, [r1, #4]
	.loc 1 14 0
	ldr	r2, [r1, #8]
	orr	r2, r2, #-16777216
	str	r2, [r1, #8]
	.loc 1 17 0
	ldr	r2, [r3, #48]
	orr	r2, r2, #1
	str	r2, [r3, #48]
	.loc 1 18 0
	ldr	r3, [r0]
	bic	r3, r3, #3
	str	r3, [r0]
	.loc 1 22 0
	ldr	r4, [r0, #16]
.LBB14:
	.loc 1 25 0
	ldr	r2, [r0, #16]
	.loc 1 27 0
	ands	r2, r2, #1
.LBE14:
	.loc 1 6 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 22 0
	and	r4, r4, #1
.LVL1:
.LBB15:
	.loc 1 27 0
	beq	.L13
.L27:
	.loc 1 27 0 is_stmt 0 discriminator 1
	cmp	r4, #0
	bne	.L4
.LVL2:
.LBB11:
.LBB8:
	.loc 1 60 0 is_stmt 1
	str	r5, [sp, #4]
	.loc 1 62 0
	ldr	r3, [sp, #4]
	cbz	r3, .L10
.LVL3:
.L7:
	.loc 1 64 0
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 62 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L7
.LVL4:
.LBE8:
.LBE11:
	.loc 1 46 0
	cmp	r2, #1
	bne	.L4
.LVL5:
.L10:
	.loc 1 48 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #61440
	str	r3, [r1, #20]
	.loc 1 25 0
	ldr	r3, [r0, #16]
.LVL6:
	.loc 1 27 0
	lsls	r3, r3, #31
.LVL7:
	bpl	.L9
	.loc 1 48 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #61440
	str	r3, [r1, #20]
	.loc 1 25 0
	ldr	r3, [r0, #16]
.LVL8:
	.loc 1 27 0
	lsls	r2, r3, #31
	bmi	.L10
.LVL9:
.L9:
	.loc 1 48 0
	ldr	r3, [r1, #20]
	orr	r3, r3, #61440
	str	r3, [r1, #20]
	.loc 1 25 0
	ldr	r3, [r0, #16]
.LVL10:
	.loc 1 27 0
	lsls	r2, r3, #31
	bmi	.L8
	.loc 1 48 0
	ldr	r3, [r1, #20]
.LVL11:
	orr	r3, r3, #61440
	str	r3, [r1, #20]
	.loc 1 25 0
	ldr	r3, [r0, #16]
.LVL12:
	.loc 1 27 0
	lsls	r3, r3, #31
.LVL13:
	bpl	.L9
.L8:
.LVL14:
.LBB12:
.LBB9:
	.loc 1 60 0
	str	r5, [sp, #4]
	.loc 1 62 0
	ldr	r3, [sp, #4]
.LBE9:
.LBE12:
	.loc 1 35 0
	mov	r2, r4
.LBB13:
.LBB10:
	.loc 1 62 0
	cmp	r3, #0
	bne	.L7
.LVL15:
.L4:
.LBE10:
.LBE13:
	movs	r4, #1
.L5:
	.loc 1 52 0
	ldr	r3, [r1, #20]
	bic	r3, r3, #61440
	str	r3, [r1, #20]
.LVL16:
	.loc 1 25 0
	ldr	r2, [r0, #16]
.LVL17:
	.loc 1 27 0
	ands	r2, r2, #1
.LVL18:
	bne	.L27
.L13:
	mov	r4, r2
.LVL19:
	b	.L5
.L29:
	.align	2
.L28:
	.word	1073887232
	.word	1073875968
	.word	1073872896
	.word	1050000
.LBE15:
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.text
	.align	1
	.p2align 2,,3
	.global	delay_soft_ms
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	delay_soft_ms, %function
delay_soft_ms:
.LFB111:
	.loc 1 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL20:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 1 60 0
	movw	r3, #10500
	mul	r0, r3, r0
.LVL21:
	str	r0, [sp, #4]
	.loc 1 62 0
	ldr	r3, [sp, #4]
	cbz	r3, .L30
.L32:
	.loc 1 64 0
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 62 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L32
.L30:
	.loc 1 68 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE111:
	.size	delay_soft_ms, .-delay_soft_ms
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3f6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0x48
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
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0x364
	.uleb128 0xf
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0xc2
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0x3c
	.4byte	0xcd
	.byte	0
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5
	.4byte	0x89
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d8
	.uleb128 0x12
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x7
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x19
	.4byte	0x97
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	0x341
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x25
	.uleb128 0x16
	.4byte	0x34d
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x17
	.4byte	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x341
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	0x34d
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
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
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB11
	.4byte	.LBE11
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
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF60:
	.ascii	"delay_soft_ms\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF62:
	.ascii	"main\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF55:
	.ascii	"pb_state\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF59:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/MSUT/students/examples/LAB02/gpio-input-pb\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF7:
	.ascii	"long int\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF24:
	.ascii	"BSRRH\000"
.LASF19:
	.ascii	"MODER\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF56:
	.ascii	"pb_new_state\000"
.LASF23:
	.ascii	"BSRRL\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF61:
	.ascii	"time\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF57:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF58:
	.ascii	"main.c\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF48:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
