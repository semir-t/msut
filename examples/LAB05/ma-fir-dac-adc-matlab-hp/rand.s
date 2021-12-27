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
	.file	"rand.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	genRIN
	.thumb
	.thumb_func
	.type	genRIN, %function
genRIN:
.LFB110:
	.file 1 "rand.c"
	.loc 1 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 7 0
	ldr	r1, .L11
	.loc 1 9 0
	ldr	r3, .L11+4
	.loc 1 7 0
	ldr	r2, [r1, #52]
	orr	r2, r2, #64
	str	r2, [r1, #52]
	.loc 1 9 0
	ldr	r2, [r3]
	orr	r2, r2, #4
	str	r2, [r3]
.L2:
	.loc 1 13 0
	ldr	r2, [r3, #4]
	ldr	r1, .L11+4
	tst	r2, #64
	.loc 1 15 0
	ldr	r2, [r3, #4]
	.loc 1 13 0
	beq	.L3
	.loc 1 15 0
	bic	r2, r2, #64
.L9:
	.loc 1 23 0
	str	r2, [r3, #4]
	.loc 1 24 0
	ldr	r2, [r3]
	bic	r2, r2, #4
	str	r2, [r3]
	.loc 1 25 0
	ldr	r2, [r3]
	orr	r2, r2, #4
	str	r2, [r3]
	b	.L2
.L3:
	.loc 1 21 0
	tst	r2, #32
	.loc 1 23 0
	ldr	r2, [r3, #4]
	.loc 1 21 0
	beq	.L5
	.loc 1 23 0
	bic	r2, r2, #32
	b	.L9
.L5:
	.loc 1 29 0
	lsls	r2, r2, #31
	bpl	.L2
	.loc 1 31 0
	ldr	r0, [r1, #8]
.LVL0:
	.loc 1 38 0
	ldr	r3, [r1]
	.loc 1 39 0
	ldr	r2, .L11
	.loc 1 38 0
	bic	r3, r3, #4
	str	r3, [r1]
	.loc 1 39 0
	ldr	r3, [r2, #52]
	bic	r3, r3, #64
	str	r3, [r2, #52]
	.loc 1 42 0
	bx	lr
.L12:
	.align	2
.L11:
	.word	1073887232
	.word	1342572544
	.cfi_endproc
.LFE110:
	.size	genRIN, .-genRIN
	.align	2
	.global	genRBN
	.thumb
	.thumb_func
	.type	genRBN, %function
genRBN:
.LFB111:
	.loc 1 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1:
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	fstmfdd	sp!, {d8}
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.loc 1 46 0
	fcpys	s16, s0
	.loc 1 48 0
	bl	genRIN
.LVL2:
	.loc 1 49 0
	flds	s15, .L15
	fmuls	s16, s16, s15
.LVL3:
	ftouizs	s16, s16
	.loc 1 58 0
	fmrs	r3, s16	@ int
	fldmfdd	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
	cmp	r0, r3
	ite	cs
	movcs	r0, #0
.LVL4:
	movcc	r0, #1
	pop	{r3, pc}
.L16:
	.align	2
.L15:
	.word	1333788672
	.cfi_endproc
.LFE111:
	.size	genRBN, .-genRBN
	.align	2
	.global	genURFN
	.thumb
	.thumb_func
	.type	genURFN, %function
genURFN:
.LFB112:
	.loc 1 62 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 1 63 0
	bl	genRIN
.LVL5:
	fmsr	s15, r0	@ int
	.loc 1 65 0
	flds	s14, .L19
	.loc 1 63 0
	fuitos	s15, s15
.LVL6:
	.loc 1 65 0
	fmuls	s15, s15, s14
.LVL7:
	fsts	s15, [sp, #4]
	.loc 1 66 0
	flds	s0, [sp, #4]
	.loc 1 67 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L20:
	.align	2
.L19:
	.word	796917760
	.cfi_endproc
.LFE112:
	.size	genURFN, .-genURFN
	.align	2
	.global	genGRFN
	.thumb
	.thumb_func
	.type	genGRFN, %function
genGRFN:
.LFB113:
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL8:
	push	{lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	fstmfdd	sp!, {d8}
	.cfi_def_cfa_offset 12
	.cfi_offset 80, -12
	.cfi_offset 81, -8
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
.LBB6:
.LBB7:
	.loc 1 63 0
	bl	genRIN
.LVL9:
	fmsr	s15, r0	@ int
	.loc 1 65 0
	flds	s16, .L28
	.loc 1 63 0
	fuitos	s15, s15
.LVL10:
	.loc 1 65 0
	fmuls	s15, s15, s16
.LVL11:
	fsts	s15, [sp]
	.loc 1 66 0
	flds	s17, [sp]
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 1 63 0
	bl	genRIN
.LVL12:
	fmsr	s15, r0	@ int
	fuitos	s15, s15
.LVL13:
.LBE9:
.LBE8:
	.loc 1 78 0
	fcpys	s0, s17
.LBB11:
.LBB10:
	.loc 1 65 0
	fmuls	s15, s15, s16
.LVL14:
	fsts	s15, [sp, #4]
	.loc 1 66 0
	ldr	r3, [sp, #4]	@ float
.LBE10:
.LBE11:
	.loc 1 78 0
	bl	logf
.LVL15:
	fconsts	s15, #128
	fmuls	s0, s0, s15
	fcmpezs	s0
	fmstat
	bmi	.L27
.L22:
.LVL16:
	.loc 1 80 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	fldmfdd	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 4
	ldr	pc, [sp], #4
.L27:
	.cfi_restore_state
	.loc 1 78 0
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	beq	.L22
	bl	sqrtf
.LVL17:
	b	.L22
.L29:
	.align	2
.L28:
	.word	796917760
	.cfi_endproc
.LFE113:
	.size	genGRFN, .-genGRFN
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2019/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2019/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/2019/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 6 "../../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4bf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x3f
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0x6c
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
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x6
	.4byte	0x93
	.4byte	0xba
	.uleb128 0x7
	.4byte	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x88
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x24e
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xa5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xa5
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xa5
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xa5
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xa5
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xa5
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xa5
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x2e6
	.4byte	0x93
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xa5
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xa5
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xaa
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xa5
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xa5
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xa5
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2ed
	.4byte	0x93
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xa5
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xa5
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xaa
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xa5
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xa5
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xa5
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2f4
	.4byte	0x93
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xa5
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xa5
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xaa
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xa5
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xa5
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xaa
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xa5
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xa5
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2fd
	.4byte	0xbf
	.uleb128 0x8
	.byte	0xc
	.byte	0x4
	.2byte	0x3e2
	.4byte	0x288
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x3e4
	.4byte	0xa5
	.byte	0
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x3e5
	.4byte	0xa5
	.byte	0x4
	.uleb128 0x9
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x3e6
	.4byte	0xa5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x3e7
	.4byte	0x25a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF44
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF45
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF46
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3d
	.4byte	0x25
	.byte	0x1
	.4byte	0x2db
	.uleb128 0xd
	.ascii	"rin\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.uleb128 0xd
	.ascii	"max\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x41
	.4byte	0x2db
	.byte	0
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4
	.4byte	0x93
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x307
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x6
	.4byte	0x93
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2d
	.4byte	0x93
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x364
	.uleb128 0x11
	.ascii	"p\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x12
	.ascii	"rin\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x93
	.4byte	.LLST1
	.uleb128 0x12
	.ascii	"rbn\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x93
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x32
	.4byte	0x93
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x2e0
	.byte	0
	.uleb128 0x15
	.4byte	0x2a9
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39c
	.uleb128 0x16
	.4byte	0x2b9
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	0x2c4
	.byte	0x4
	.4byte	0x4f800000
	.uleb128 0x18
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x2e0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48e
	.uleb128 0x11
	.ascii	"m\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0xd
	.ascii	"r1\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x25
	.uleb128 0xd
	.ascii	"r2\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x25
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.uleb128 0x1a
	.4byte	0x2a9
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x4b
	.4byte	0x430
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x16
	.4byte	0x2b9
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	0x2c4
	.byte	0x4
	.4byte	0x4f800000
	.uleb128 0x18
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x2e0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x2a9
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4c
	.4byte	0x46e
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x16
	.4byte	0x2b9
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	0x2c4
	.byte	0x4
	.4byte	0x4f800000
	.uleb128 0x18
	.4byte	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0x2e0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL15
	.4byte	0x49a
	.4byte	0x484
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x25
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x4b0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x51b
	.4byte	0xba
	.uleb128 0x21
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x14d
	.4byte	0x25
	.4byte	0x4b0
	.uleb128 0x22
	.4byte	0x25
	.byte	0
	.uleb128 0x23
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x150
	.4byte	0x25
	.uleb128 0x22
	.4byte	0x25
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0xe
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4f800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4f800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4f800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4f800000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	.LVL9-1-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF31:
	.ascii	"AHB1LPENR\000"
.LASF0:
	.ascii	"float\000"
.LASF21:
	.ascii	"APB1RSTR\000"
.LASF25:
	.ascii	"AHB2ENR\000"
.LASF4:
	.ascii	"short int\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF38:
	.ascii	"BDCR\000"
.LASF41:
	.ascii	"PLLI2SCFGR\000"
.LASF53:
	.ascii	"logf\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF40:
	.ascii	"SSCGR\000"
.LASF50:
	.ascii	"genGRFN\000"
.LASF17:
	.ascii	"AHB1RSTR\000"
.LASF16:
	.ascii	"CFGR\000"
.LASF33:
	.ascii	"AHB3LPENR\000"
.LASF28:
	.ascii	"APB1ENR\000"
.LASF56:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/2019/MSUT/STM32F407/LV8/primjeri/ma-fir-dac"
	.ascii	"-adc-matlab-hp\000"
.LASF46:
	.ascii	"long double\000"
.LASF26:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF58:
	.ascii	"sqrtf\000"
.LASF6:
	.ascii	"long int\000"
.LASF42:
	.ascii	"RCC_TypeDef\000"
.LASF22:
	.ascii	"APB2RSTR\000"
.LASF43:
	.ascii	"RNG_TypeDef\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF29:
	.ascii	"APB2ENR\000"
.LASF2:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"AHB2RSTR\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF35:
	.ascii	"APB1LPENR\000"
.LASF44:
	.ascii	"char\000"
.LASF51:
	.ascii	"sigma\000"
.LASF12:
	.ascii	"int32_t\000"
.LASF55:
	.ascii	"rand.c\000"
.LASF32:
	.ascii	"AHB2LPENR\000"
.LASF20:
	.ascii	"RESERVED0\000"
.LASF23:
	.ascii	"RESERVED1\000"
.LASF27:
	.ascii	"RESERVED2\000"
.LASF30:
	.ascii	"RESERVED3\000"
.LASF34:
	.ascii	"RESERVED4\000"
.LASF37:
	.ascii	"RESERVED5\000"
.LASF39:
	.ascii	"RESERVED6\000"
.LASF45:
	.ascii	"double\000"
.LASF24:
	.ascii	"AHB1ENR\000"
.LASF52:
	.ascii	"genURFN\000"
.LASF47:
	.ascii	"r_val\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF48:
	.ascii	"genRIN\000"
.LASF19:
	.ascii	"AHB3RSTR\000"
.LASF57:
	.ascii	"ITM_RxBuffer\000"
.LASF36:
	.ascii	"APB2LPENR\000"
.LASF49:
	.ascii	"genRBN\000"
.LASF54:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
