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
	.file	"spi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	initSPI1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSPI1, %function
initSPI1:
.LFB110:
	.file 1 "spi.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 14 0
	ldr	r1, .L4
	.loc 1 20 0
	ldr	r3, .L4+4
	.loc 1 26 0
	ldr	r2, .L4+8
	.loc 1 4 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 14 0
	ldr	r5, [r1, #48]
	.loc 1 15 0
	ldr	r4, .L4+12
	.loc 1 14 0
	orr	r5, r5, #1
	str	r5, [r1, #48]
	.loc 1 15 0
	ldr	r5, [r4]
	orr	r5, r5, #43008
	str	r5, [r4]
	.loc 1 16 0
	ldr	r5, [r4, #32]
	orr	r5, r5, #1426063360
	orr	r5, r5, #5242880
	str	r5, [r4, #32]
	.loc 1 17 0
	ldr	r5, [r4, #8]
	orr	r5, r5, #43008
	str	r5, [r4, #8]
	.loc 1 19 0
	ldr	r4, [r1, #48]
	orr	r4, r4, #16
	str	r4, [r1, #48]
	.loc 1 20 0
	ldr	r4, [r3]
	orr	r4, r4, #64
	str	r4, [r3]
	.loc 1 21 0
	ldr	r4, [r3, #4]
	bic	r4, r4, #8
	str	r4, [r3, #4]
	.loc 1 22 0
	ldr	r4, [r3, #8]
	orr	r4, r4, #128
	str	r4, [r3, #8]
	.loc 1 23 0
	ldr	r4, [r3, #20]
	orr	r4, r4, #8
	str	r4, [r3, #20]
	.loc 1 25 0
	ldr	r3, [r1, #68]
	.loc 1 26 0
	movs	r4, #4
	.loc 1 25 0
	orr	r3, r3, #4096
	str	r3, [r1, #68]
	.loc 1 26 0
	strh	r4, [r2]	@ movhi
	.loc 1 27 0
	ldrh	r3, [r2]
	orr	r3, r3, #768
	strh	r3, [r2]	@ movhi
	.loc 1 29 0
	ldrh	r3, [r2]
	orrs	r0, r0, r3
.LVL1:
	strh	r0, [r2]	@ movhi
	.loc 1 30 0
	ldrh	r3, [r2]
	orr	r3, r3, #64
	strh	r3, [r2]	@ movhi
	.loc 1 31 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073876992
	.word	1073819648
	.word	1073872896
	.cfi_endproc
.LFE110:
	.size	initSPI1, .-initSPI1
	.align	1
	.p2align 2,,3
	.global	rxByteSPI1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	rxByteSPI1, %function
rxByteSPI1:
.LFB111:
	.loc 1 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 37 0
	ldr	r2, .L15
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
.L7:
	.loc 1 38 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r0, r3, #30
	bpl	.L7
	.loc 1 39 0
	ldr	r2, .L15
.L8:
	.loc 1 39 0 is_stmt 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r1, r3, #31
	bpl	.L8
	.loc 1 40 0 is_stmt 1
	ldr	r2, .L15
.L9:
	.loc 1 40 0 is_stmt 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r3, r3, #24
	bmi	.L9
	.loc 1 41 0 is_stmt 1
	ldrh	r0, [r2, #12]
.LVL2:
	.loc 1 44 0
	uxtb	r0, r0
	bx	lr
.L16:
	.align	2
.L15:
	.word	1073819648
	.cfi_endproc
.LFE111:
	.size	rxByteSPI1, .-rxByteSPI1
	.align	1
	.p2align 2,,3
	.global	txByteSPI1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	txByteSPI1, %function
txByteSPI1:
.LFB112:
	.loc 1 47 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3:
	.loc 1 50 0
	ldr	r2, .L26
	strh	r0, [r2, #12]	@ movhi
.LVL4:
.L18:
	.loc 1 51 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r0, r3, #30
	bpl	.L18
	.loc 1 52 0
	ldr	r2, .L26
.L19:
	.loc 1 52 0 is_stmt 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r1, r3, #31
	bpl	.L19
	.loc 1 53 0 is_stmt 1
	ldr	r2, .L26
.L20:
	.loc 1 53 0 is_stmt 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r3, r3, #24
	bmi	.L20
	.loc 1 54 0 is_stmt 1
	ldrh	r0, [r2, #12]
.LVL5:
	.loc 1 57 0
	uxtb	r0, r0
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073819648
	.cfi_endproc
.LFE112:
	.size	txByteSPI1, .-txByteSPI1
.Letext0:
	.file 2 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
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
	.byte	0x24
	.byte	0x6
	.2byte	0x34f
	.4byte	0x433
	.uleb128 0xc
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x351
	.4byte	0xad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x352
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xc
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x353
	.4byte	0xad
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x354
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xc
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x355
	.4byte	0xad
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x356
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xc
	.ascii	"DR\000"
	.byte	0x6
	.2byte	0x357
	.4byte	0xad
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x358
	.4byte	0xa2
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x359
	.4byte	0xad
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x35a
	.4byte	0xa2
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x35b
	.4byte	0xad
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x35c
	.4byte	0xa2
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x35d
	.4byte	0xad
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x35e
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x35f
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x360
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x361
	.4byte	0xad
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x362
	.4byte	0xa2
	.byte	0x22
	.byte	0
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x363
	.4byte	0x341
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2e
	.4byte	0x97
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x475
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2e
	.4byte	0x97
	.4byte	.LLST1
	.uleb128 0x10
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0x21
	.4byte	0x97
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49c
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x23
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x3
	.4byte	0xa2
	.4byte	.LLST0
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
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
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
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
.LASF64:
	.ascii	"rxByteSPI1\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF57:
	.ascii	"TXCRCR\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF56:
	.ascii	"RXCRCR\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
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
.LASF68:
	.ascii	"spi.c\000"
.LASF23:
	.ascii	"BSRRL\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF63:
	.ascii	"txByteSPI1\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF58:
	.ascii	"I2SCFGR\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF66:
	.ascii	"prescaler\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF69:
	.ascii	"/mnt/ssd/Dropbox/Fakultet/MSUT/students/examples/LA"
	.ascii	"B05/spi-protocol\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF67:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF62:
	.ascii	"SPI_TypeDef\000"
.LASF60:
	.ascii	"I2SPR\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF65:
	.ascii	"data\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF55:
	.ascii	"CRCPR\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF61:
	.ascii	"RESERVED8\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF70:
	.ascii	"initSPI1\000"
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
