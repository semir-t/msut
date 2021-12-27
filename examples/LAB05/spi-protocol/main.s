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
	.global	__aeabi_f2d
	.global	__aeabi_ddiv
	.global	__aeabi_d2f
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9, d10, d11}
	.cfi_def_cfa_offset 48
	.cfi_offset 80, -48
	.cfi_offset 81, -44
	.cfi_offset 82, -40
	.cfi_offset 83, -36
	.cfi_offset 84, -32
	.cfi_offset 85, -28
	.cfi_offset 86, -24
	.cfi_offset 87, -20
	.loc 1 11 0
	movs	r0, #45
	.loc 1 8 0
	sub	sp, sp, #32
	.cfi_def_cfa_offset 80
	.loc 1 11 0
	bl	initUSART2
.LVL0:
	.loc 1 12 0
	ldr	r0, .L5
.LBB2:
	.loc 1 22 0
	ldr	r6, .L5+4
	.loc 1 28 0
	vldr.32	s22, .L5+8
	vldr.32	s21, .L5+12
.LBE2:
	.loc 1 12 0
	bl	printUSART2
.LVL1:
	.loc 1 13 0
	ldr	r0, .L5+16
	bl	printUSART2
.LVL2:
	.loc 1 14 0
	ldr	r0, .L5+20
	bl	printUSART2
.LVL3:
	.loc 1 16 0
	bl	initLIS302DL
.LVL4:
	.loc 1 17 0
	mov	r0, #2000
	bl	delay_ms
.LVL5:
.L2:
.LBB3:
	.loc 1 21 0 discriminator 1
	add	r0, sp, #28
	bl	getDataLIS302DL
