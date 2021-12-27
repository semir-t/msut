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
	.file	"rand.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	genRIN
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
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
	ldr	r1, .L12
	.loc 1 9 0
	ldr	r3, .L12+4
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
	tst	r2, #64
	.loc 1 15 0
	ldr	r2, [r3, #4]
	.loc 1 13 0
	beq	.L3
.L11:
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
	.loc 1 13 0
	ldr	r2, [r3, #4]
	tst	r2, #64
	.loc 1 15 0
	ldr	r2, [r3, #4]
	.loc 1 13 0
	bne	.L11
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
	ldr	r0, [r3, #8]
.LVL0:
	.loc 1 38 0
	ldr	r2, [r3]
	.loc 1 39 0
	ldr	r1, .L12
	.loc 1 38 0
	bic	r2, r2, #4
	str	r2, [r3]
	.loc 1 39 0
	ldr	r3, [r1, #52]
	bic	r3, r3, #64
	str	r3, [r1, #52]
	.loc 1 42 0
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073887232
	.word	1342572544
	.cfi_endproc
.LFE110:
	.size	genRIN, .-genRIN
	.align	1
	.p2align 2,,3
	.global	genRBN
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
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
	.loc 1 48 0
	bl	genRIN
.LVL2:
	.loc 1 49 0
	vldr.32	s15, .L16
	vmul.f32	s0, s0, s15
.LVL3:
	vcvt.u32.f32	s0, s0
	.loc 1 58 0
	vmov	r3, s0	@ int
	cmp	r0, r3
	ite	cs
	movcs	r0, #0
.LVL4:
	movcc	r0, #1
	pop	{r3, pc}
.L17:
	.align	2
.L16:
	.word	1333788672
	.cfi_endproc
.LFE111:
	.size	genRBN, .-genRBN
	.align	1
	.p2align 2,,3
	.global	genURFN
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
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
	vmov	s15, r0	@ int
	.loc 1 65 0
	vldr.32	s14, .L20
	.loc 1 63 0
	vcvt.f32.u32	s15, s15
.LVL6:
	.loc 1 65 0
	vmul.f32	s15, s15, s14
.LVL7:
	vstr.32	s15, [sp, #4]
	.loc 1 66 0
	vldr.32	s0, [sp, #4]
	.loc 1 67 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L21:
	.align	2
.L20:
	.word	796917760
	.cfi_endproc
.LFE112:
	.size	genURFN, .-genURFN
	.align	1
	.p2align 2,,3
	.global	genGRFN
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
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
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
.LBB6:
.LBB7:
	.loc 1 63 0
	bl	genRIN
.LVL9:
	vmov	s15, r0	@ int
	.loc 1 65 0
	vldr.32	s13, .L26
	.loc 1 63 0
	vcvt.f32.u32	s14, s15
.LVL10:
	.loc 1 65 0
	vmul.f32	s14, s14, s13
.LVL11:
	vstr.32	s14, [sp, #4]
	.loc 1 66 0
	vldr.32	s0, [sp, #4]
.LVL12:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 1 63 0
	bl	genRIN
.LVL13:
	vmov	s15, r0	@ int
	vcvt.f32.u32	s15, s15
.LVL14:
	.loc 1 65 0
	vmul.f32	s15, s15, s13
.LVL15:
	vstr.32	s15, [sp]
	.loc 1 66 0
	ldr	r3, [sp]	@ float
.LVL16:
.LBE9:
.LBE8:
	.loc 1 78 0
	bl	logf
.LVL17:
	vmov.f32	s15, #-2.0e+0
	vmul.f32	s0, s0, s15
	vcmp.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L25
.LVL18:
	.loc 1 80 0
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L25:
	.cfi_restore_state
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	.loc 1 78 0
	b	sqrtf
.LVL19:
.L27:
	.align	2
.L26:
	.word	796917760
	.cfi_endproc
.LFE113:
	.size	genGRFN, .-genGRFN
.Letext0:
	.file 2 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.file 7 "delay.h"
	.file 8 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 9 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 10 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 11 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 12 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xcef
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0xc
	.4byte	.LASF172
	.4byte	.LASF173
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
	.byte	0x4d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
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
	.uleb128 0x5
	.4byte	0x88
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.4byte	0x61
	.uleb128 0x5
	.4byte	0x98
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x51b
	.4byte	0x93
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x35
	.4byte	0x98
	.uleb128 0x8
	.4byte	0x98
	.4byte	0xcf
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x25e
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xa3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xa3
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xa3
	.byte	0x8
	.uleb128 0xb
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xa3
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xa3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xa3
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xa3
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x2e6
	.4byte	0x98
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xa3
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xa3
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x2e9
	.4byte	0xbf
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xa3
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xa3
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xa3
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2ed
	.4byte	0x98
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xa3
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xa3
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2f0
	.4byte	0xbf
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xa3
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xa3
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xa3
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2f4
	.4byte	0x98
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xa3
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xa3
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2f7
	.4byte	0xbf
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xa3
	.byte	0x70
	.uleb128 0xb
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xa3
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xbf
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xa3
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xa3
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2fd
	.4byte	0xcf
	.uleb128 0xa
	.byte	0xc
	.byte	0x6
	.2byte	0x3e2
	.4byte	0x298
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x3e4
	.4byte	0xa3
	.byte	0
	.uleb128 0xb
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x3e5
	.4byte	0xa3
	.byte	0x4
	.uleb128 0xb
	.ascii	"DR\000"
	.byte	0x6
	.2byte	0x3e6
	.4byte	0xa3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x3e7
	.4byte	0x26a
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x7
	.byte	0x1c
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF46
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x22
	.4byte	0x2c1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c7
	.uleb128 0xf
	.4byte	.LASF154
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x72
	.4byte	0x5a
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0xa
	.2byte	0x165
	.4byte	0x2c
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.4byte	0x30d
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x9
	.byte	0xa8
	.4byte	0x2e2
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x9
	.byte	0xa9
	.4byte	0x30d
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x31d
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x9
	.byte	0xa3
	.4byte	0x33e
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x9
	.byte	0xa5
	.4byte	0x81
	.byte	0
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x9
	.byte	0xaa
	.4byte	0x2ee
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x9
	.byte	0xab
	.4byte	0x31d
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x9
	.byte	0xaf
	.4byte	0x2b6
	.uleb128 0x14
	.byte	0x4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x35c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF57
	.uleb128 0x15
	.4byte	0x35c
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x18
	.byte	0xb
	.byte	0x2f
	.4byte	0x3c6
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0xb
	.byte	0x31
	.4byte	0x3c6
	.byte	0
	.uleb128 0x17
	.ascii	"_k\000"
	.byte	0xb
	.byte	0x32
	.4byte	0x81
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0xb
	.byte	0x32
	.4byte	0x81
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0xb
	.byte	0x32
	.4byte	0x81
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0xb
	.byte	0x32
	.4byte	0x81
	.byte	0x10
	.uleb128 0x17
	.ascii	"_x\000"
	.byte	0xb
	.byte	0x33
	.4byte	0x3cc
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x373
	.uleb128 0x8
	.4byte	0x368
	.4byte	0x3dc
	.uleb128 0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x24
	.byte	0xb
	.byte	0x37
	.4byte	0x455
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0xb
	.byte	0x39
	.4byte	0x81
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0xb
	.byte	0x3a
	.4byte	0x81
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xb
	.byte	0x3b
	.4byte	0x81
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0xb
	.byte	0x3c
	.4byte	0x81
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0xb
	.byte	0x3d
	.4byte	0x81
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0xb
	.byte	0x3e
	.4byte	0x81
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0xb
	.byte	0x3f
	.4byte	0x81
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0xb
	.byte	0x40
	.4byte	0x81
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0xb
	.byte	0x41
	.4byte	0x81
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF74
	.2byte	0x108
	.byte	0xb
	.byte	0x4a
	.4byte	0x495
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0xb
	.byte	0x4b
	.4byte	0x495
	.byte	0
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0xb
	.byte	0x4c
	.4byte	0x495
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0xb
	.byte	0x4e
	.4byte	0x368
	.2byte	0x100
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0xb
	.byte	0x51
	.4byte	0x368
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x354
	.4byte	0x4a5
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF79
	.2byte	0x190
	.byte	0xb
	.byte	0x5d
	.4byte	0x4e3
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0xb
	.byte	0x5e
	.4byte	0x4e3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0xb
	.byte	0x5f
	.4byte	0x81
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0xb
	.byte	0x61
	.4byte	0x4e9
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0xb
	.byte	0x62
	.4byte	0x455
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x8
	.4byte	0x4f9
	.4byte	0x4f9
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4ff
	.uleb128 0x1a
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x8
	.byte	0xb
	.byte	0x75
	.4byte	0x525
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0xb
	.byte	0x76
	.4byte	0x525
	.byte	0
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0xb
	.byte	0x77
	.4byte	0x81
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x68
	.byte	0xb
	.byte	0xb5
	.4byte	0x655
	.uleb128 0x17
	.ascii	"_p\000"
	.byte	0xb
	.byte	0xb6
	.4byte	0x525
	.byte	0
	.uleb128 0x17
	.ascii	"_r\000"
	.byte	0xb
	.byte	0xb7
	.4byte	0x81
	.byte	0x4
	.uleb128 0x17
	.ascii	"_w\000"
	.byte	0xb
	.byte	0xb8
	.4byte	0x81
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0xb
	.byte	0xb9
	.4byte	0x41
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0xb
	.byte	0xba
	.4byte	0x41
	.byte	0xe
	.uleb128 0x17
	.ascii	"_bf\000"
	.byte	0xb
	.byte	0xbb
	.4byte	0x500
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0xb
	.byte	0xbc
	.4byte	0x81
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0xb
	.byte	0xc3
	.4byte	0x354
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0xb
	.byte	0xc5
	.4byte	0x7b0
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0xb
	.byte	0xc7
	.4byte	0x7da
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0xb
	.byte	0xca
	.4byte	0x7fe
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0xb
	.byte	0xcb
	.4byte	0x818
	.byte	0x2c
	.uleb128 0x17
	.ascii	"_ub\000"
	.byte	0xb
	.byte	0xce
	.4byte	0x500
	.byte	0x30
	.uleb128 0x17
	.ascii	"_up\000"
	.byte	0xb
	.byte	0xcf
	.4byte	0x525
	.byte	0x38
	.uleb128 0x17
	.ascii	"_ur\000"
	.byte	0xb
	.byte	0xd0
	.4byte	0x81
	.byte	0x3c
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0xb
	.byte	0xd3
	.4byte	0x81e
	.byte	0x40
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xb
	.byte	0xd4
	.4byte	0x82e
	.byte	0x43
	.uleb128 0x17
	.ascii	"_lb\000"
	.byte	0xb
	.byte	0xd7
	.4byte	0x500
	.byte	0x44
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0xb
	.byte	0xda
	.4byte	0x81
	.byte	0x4c
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xb
	.byte	0xdb
	.4byte	0x2cc
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0xb
	.byte	0xde
	.4byte	0x673
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0xb
	.byte	0xe2
	.4byte	0x349
	.byte	0x58
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0xb
	.byte	0xe4
	.4byte	0x33e
	.byte	0x5c
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xb
	.byte	0xe5
	.4byte	0x81
	.byte	0x64
	.byte	0
	.uleb128 0x1b
	.4byte	0x81
	.4byte	0x673
	.uleb128 0x1c
	.4byte	0x673
	.uleb128 0x1c
	.4byte	0x354
	.uleb128 0x1c
	.4byte	0x356
	.uleb128 0x1c
	.4byte	0x81
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x15
	.4byte	0x673
	.uleb128 0x1d
	.4byte	.LASF102
	.2byte	0x428
	.byte	0xb
	.2byte	0x260
	.4byte	0x7b0
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x262
	.4byte	0x81
	.byte	0
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x267
	.4byte	0x885
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x267
	.4byte	0x885
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x267
	.4byte	0x885
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0xb
	.2byte	0x269
	.4byte	0x81
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x26a
	.4byte	0xa67
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x26d
	.4byte	0x81
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x26e
	.4byte	0xa7c
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x270
	.4byte	0x81
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x272
	.4byte	0xa8d
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x275
	.4byte	0x3c6
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x276
	.4byte	0x81
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x277
	.4byte	0x3c6
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x278
	.4byte	0xa93
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x27b
	.4byte	0x81
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x27c
	.4byte	0x356
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x29f
	.4byte	0xa45
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x2a3
	.4byte	0x4e3
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x2a4
	.4byte	0x4a5
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x2a8
	.4byte	0xaa4
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x2ad
	.4byte	0x84a
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x2af
	.4byte	0xab0
	.2byte	0x2ec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x655
	.uleb128 0x1b
	.4byte	0x81
	.4byte	0x7d4
	.uleb128 0x1c
	.4byte	0x673
	.uleb128 0x1c
	.4byte	0x354
	.uleb128 0x1c
	.4byte	0x7d4
	.uleb128 0x1c
	.4byte	0x81
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x363
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7b6
	.uleb128 0x1b
	.4byte	0x2d7
	.4byte	0x7fe
	.uleb128 0x1c
	.4byte	0x673
	.uleb128 0x1c
	.4byte	0x354
	.uleb128 0x1c
	.4byte	0x2d7
	.uleb128 0x1c
	.4byte	0x81
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7e0
	.uleb128 0x1b
	.4byte	0x81
	.4byte	0x818
	.uleb128 0x1c
	.4byte	0x673
	.uleb128 0x1c
	.4byte	0x354
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x804
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x82e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x83e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x11f
	.4byte	0x52b
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0xc
	.byte	0xb
	.2byte	0x123
	.4byte	0x87f
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xb
	.2byte	0x125
	.4byte	0x87f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x126
	.4byte	0x81
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x127
	.4byte	0x885
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x84a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x83e
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0xe
	.byte	0xb
	.2byte	0x13f
	.4byte	0x8c0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x140
	.4byte	0x8c0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x141
	.4byte	0x8c0
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x142
	.4byte	0x48
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x8d0
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xd0
	.byte	0xb
	.2byte	0x280
	.4byte	0x9d1
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x282
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x283
	.4byte	0x356
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x284
	.4byte	0x9d1
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x285
	.4byte	0x3dc
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x286
	.4byte	0x81
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x287
	.4byte	0x7a
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x288
	.4byte	0x88b
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x289
	.4byte	0x33e
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x28a
	.4byte	0x33e
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x28b
	.4byte	0x33e
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x28c
	.4byte	0x9e1
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x28d
	.4byte	0x9f1
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x28e
	.4byte	0x81
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x28f
	.4byte	0x33e
	.byte	0xa4
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xb
	.2byte	0x290
	.4byte	0x33e
	.byte	0xac
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xb
	.2byte	0x291
	.4byte	0x33e
	.byte	0xb4
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xb
	.2byte	0x292
	.4byte	0x33e
	.byte	0xbc
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xb
	.2byte	0x293
	.4byte	0x33e
	.byte	0xc4
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xb
	.2byte	0x294
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x35c
	.4byte	0x9e1
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x35c
	.4byte	0x9f1
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x35c
	.4byte	0xa01
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.byte	0xf0
	.byte	0xb
	.2byte	0x299
	.4byte	0xa25
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xb
	.2byte	0x29c
	.4byte	0xa25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x29d
	.4byte	0xa35
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x525
	.4byte	0xa35
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xa45
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xb
	.2byte	0x27e
	.4byte	0xa67
	.uleb128 0x21
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x295
	.4byte	0x8d0
	.uleb128 0x21
	.4byte	.LASF153
	.byte	0xb
	.2byte	0x29e
	.4byte	0xa01
	.byte	0
	.uleb128 0x8
	.4byte	0x35c
	.4byte	0xa77
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF155
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa77
	.uleb128 0x22
	.4byte	0xa8d
	.uleb128 0x1c
	.4byte	0x673
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa82
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0x22
	.4byte	0xaa4
	.uleb128 0x1c
	.4byte	0x81
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xaaa
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa99
	.uleb128 0x8
	.4byte	0x83e
	.4byte	0xac0
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x32e
	.4byte	0x673
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x32f
	.4byte	0x679
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF158
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0x5
	.byte	0x1
	.4byte	0x33
	.byte	0xc
	.2byte	0x282
	.4byte	0xb0f
	.uleb128 0x24
	.4byte	.LASF159
	.sleb128 -1
	.uleb128 0x25
	.4byte	.LASF160
	.byte	0
	.uleb128 0x25
	.4byte	.LASF161
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF162
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF163
	.byte	0xc
	.2byte	0x28d
	.4byte	0xae4
	.uleb128 0x26
	.4byte	.LASF166
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbec
	.uleb128 0x27
	.ascii	"m\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x29
	.ascii	"r1\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x25
	.uleb128 0x29
	.ascii	"r2\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x25
	.uleb128 0x29
	.ascii	"r\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x25
	.uleb128 0x2a
	.4byte	0xbec
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x4b
	.4byte	0xba3
	.uleb128 0x2b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2c
	.4byte	0xcb5
	.uleb128 0x2c
	.4byte	0xcbe
	.uleb128 0x2c
	.4byte	0xcc8
	.uleb128 0x2d
	.4byte	.LVL9
	.4byte	0xc7b
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	0xbec
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x4c
	.4byte	0xbd9
	.uleb128 0x2b
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2c
	.4byte	0xcb5
	.uleb128 0x2c
	.4byte	0xcbe
	.uleb128 0x2c
	.4byte	0xcc8
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0xc7b
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL17
	.4byte	0xcda
	.uleb128 0x2e
	.4byte	.LVL19
	.4byte	0xce6
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF175
	.byte	0x1
	.byte	0x3d
	.4byte	0x25
	.byte	0x1
	.4byte	0xc1e
	.uleb128 0x29
	.ascii	"rin\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.uleb128 0x29
	.ascii	"max\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.uleb128 0x30
	.4byte	.LASF165
	.byte	0x1
	.byte	0x41
	.4byte	0xad8
	.byte	0
	.uleb128 0x26
	.4byte	.LASF167
	.byte	0x1
	.byte	0x2d
	.4byte	0x98
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc7b
	.uleb128 0x27
	.ascii	"p\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x31
	.ascii	"rin\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x98
	.4byte	.LLST1
	.uleb128 0x31
	.ascii	"rbn\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x98
	.4byte	.LLST2
	.uleb128 0x32
	.4byte	.LASF165
	.byte	0x1
	.byte	0x32
	.4byte	0x98
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	.LVL2
	.4byte	0xc7b
	.byte	0
	.uleb128 0x26
	.4byte	.LASF168
	.byte	0x1
	.byte	0x4
	.4byte	0x98
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca2
	.uleb128 0x33
	.4byte	.LASF165
	.byte	0x1
	.byte	0x6
	.4byte	0x98
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x34
	.4byte	0xbec
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcda
	.uleb128 0x35
	.4byte	0xbfc
	.4byte	.LLST4
	.uleb128 0x36
	.4byte	0xc07
	.byte	0x4
	.4byte	0x4f800000
	.uleb128 0x37
	.4byte	0xc12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.4byte	.LVL5
	.4byte	0xc7b
	.byte	0
	.uleb128 0x38
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xc
	.2byte	0x16b
	.uleb128 0x38
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xc
	.2byte	0x16e
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
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL12-.Ltext0
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
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	.LVL17-1-.Ltext0
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
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
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
.LASF76:
	.ascii	"_dso_handle\000"
.LASF36:
	.ascii	"APB1LPENR\000"
.LASF85:
	.ascii	"__sFILE\000"
.LASF75:
	.ascii	"_fnargs\000"
.LASF128:
	.ascii	"_rand48\000"
.LASF161:
	.ascii	"__fdlibm_xopen\000"
.LASF108:
	.ascii	"_emergency\000"
.LASF120:
	.ascii	"_atexit0\000"
.LASF148:
	.ascii	"_wcrtomb_state\000"
.LASF149:
	.ascii	"_wcsrtombs_state\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF162:
	.ascii	"__fdlibm_posix\000"
.LASF88:
	.ascii	"_lbfsize\000"
.LASF155:
	.ascii	"__locale_t\000"
.LASF170:
	.ascii	"sqrtf\000"
.LASF14:
	.ascii	"ITM_RxBuffer\000"
.LASF163:
	.ascii	"__fdlib_version\000"
.LASF146:
	.ascii	"_mbrtowc_state\000"
.LASF32:
	.ascii	"AHB1LPENR\000"
.LASF141:
	.ascii	"_wctomb_state\000"
.LASF65:
	.ascii	"__tm_sec\000"
.LASF48:
	.ascii	"_off_t\000"
.LASF93:
	.ascii	"_close\000"
.LASF2:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"AHB1RSTR\000"
.LASF94:
	.ascii	"_ubuf\000"
.LASF83:
	.ascii	"_base\000"
.LASF67:
	.ascii	"__tm_hour\000"
.LASF51:
	.ascii	"__wch\000"
.LASF123:
	.ascii	"__sf\000"
.LASF74:
	.ascii	"_on_exit_args\000"
.LASF27:
	.ascii	"AHB3ENR\000"
.LASF89:
	.ascii	"_cookie\000"
.LASF122:
	.ascii	"__sglue\000"
.LASF6:
	.ascii	"long int\000"
.LASF23:
	.ascii	"APB2RSTR\000"
.LASF86:
	.ascii	"_flags\000"
.LASF78:
	.ascii	"_is_cxa\000"
.LASF104:
	.ascii	"_stdin\000"
.LASF160:
	.ascii	"__fdlibm_svid\000"
.LASF114:
	.ascii	"_result_k\000"
.LASF45:
	.ascii	"g_tim7_val\000"
.LASF10:
	.ascii	"long long int\000"
.LASF158:
	.ascii	"double\000"
.LASF118:
	.ascii	"_cvtbuf\000"
.LASF97:
	.ascii	"_offset\000"
.LASF16:
	.ascii	"PLLCFGR\000"
.LASF147:
	.ascii	"_mbsrtowcs_state\000"
.LASF145:
	.ascii	"_mbrlen_state\000"
.LASF169:
	.ascii	"logf\000"
.LASF81:
	.ascii	"_fns\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF61:
	.ascii	"_sign\000"
.LASF156:
	.ascii	"_impure_ptr\000"
.LASF106:
	.ascii	"_stderr\000"
.LASF63:
	.ascii	"_Bigint\000"
.LASF90:
	.ascii	"_read\000"
.LASF64:
	.ascii	"__tm\000"
.LASF52:
	.ascii	"__wchb\000"
.LASF17:
	.ascii	"CFGR\000"
.LASF105:
	.ascii	"_stdout\000"
.LASF117:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF87:
	.ascii	"_file\000"
.LASF43:
	.ascii	"RCC_TypeDef\000"
.LASF98:
	.ascii	"_data\000"
.LASF126:
	.ascii	"_niobs\000"
.LASF164:
	.ascii	"sigma\000"
.LASF137:
	.ascii	"_rand_next\000"
.LASF42:
	.ascii	"PLLI2SCFGR\000"
.LASF143:
	.ascii	"_signal_buf\000"
.LASF134:
	.ascii	"_asctime_buf\000"
.LASF20:
	.ascii	"AHB3RSTR\000"
.LASF113:
	.ascii	"_result\000"
.LASF171:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF151:
	.ascii	"_nextf\000"
.LASF47:
	.ascii	"_LOCK_T\000"
.LASF119:
	.ascii	"_new\000"
.LASF37:
	.ascii	"APB2LPENR\000"
.LASF99:
	.ascii	"_lock\000"
.LASF130:
	.ascii	"_mult\000"
.LASF91:
	.ascii	"_write\000"
.LASF70:
	.ascii	"__tm_year\000"
.LASF166:
	.ascii	"genGRFN\000"
.LASF58:
	.ascii	"__ULong\000"
.LASF62:
	.ascii	"_wds\000"
.LASF33:
	.ascii	"AHB2LPENR\000"
.LASF69:
	.ascii	"__tm_mon\000"
.LASF79:
	.ascii	"_atexit\000"
.LASF111:
	.ascii	"__sdidinit\000"
.LASF136:
	.ascii	"_gamma_signgam\000"
.LASF22:
	.ascii	"APB1RSTR\000"
.LASF173:
	.ascii	"/mnt/ssd/Dropbox/Fakultet/MSUT/students/examples/LA"
	.ascii	"B05/ma-fir-dac-adc-matlab\000"
.LASF50:
	.ascii	"wint_t\000"
.LASF165:
	.ascii	"r_val\000"
.LASF0:
	.ascii	"float\000"
.LASF116:
	.ascii	"_freelist\000"
.LASF21:
	.ascii	"RESERVED0\000"
.LASF24:
	.ascii	"RESERVED1\000"
.LASF28:
	.ascii	"RESERVED2\000"
.LASF31:
	.ascii	"RESERVED3\000"
.LASF35:
	.ascii	"RESERVED4\000"
.LASF38:
	.ascii	"RESERVED5\000"
.LASF40:
	.ascii	"RESERVED6\000"
.LASF168:
	.ascii	"genRIN\000"
.LASF139:
	.ascii	"_mblen_state\000"
.LASF12:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF127:
	.ascii	"_iobs\000"
.LASF150:
	.ascii	"_h_errno\000"
.LASF56:
	.ascii	"_flock_t\000"
.LASF72:
	.ascii	"__tm_yday\000"
.LASF82:
	.ascii	"__sbuf\000"
.LASF101:
	.ascii	"_flags2\000"
.LASF34:
	.ascii	"AHB3LPENR\000"
.LASF124:
	.ascii	"__FILE\000"
.LASF55:
	.ascii	"_mbstate_t\000"
.LASF100:
	.ascii	"_mbstate\000"
.LASF44:
	.ascii	"RNG_TypeDef\000"
.LASF107:
	.ascii	"_inc\000"
.LASF80:
	.ascii	"_ind\000"
.LASF30:
	.ascii	"APB2ENR\000"
.LASF167:
	.ascii	"genRBN\000"
.LASF110:
	.ascii	"_locale\000"
.LASF109:
	.ascii	"_unspecified_locale_info\000"
.LASF60:
	.ascii	"_maxwds\000"
.LASF102:
	.ascii	"_reent\000"
.LASF129:
	.ascii	"_seed\000"
.LASF53:
	.ascii	"__count\000"
.LASF154:
	.ascii	"__lock\000"
.LASF54:
	.ascii	"__value\000"
.LASF92:
	.ascii	"_seek\000"
.LASF71:
	.ascii	"__tm_wday\000"
.LASF49:
	.ascii	"_fpos_t\000"
.LASF46:
	.ascii	"long double\000"
.LASF103:
	.ascii	"_errno\000"
.LASF57:
	.ascii	"char\000"
.LASF96:
	.ascii	"_blksize\000"
.LASF84:
	.ascii	"_size\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"AHB2RSTR\000"
.LASF4:
	.ascii	"short int\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF59:
	.ascii	"_next\000"
.LASF133:
	.ascii	"_strtok_last\000"
.LASF29:
	.ascii	"APB1ENR\000"
.LASF77:
	.ascii	"_fntypes\000"
.LASF26:
	.ascii	"AHB2ENR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF131:
	.ascii	"_add\000"
.LASF144:
	.ascii	"_getdate_err\000"
.LASF174:
	.ascii	"__fdlibm_version\000"
.LASF15:
	.ascii	"SystemCoreClock\000"
.LASF157:
	.ascii	"_global_impure_ptr\000"
.LASF159:
	.ascii	"__fdlibm_ieee\000"
.LASF41:
	.ascii	"SSCGR\000"
.LASF132:
	.ascii	"_unused_rand\000"
.LASF112:
	.ascii	"__cleanup\000"
.LASF39:
	.ascii	"BDCR\000"
.LASF125:
	.ascii	"_glue\000"
.LASF172:
	.ascii	"rand.c\000"
.LASF152:
	.ascii	"_nmalloc\000"
.LASF142:
	.ascii	"_l64a_buf\000"
.LASF121:
	.ascii	"_sig_func\000"
.LASF95:
	.ascii	"_nbuf\000"
.LASF153:
	.ascii	"_unused\000"
.LASF25:
	.ascii	"AHB1ENR\000"
.LASF73:
	.ascii	"__tm_isdst\000"
.LASF135:
	.ascii	"_localtime_buf\000"
.LASF66:
	.ascii	"__tm_min\000"
.LASF175:
	.ascii	"genURFN\000"
.LASF138:
	.ascii	"_r48\000"
.LASF140:
	.ascii	"_mbtowc_state\000"
.LASF115:
	.ascii	"_p5s\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF68:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
