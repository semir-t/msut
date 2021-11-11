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
	.file	"adc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	initADC1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initADC1, %function
initADC1:
.LFB110:
	.file 1 "adc.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 0
	ldr	r1, .L4
	.loc 1 11 0
	ldr	r2, .L4+4
	.loc 1 9 0
	ldr	r0, [r1, #48]
	.loc 1 14 0
	ldr	r3, .L4+8
	.loc 1 9 0
	orr	r0, r0, #1
	.loc 1 4 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 9 0
	str	r0, [r1, #48]
	.loc 1 10 0
	ldr	r0, [r1, #68]
	.loc 1 22 0
	ldr	r4, .L4+12
	.loc 1 10 0
	orr	r0, r0, #256
	str	r0, [r1, #68]
	.loc 1 11 0
	ldr	r1, [r2]
	orr	r1, r1, #12
	str	r1, [r2]
	.loc 1 12 0
	ldr	r0, [r2, #12]
	bic	r0, r0, #12
	str	r0, [r2, #12]
	.loc 1 17 0
	movs	r1, #0
	.loc 1 20 0
	movs	r5, #1
	.loc 1 14 0
	mov	r6, #2048
	.loc 1 22 0
	mov	r2, #65536
	.loc 1 21 0
	mov	r0, #1024
	.loc 1 14 0
	str	r6, [r3, #4]
	.loc 1 17 0
	str	r1, [r3, #12]
	.loc 1 18 0
	str	r1, [r3, #44]
	.loc 1 19 0
	str	r1, [r3, #48]
	.loc 1 20 0
	str	r5, [r3, #52]
	.loc 1 21 0
	str	r0, [r3, #8]
	.loc 1 22 0
	str	r2, [r4, #4]
	.loc 1 24 0
	ldr	r2, [r3, #8]
	orrs	r2, r2, r5
	str	r2, [r3, #8]
	.loc 1 25 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073872896
	.word	1073815552
	.word	1073816320
	.cfi_endproc
.LFE110:
	.size	initADC1, .-initADC1
	.align	1
	.p2align 2,,3
	.global	getADC1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getADC1, %function
getADC1:
.LFB111:
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 32 0
	ldr	r3, .L10
	ldr	r2, [r3, #76]
	.loc 1 34 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
.L7:
	.loc 1 35 0 discriminator 1
	ldr	r2, [r3]
	lsls	r2, r2, #30
	bpl	.L7
	.loc 1 36 0
	ldr	r0, [r3, #76]
.LVL0:
	.loc 1 40 0
	uxth	r0, r0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073815552
	.cfi_endproc
.LFE111:
	.size	getADC1, .-getADC1
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.file 7 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4e1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
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
	.byte	0x50
	.byte	0x6
	.2byte	0x130
	.4byte	0x1f5
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x132
	.4byte	0xcd
	.byte	0
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x133
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x134
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x135
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x136
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x137
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x138
	.4byte	0xcd
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x139
	.4byte	0xcd
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x13a
	.4byte	0xcd
	.byte	0x20
	.uleb128 0x9
	.ascii	"HTR\000"
	.byte	0x6
	.2byte	0x13b
	.4byte	0xcd
	.byte	0x24
	.uleb128 0x9
	.ascii	"LTR\000"
	.byte	0x6
	.2byte	0x13c
	.4byte	0xcd
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x13d
	.4byte	0xcd
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x13e
	.4byte	0xcd
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x13f
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x140
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x141
	.4byte	0xcd
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x142
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x143
	.4byte	0xcd
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x144
	.4byte	0xcd
	.byte	0x48
	.uleb128 0x9
	.ascii	"DR\000"
	.byte	0x6
	.2byte	0x145
	.4byte	0xcd
	.byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x146
	.4byte	0xe9
	.uleb128 0x8
	.byte	0xc
	.byte	0x6
	.2byte	0x148
	.4byte	0x232
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x14a
	.4byte	0xcd
	.byte	0
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x6
	.2byte	0x14b
	.4byte	0xcd
	.byte	0x4
	.uleb128 0x9
	.ascii	"CDR\000"
	.byte	0x6
	.2byte	0x14c
	.4byte	0xcd
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x14e
	.4byte	0x201
	.uleb128 0xc
	.4byte	0xc2
	.4byte	0x24e
	.uleb128 0xd
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x2da
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x290
	.4byte	0xcd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x291
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x292
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x293
	.4byte	0xcd
	.byte	0xc
	.uleb128 0x9
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xcd
	.byte	0x10
	.uleb128 0x9
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x296
	.4byte	0xad
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x297
	.4byte	0xad
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x298
	.4byte	0xcd
	.byte	0x1c
	.uleb128 0x9
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x2ea
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.4byte	0xcd
	.4byte	0x2ea
	.uleb128 0xd
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x2da
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x29a
	.4byte	0x24e
	.uleb128 0x8
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x48a
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xcd
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xcd
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xcd
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xcd
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2e9
	.4byte	0x23e
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xcd
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xc2
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xcd
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x2f0
	.4byte	0x23e
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xcd
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xcd
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xcd
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xc2
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xcd
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xcd
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x2f7
	.4byte	0x23e
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xcd
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xcd
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x2fa
	.4byte	0x23e
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xcd
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xcd
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x2fd
	.4byte	0x2fb
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x7
	.byte	0x1c
	.4byte	0xcd
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1b
	.4byte	0xa2
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1d
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1e
	.4byte	0xc2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"GPIO_TypeDef\000"
.LASF49:
	.ascii	"APB1RSTR\000"
.LASF53:
	.ascii	"AHB2ENR\000"
.LASF29:
	.ascii	"JDR1\000"
.LASF30:
	.ascii	"JDR2\000"
.LASF31:
	.ascii	"JDR3\000"
.LASF32:
	.ascii	"JDR4\000"
.LASF2:
	.ascii	"short int\000"
.LASF66:
	.ascii	"BDCR\000"
.LASF69:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF68:
	.ascii	"SSCGR\000"
.LASF73:
	.ascii	"adc.c\000"
.LASF61:
	.ascii	"AHB3LPENR\000"
.LASF44:
	.ascii	"CFGR\000"
.LASF58:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF56:
	.ascii	"APB1ENR\000"
.LASF59:
	.ascii	"AHB1LPENR\000"
.LASF36:
	.ascii	"OTYPER\000"
.LASF54:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF38:
	.ascii	"PUPDR\000"
.LASF7:
	.ascii	"long int\000"
.LASF70:
	.ascii	"RCC_TypeDef\000"
.LASF40:
	.ascii	"BSRRH\000"
.LASF35:
	.ascii	"MODER\000"
.LASF50:
	.ascii	"APB2RSTR\000"
.LASF28:
	.ascii	"JSQR\000"
.LASF75:
	.ascii	"getADC1\000"
.LASF76:
	.ascii	"adc_data\000"
.LASF21:
	.ascii	"JOFR1\000"
.LASF39:
	.ascii	"BSRRL\000"
.LASF23:
	.ascii	"JOFR3\000"
.LASF24:
	.ascii	"JOFR4\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF57:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF46:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF45:
	.ascii	"AHB1RSTR\000"
.LASF22:
	.ascii	"JOFR2\000"
.LASF77:
	.ascii	"time\000"
.LASF74:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/MSUT/students/examples/LAB03/adc-sample-pwm"
	.ascii	"-output\000"
.LASF43:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF63:
	.ascii	"APB1LPENR\000"
.LASF72:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF71:
	.ascii	"g_tim7_val\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF60:
	.ascii	"AHB2LPENR\000"
.LASF34:
	.ascii	"ADC_Common_TypeDef\000"
.LASF48:
	.ascii	"RESERVED0\000"
.LASF51:
	.ascii	"RESERVED1\000"
.LASF55:
	.ascii	"RESERVED2\000"
.LASF37:
	.ascii	"OSPEEDR\000"
.LASF62:
	.ascii	"RESERVED4\000"
.LASF65:
	.ascii	"RESERVED5\000"
.LASF67:
	.ascii	"RESERVED6\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF52:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF25:
	.ascii	"SQR1\000"
.LASF26:
	.ascii	"SQR2\000"
.LASF27:
	.ascii	"SQR3\000"
.LASF47:
	.ascii	"AHB3RSTR\000"
.LASF33:
	.ascii	"ADC_TypeDef\000"
.LASF19:
	.ascii	"SMPR1\000"
.LASF20:
	.ascii	"SMPR2\000"
.LASF41:
	.ascii	"LCKR\000"
.LASF78:
	.ascii	"initADC1\000"
.LASF64:
	.ascii	"APB2LPENR\000"
.LASF3:
	.ascii	"__uint8_t\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