.LVL6:
	.loc 1 22 0 discriminator 1
	ldrsb	r2, [sp, #29]
	ldrsb	r3, [sp, #30]
	ldrsb	r1, [sp, #28]
	mov	r0, r6
	bl	printUSART2
.LVL7:
	.loc 1 26 0 discriminator 1
	ldrsb	r3, [sp, #30]
	vmov	s18, r3	@ int
	.loc 1 25 0 discriminator 1
	ldrsb	r3, [sp, #29]
	.loc 1 26 0 discriminator 1
	vcvt.f32.s32	s18, s18
	.loc 1 25 0 discriminator 1
	vmov	s17, r3	@ int
	.loc 1 28 0 discriminator 1
	vmul.f32	s19, s18, s18
	.loc 1 25 0 discriminator 1
	vcvt.f32.s32	s17, s17
	.loc 1 28 0 discriminator 1
	vmov.f32	s15, s19
	vfma.f32	s15, s17, s17
	.loc 1 24 0 discriminator 1
	ldrsb	r3, [sp, #28]
	vmov	s16, r3	@ int
	.loc 1 28 0 discriminator 1
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL8:
	vmov	d0, r0, r1
	bl	sqrt
.LVL9:
	.loc 1 24 0 discriminator 1
	vcvt.f32.s32	s16, s16
.LVL10:
	.loc 1 28 0 discriminator 1
	vmov	r2, r3, d0
	vmov	r0, s16
	strd	r2, [sp, #16]
	bl	__aeabi_f2d
.LVL11:
	ldrd	r2, [sp, #16]
	bl	__aeabi_ddiv
.LVL12:
	bl	__aeabi_d2f
.LVL13:
	.loc 1 29 0 discriminator 1
	vmul.f32	s16, s16, s16
.LVL14:
	.loc 1 28 0 discriminator 1
	vmov	s0, r0
	bl	atanf
.LVL15:
	.loc 1 29 0 discriminator 1
	vadd.f32	s15, s19, s16
	.loc 1 28 0 discriminator 1
	vmov.f32	s20, s0
.LVL16:
	.loc 1 29 0 discriminator 1
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL17:
	vmov	d0, r0, r1
	bl	sqrt
.LVL18:
	vmov	r2, r3, d0
	vmov	r0, s17
	strd	r2, [sp, #16]
	bl	__aeabi_f2d
.LVL19:
	ldrd	r2, [sp, #16]
	bl	__aeabi_ddiv
.LVL20:
	bl	__aeabi_d2f
.LVL21:
	.loc 1 30 0 discriminator 1
	vfma.f32	s16, s17, s17
	.loc 1 29 0 discriminator 1
	vmov	s0, r0
	bl	atanf
.LVL22:
	.loc 1 30 0 discriminator 1
	vmov	r0, s16
	.loc 1 29 0 discriminator 1
	vmov.f32	s19, s0
.LVL23:
	.loc 1 30 0 discriminator 1
	bl	__aeabi_f2d
.LVL24:
	vmov	d0, r0, r1
	bl	sqrt
.LVL25:
	vmov	r0, s18
	vstr.64	d0, [sp, #16]
	bl	__aeabi_f2d
.LVL26:
	vldr.64	d0, [sp, #16]
	mov	r2, r0
	mov	r3, r1
	vmov	r0, r1, d0
	bl	__aeabi_ddiv
.LVL27:
	bl	__aeabi_d2f
.LVL28:
	.loc 1 28 0 discriminator 1
	vmul.f32	s20, s20, s22
.LVL29:
	.loc 1 30 0 discriminator 1
	vmov	s0, r0
	bl	atanf
.LVL30:
	.loc 1 33 0 discriminator 1
	vdiv.f32	s15, s20, s21
	.loc 1 30 0 discriminator 1
	vmov.f32	s16, s0
.LVL31:
	.loc 1 33 0 discriminator 1
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL32:
	.loc 1 30 0 discriminator 1
	vmul.f32	s0, s16, s22
	.loc 1 29 0 discriminator 1
	vmul.f32	s19, s19, s22
.LVL33:
	.loc 1 33 0 discriminator 1
	vdiv.f32	s15, s0, s21
	mov	r4, r0
	mov	r5, r1
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL34:
	vdiv.f32	s15, s19, s21
	strd	r0, [sp, #8]
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL35:
	mov	r2, r4
	strd	r0, [sp]
	mov	r3, r5
	ldr	r0, .L5+24
	bl	printUSART2
.LVL36:
	.loc 1 35 0 discriminator 1
	mov	r0, #1000
	bl	delay_ms
.LVL37:
	b	.L2
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	.LC3
	.word	1127481344
	.word	1078523331
	.word	.LC1
	.word	.LC2
	.word	.LC4
.LBE3:
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwwwwwwwwwwwwww\012\000"
.LC1:
	.ascii	"w LIS302 demo\000"
	.space	2
.LC2:
	.ascii	"\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwwwwwwwwww\012\000"
	.space	1
.LC3:
	.ascii	"-> LIS302: \011x[%d] \011y[%d] \011z[%d]\012\000"
	.space	3
.LC4:
	.ascii	"-> LIS302: \011x[%f] \011y[%f] \011z[%f]\012\000"
	.text
.Letext0:
	.file 2 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "delay.h"
	.file 7 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 8 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 9 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 10 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 11 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 12 "lis302dl.h"
	.file 13 "usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb38
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.4byte	0x49
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x5e
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.4byte	0x70
	.uleb128 0x5
	.4byte	0xc4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x51b
	.4byte	0xbf
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1c
	.4byte	0xcf
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x22
	.4byte	0x10a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x110
	.uleb128 0xa
	.4byte	.LASF129
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x2c
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0x72
	.4byte	0x69
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x9
	.2byte	0x165
	.4byte	0x97
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.4byte	0x156
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x8
	.byte	0xa8
	.4byte	0x12b
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x8
	.byte	0xa9
	.4byte	0x156
	.byte	0
	.uleb128 0xe
	.4byte	0x49
	.4byte	0x166
	.uleb128 0xf
	.4byte	0x97
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.4byte	0x187
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x8
	.byte	0xa5
	.4byte	0x90
	.byte	0
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x8
	.byte	0xaa
	.4byte	0x137
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0xab
	.4byte	0x166
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0xaf
	.4byte	0xff
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0xa
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x18
	.byte	0xa
	.byte	0x2f
	.4byte	0x1fb
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0xa
	.byte	0x31
	.4byte	0x1fb
	.byte	0
	.uleb128 0x13
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0x10
	.uleb128 0x13
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x33
	.4byte	0x201
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1a8
	.uleb128 0xe
	.4byte	0x19d
	.4byte	0x211
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x24
	.byte	0xa
	.byte	0x37
	.4byte	0x28a
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xa
	.byte	0x39
	.4byte	0x90
	.byte	0
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xa
	.byte	0x3a
	.4byte	0x90
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0xa
	.byte	0x3b
	.4byte	0x90
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xa
	.byte	0x3c
	.4byte	0x90
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0xa
	.byte	0x3d
	.4byte	0x90
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xa
	.byte	0x3e
	.4byte	0x90
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xa
	.byte	0x3f
	.4byte	0x90
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0xa
	.byte	0x40
	.4byte	0x90
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0xa
	.byte	0x41
	.4byte	0x90
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF48
	.2byte	0x108
	.byte	0xa
	.byte	0x4a
	.4byte	0x2ca
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0xa
	.byte	0x4b
	.4byte	0x2ca
	.byte	0
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0xa
	.byte	0x4c
	.4byte	0x2ca
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0xa
	.byte	0x4e
	.4byte	0x19d
	.2byte	0x100
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xa
	.byte	0x51
	.4byte	0x19d
	.2byte	0x104
	.byte	0
	.uleb128 0xe
	.4byte	0xfd
	.4byte	0x2da
	.uleb128 0xf
	.4byte	0x97
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF53
	.2byte	0x190
	.byte	0xa
	.byte	0x5d
	.4byte	0x318
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0xa
	.byte	0x5e
	.4byte	0x318
	.byte	0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0xa
	.byte	0x5f
	.4byte	0x90
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0xa
	.byte	0x61
	.4byte	0x31e
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0xa
	.byte	0x62
	.4byte	0x28a
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2da
	.uleb128 0xe
	.4byte	0x32e
	.4byte	0x32e
	.uleb128 0xf
	.4byte	0x97
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x334
	.uleb128 0x16
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa
	.byte	0x75
	.4byte	0x35a
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0xa
	.byte	0x76
	.4byte	0x35a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0xa
	.byte	0x77
	.4byte	0x90
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x49
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x68
	.byte	0xa
	.byte	0xb5
	.4byte	0x48a
	.uleb128 0x13
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xb6
	.4byte	0x35a
	.byte	0
	.uleb128 0x13
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xb7
	.4byte	0x90
	.byte	0x4
	.uleb128 0x13
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x90
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0xa
	.byte	0xb9
	.4byte	0x50
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0xa
	.byte	0xba
	.4byte	0x50
	.byte	0xe
	.uleb128 0x13
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0x335
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0xa
	.byte	0xbc
	.4byte	0x90
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xa
	.byte	0xc3
	.4byte	0xfd
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa
	.byte	0xc5
	.4byte	0x5f7
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0xa
	.byte	0xc7
	.4byte	0x621
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0xa
	.byte	0xca
	.4byte	0x645
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xa
	.byte	0xcb
	.4byte	0x65f
	.byte	0x2c
	.uleb128 0x13
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xce
	.4byte	0x335
	.byte	0x30
	.uleb128 0x13
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xcf
	.4byte	0x35a
	.byte	0x38
	.uleb128 0x13
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xd0
	.4byte	0x90
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xa
	.byte	0xd3
	.4byte	0x665
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xa
	.byte	0xd4
	.4byte	0x675
	.byte	0x43
	.uleb128 0x13
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xd7
	.4byte	0x335
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xa
	.byte	0xda
	.4byte	0x90
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xa
	.byte	0xdb
	.4byte	0x115
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xa
	.byte	0xde
	.4byte	0x4a8
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xa
	.byte	0xe2
	.4byte	0x192
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xa
	.byte	0xe4
	.4byte	0x187
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0xa
	.byte	0xe5
	.4byte	0x90
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x90
	.4byte	0x4a8
	.uleb128 0x18
	.4byte	0x4a8
	.uleb128 0x18
	.4byte	0xfd
	.uleb128 0x18
	.4byte	0x5e5
	.uleb128 0x18
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4b3
	.uleb128 0x19
	.4byte	0x4a8
	.uleb128 0x1a
	.4byte	.LASF76
	.2byte	0x428
	.byte	0xa
	.2byte	0x260
	.4byte	0x5e5
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0xa
	.2byte	0x262
	.4byte	0x90
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0xa
	.2byte	0x267
	.4byte	0x6cc
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x267
	.4byte	0x6cc
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x267
	.4byte	0x6cc
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0xa
	.2byte	0x269
	.4byte	0x90
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0xa
	.2byte	0x26a
	.4byte	0x8ae
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0xa
	.2byte	0x26d
	.4byte	0x90
	.byte	0x30
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0xa
	.2byte	0x26e
	.4byte	0x8c3
	.byte	0x34
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x270
	.4byte	0x90
	.byte	0x38
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x272
	.4byte	0x8d4
	.byte	0x3c
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x275
	.4byte	0x1fb
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0xa
	.2byte	0x276
	.4byte	0x90
	.byte	0x44
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x277
	.4byte	0x1fb
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x278
	.4byte	0x8da
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0xa
	.2byte	0x27b
	.4byte	0x90
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF92
	.byte	0xa
	.2byte	0x27c
	.4byte	0x5e5
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x29f
	.4byte	0x88c
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0xa
	.2byte	0x2a3
	.4byte	0x318
	.2byte	0x148
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x2da
	.2byte	0x14c
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x2a8
	.4byte	0x8eb
	.2byte	0x2dc
	.uleb128 0x1c
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x2ad
	.4byte	0x691
	.2byte	0x2e0
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x2af
	.4byte	0x8f7
	.2byte	0x2ec
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF98
	.uleb128 0x19
	.4byte	0x5eb
	.uleb128 0x9
	.byte	0x4
	.4byte	0x48a
	.uleb128 0x17
	.4byte	0x90
	.4byte	0x61b
	.uleb128 0x18
	.4byte	0x4a8
	.uleb128 0x18
	.4byte	0xfd
	.uleb128 0x18
	.4byte	0x61b
	.uleb128 0x18
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5f2
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5fd
	.uleb128 0x17
	.4byte	0x120
	.4byte	0x645
	.uleb128 0x18
	.4byte	0x4a8
	.uleb128 0x18
	.4byte	0xfd
	.uleb128 0x18
	.4byte	0x120
	.uleb128 0x18
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x627
	.uleb128 0x17
	.4byte	0x90
	.4byte	0x65f
	.uleb128 0x18
	.4byte	0x4a8
	.uleb128 0x18
	.4byte	0xfd
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x64b
	.uleb128 0xe
	.4byte	0x49
	.4byte	0x675
	.uleb128 0xf
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x49
	.4byte	0x685
	.uleb128 0xf
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x11f
	.4byte	0x360
	.uleb128 0x1d
	.4byte	.LASF100
	.byte	0xc
	.byte	0xa
	.2byte	0x123
	.4byte	0x6c6
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0xa
	.2byte	0x125
	.4byte	0x6c6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x126
	.4byte	0x90
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x127
	.4byte	0x6cc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x691
	.uleb128 0x9
	.byte	0x4
	.4byte	0x685
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0xe
	.byte	0xa
	.2byte	0x13f
	.4byte	0x707
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x140
	.4byte	0x707
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x141
	.4byte	0x707
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x142
	.4byte	0x57
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x57
	.4byte	0x717
	.uleb128 0xf
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0xd0
	.byte	0xa
	.2byte	0x280
	.4byte	0x818
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x282
	.4byte	0x97
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x283
	.4byte	0x5e5
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x284
	.4byte	0x818
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x285
	.4byte	0x211
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x286
	.4byte	0x90
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x287
	.4byte	0x89
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x288
	.4byte	0x6d2
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x289
	.4byte	0x187
	.byte	0x68
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x28a
	.4byte	0x187
	.byte	0x70
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x28b
	.4byte	0x187
	.byte	0x78
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x28c
	.4byte	0x828
	.byte	0x80
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x28d
	.4byte	0x838
	.byte	0x88
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x28e
	.4byte	0x90
	.byte	0xa0
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x28f
	.4byte	0x187
	.byte	0xa4
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x290
	.4byte	0x187
	.byte	0xac
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x291
	.4byte	0x187
	.byte	0xb4
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x292
	.4byte	0x187
	.byte	0xbc
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x293
	.4byte	0x187
	.byte	0xc4
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x294
	.4byte	0x90
	.byte	0xcc
	.byte	0
	.uleb128 0xe
	.4byte	0x5eb
	.4byte	0x828
	.uleb128 0xf
	.4byte	0x97
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	0x5eb
	.4byte	0x838
	.uleb128 0xf
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0x5eb
	.4byte	0x848
	.uleb128 0xf
	.4byte	0x97
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.byte	0xf0
	.byte	0xa
	.2byte	0x299
	.4byte	0x86c
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x29c
	.4byte	0x86c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x29d
	.4byte	0x87c
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.4byte	0x35a
	.4byte	0x87c
	.uleb128 0xf
	.4byte	0x97
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	0x97
	.4byte	0x88c
	.uleb128 0xf
	.4byte	0x97
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.byte	0xf0
	.byte	0xa
	.2byte	0x27e
	.4byte	0x8ae
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x295
	.4byte	0x717
	.uleb128 0x20
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x29e
	.4byte	0x848
	.byte	0
	.uleb128 0xe
	.4byte	0x5eb
	.4byte	0x8be
	.uleb128 0xf
	.4byte	0x97
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8be
	.uleb128 0x21
	.4byte	0x8d4
	.uleb128 0x18
	.4byte	0x4a8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8c9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0x21
	.4byte	0x8eb
	.uleb128 0x18
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8e0
	.uleb128 0xe
	.4byte	0x685
	.4byte	0x907
	.uleb128 0xf
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x32e
	.4byte	0x4a8
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x32f
	.4byte	0x4ae
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF133
	.uleb128 0x22
	.4byte	.LASF151
	.byte	0x5
	.byte	0x1
	.4byte	0x2c
	.byte	0xb
	.2byte	0x282
	.4byte	0x951
	.uleb128 0x23
	.4byte	.LASF134
	.sleb128 -1
	.uleb128 0x24
	.4byte	.LASF135
	.byte	0
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF137
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x28d
	.4byte	0x926
	.uleb128 0x25
	.4byte	.LASF152
	.byte	0x1
	.byte	0x7
	.4byte	0xa9
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadd
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x1
	.byte	0x9
	.4byte	0xadd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.4byte	.Ldebug_ranges0+0
	.4byte	0xa69
	.uleb128 0x28
	.ascii	"ax\000"
	.byte	0x1
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x29
	.ascii	"ay\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.uleb128 0x29
	.ascii	"az\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.uleb128 0x28
	.ascii	"rho\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x28
	.ascii	"phi\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x2a
	.4byte	.LASF140
	.byte	0x1
	.byte	0x1e
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0xaed
	.4byte	0x9f6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xaf8
	.4byte	0xa0a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL9
	.4byte	0xb03
	.uleb128 0x2d
	.4byte	.LVL15
	.4byte	0xb0e
	.uleb128 0x2d
	.4byte	.LVL18
	.4byte	0xb03
	.uleb128 0x2d
	.4byte	.LVL22
	.4byte	0xb0e
	.uleb128 0x2d
	.4byte	.LVL25
	.4byte	0xb03
	.uleb128 0x2d
	.4byte	.LVL30
	.4byte	0xb0e
	.uleb128 0x2b
	.4byte	.LVL36
	.4byte	0xaf8
	.4byte	0xa57
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0xb1a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL0
	.4byte	0xb25
	.4byte	0xa7d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL1
	.4byte	0xaf8
	.4byte	0xa94
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0xaf8
	.4byte	0xaab
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL3
	.4byte	0xaf8
	.4byte	0xac2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL4
	.4byte	0xb30
	.uleb128 0x2e
	.4byte	.LVL5
	.4byte	0xb1a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x9e
	.4byte	0xaed
	.uleb128 0xf
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xc
	.byte	0x17
	.uleb128 0x2f
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xd
	.byte	0x10
	.uleb128 0x2f
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xb
	.byte	0x70
	.uleb128 0x30
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x158
	.uleb128 0x2f
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x6
	.byte	0xb
	.uleb128 0x2f
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xd
	.byte	0xe
	.uleb128 0x2f
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0x16
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2116
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
.LLST0:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43340000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4048f5c3
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL17-1
	.4byte	.LVL29
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43340000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4048f5c3
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43340000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4048f5c3
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL24-1
	.4byte	.LVL33
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43340000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4048f5c3
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43340000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4048f5c3
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL32-1
	.4byte	.LFE113
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x43340000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x4048f5c3
	.byte	0x1b
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
.LASF50:
	.ascii	"_dso_handle\000"
.LASF5:
	.ascii	"short int\000"
.LASF49:
	.ascii	"_fnargs\000"
.LASF103:
	.ascii	"_rand48\000"
.LASF136:
	.ascii	"__fdlibm_xopen\000"
.LASF82:
	.ascii	"_emergency\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF94:
	.ascii	"_atexit0\000"
.LASF123:
	.ascii	"_wcrtomb_state\000"
.LASF124:
	.ascii	"_wcsrtombs_state\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF137:
	.ascii	"__fdlibm_posix\000"
.LASF62:
	.ascii	"_lbfsize\000"
.LASF130:
	.ascii	"__locale_t\000"
.LASF2:
	.ascii	"__int8_t\000"
.LASF18:
	.ascii	"ITM_RxBuffer\000"
.LASF138:
	.ascii	"__fdlib_version\000"
.LASF121:
	.ascii	"_mbrtowc_state\000"
.LASF141:
	.ascii	"getDataLIS302DL\000"
.LASF146:
	.ascii	"initUSART2\000"
.LASF39:
	.ascii	"__tm_sec\000"
.LASF23:
	.ascii	"_off_t\000"
.LASF67:
	.ascii	"_close\000"
.LASF1:
	.ascii	"signed char\000"
.LASF150:
	.ascii	"/mnt/ssd/Dropbox/Fakultet/MSUT/students/examples/LA"
	.ascii	"B05/spi-protocol\000"
.LASF68:
	.ascii	"_ubuf\000"
.LASF57:
	.ascii	"_base\000"
.LASF41:
	.ascii	"__tm_hour\000"
.LASF26:
	.ascii	"__wch\000"
.LASF97:
	.ascii	"__sf\000"
.LASF48:
	.ascii	"_on_exit_args\000"
.LASF63:
	.ascii	"_cookie\000"
.LASF96:
	.ascii	"__sglue\000"
.LASF8:
	.ascii	"long int\000"
.LASF60:
	.ascii	"_flags\000"
.LASF52:
	.ascii	"_is_cxa\000"
.LASF78:
	.ascii	"_stdin\000"
.LASF135:
	.ascii	"__fdlibm_svid\000"
.LASF88:
	.ascii	"_result_k\000"
.LASF20:
	.ascii	"g_tim7_val\000"
.LASF11:
	.ascii	"long long int\000"
.LASF133:
	.ascii	"double\000"
.LASF92:
	.ascii	"_cvtbuf\000"
.LASF71:
	.ascii	"_offset\000"
.LASF122:
	.ascii	"_mbsrtowcs_state\000"
.LASF120:
	.ascii	"_mbrlen_state\000"
.LASF55:
	.ascii	"_fns\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF35:
	.ascii	"_sign\000"
.LASF131:
	.ascii	"_impure_ptr\000"
.LASF80:
	.ascii	"_stderr\000"
.LASF37:
	.ascii	"_Bigint\000"
.LASF64:
	.ascii	"_read\000"
.LASF38:
	.ascii	"__tm\000"
.LASF27:
	.ascii	"__wchb\000"
.LASF19:
	.ascii	"SystemCoreClock\000"
.LASF79:
	.ascii	"_stdout\000"
.LASF91:
	.ascii	"_cvtlen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF61:
	.ascii	"_file\000"
.LASF72:
	.ascii	"_data\000"
.LASF101:
	.ascii	"_niobs\000"
.LASF112:
	.ascii	"_rand_next\000"
.LASF118:
	.ascii	"_signal_buf\000"
.LASF109:
	.ascii	"_asctime_buf\000"
.LASF77:
	.ascii	"_errno\000"
.LASF87:
	.ascii	"_result\000"
.LASF148:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF22:
	.ascii	"_LOCK_T\000"
.LASF149:
	.ascii	"main.c\000"
.LASF93:
	.ascii	"_new\000"
.LASF73:
	.ascii	"_lock\000"
.LASF105:
	.ascii	"_mult\000"
.LASF142:
	.ascii	"printUSART2\000"
.LASF65:
	.ascii	"_write\000"
.LASF44:
	.ascii	"__tm_year\000"
.LASF127:
	.ascii	"_nmalloc\000"
.LASF47:
	.ascii	"__tm_isdst\000"
.LASF126:
	.ascii	"_nextf\000"
.LASF43:
	.ascii	"__tm_mon\000"
.LASF53:
	.ascii	"_atexit\000"
.LASF85:
	.ascii	"__sdidinit\000"
.LASF111:
	.ascii	"_gamma_signgam\000"
.LASF25:
	.ascii	"wint_t\000"
.LASF0:
	.ascii	"float\000"
.LASF90:
	.ascii	"_freelist\000"
.LASF116:
	.ascii	"_wctomb_state\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF102:
	.ascii	"_iobs\000"
.LASF125:
	.ascii	"_h_errno\000"
.LASF31:
	.ascii	"_flock_t\000"
.LASF46:
	.ascii	"__tm_yday\000"
.LASF56:
	.ascii	"__sbuf\000"
.LASF75:
	.ascii	"_flags2\000"
.LASF99:
	.ascii	"__FILE\000"
.LASF30:
	.ascii	"_mbstate_t\000"
.LASF59:
	.ascii	"__sFILE\000"
.LASF74:
	.ascii	"_mbstate\000"
.LASF114:
	.ascii	"_mblen_state\000"
.LASF81:
	.ascii	"_inc\000"
.LASF54:
	.ascii	"_ind\000"
.LASF84:
	.ascii	"_locale\000"
.LASF86:
	.ascii	"__cleanup\000"
.LASF83:
	.ascii	"_unspecified_locale_info\000"
.LASF34:
	.ascii	"_maxwds\000"
.LASF76:
	.ascii	"_reent\000"
.LASF104:
	.ascii	"_seed\000"
.LASF145:
	.ascii	"delay_ms\000"
.LASF28:
	.ascii	"__count\000"
.LASF129:
	.ascii	"__lock\000"
.LASF29:
	.ascii	"__value\000"
.LASF66:
	.ascii	"_seek\000"
.LASF45:
	.ascii	"__tm_wday\000"
.LASF24:
	.ascii	"_fpos_t\000"
.LASF21:
	.ascii	"long double\000"
.LASF139:
	.ascii	"accel_data\000"
.LASF98:
	.ascii	"char\000"
.LASF70:
	.ascii	"_blksize\000"
.LASF58:
	.ascii	"_size\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF144:
	.ascii	"atanf\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF33:
	.ascii	"_next\000"
.LASF108:
	.ascii	"_strtok_last\000"
.LASF51:
	.ascii	"_fntypes\000"
.LASF147:
	.ascii	"initLIS302DL\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF106:
	.ascii	"_add\000"
.LASF32:
	.ascii	"__ULong\000"
.LASF14:
	.ascii	"int8_t\000"
.LASF119:
	.ascii	"_getdate_err\000"
.LASF151:
	.ascii	"__fdlibm_version\000"
.LASF132:
	.ascii	"_global_impure_ptr\000"
.LASF134:
	.ascii	"__fdlibm_ieee\000"
.LASF107:
	.ascii	"_unused_rand\000"
.LASF36:
	.ascii	"_wds\000"
.LASF100:
	.ascii	"_glue\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF117:
	.ascii	"_l64a_buf\000"
.LASF95:
	.ascii	"_sig_func\000"
.LASF143:
	.ascii	"sqrt\000"
.LASF69:
	.ascii	"_nbuf\000"
.LASF128:
	.ascii	"_unused\000"
.LASF140:
	.ascii	"theta\000"
.LASF110:
	.ascii	"_localtime_buf\000"
.LASF40:
	.ascii	"__tm_min\000"
.LASF113:
	.ascii	"_r48\000"
.LASF115:
	.ascii	"_mbtowc_state\000"
.LASF89:
	.ascii	"_p5s\000"
.LASF152:
	.ascii	"main\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF42:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
