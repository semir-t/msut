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
	.loc 1 7 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 9 0
	mov	r0, #364
	.loc 1 7 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 9 0
	bl	initUSART2
.LVL1:
	.loc 1 13 0
	ldr	r7, .L11
	.loc 1 14 0
	ldr	r6, .L11+4
	.loc 1 15 0
	ldr	r5, .L11+8
	.loc 1 8 0
	movs	r4, #0
.LVL2:
.L4:
	.loc 1 13 0 discriminator 1
	mov	r1, r4
	mov	r0, r7
	bl	printUSART2
.LVL3:
	.loc 1 14 0 discriminator 1
	mov	r1, r4
	mov	r0, r6
	bl	printUSART2
.LVL4:
	.loc 1 15 0 discriminator 1
	mov	r1, r4
	mov	r0, r5
	bl	printUSART2
.LVL5:
	.loc 1 16 0 discriminator 1
	mov	r3, r4
	mov	r2, r4
	mov	r1, r4
	ldr	r0, .L11+12
	bl	printUSART2
.LVL6:
.LBB4:
.LBB5:
	.loc 1 25 0 discriminator 1
	ldr	r3, .L11+16
	str	r3, [sp, #4]
	.loc 1 27 0 discriminator 1
	ldr	r3, [sp, #4]
	cbz	r3, .L2
.L3:
	.loc 1 29 0
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 27 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L3
.L2:
.LVL7:
.LBE5:
.LBE4:
	.loc 1 19 0
	adds	r4, r4, #1
.LVL8:
	.loc 1 13 0
	b	.L4
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	10500000
	.cfi_endproc
.LFE113:
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
.LFB114:
	.loc 1 24 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL9:
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 1 25 0
	movw	r3, #10500
	mul	r0, r3, r0
.LVL10:
	str	r0, [sp, #4]
	.loc 1 27 0
	ldr	r3, [sp, #4]
	cbz	r3, .L13
.L15:
	.loc 1 29 0
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 27 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L15
.L13:
	.loc 1 33 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE114:
	.size	delay_soft_ms, .-delay_soft_ms
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> SYS: dec [%d]\012\000"
	.space	2
.LC1:
	.ascii	"-> SYS: hex [0x%x]\012\000"
.LC2:
	.ascii	"-> SYS: bin [%b]\012\000"
	.space	2
.LC3:
	.ascii	"[uint32_t] hex: \033[34m%x\033[39m \011bin: \033[33"
	.ascii	"m%b\033[39m \011dec: \033[35m%d\033[39m\012\012\000"
	.text
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 7 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 8 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 9 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 10 "usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa1c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xc
	.4byte	.LASF130
	.4byte	.LASF131
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.4byte	0x53
	.uleb128 0x5
	.4byte	0x91
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x51b
	.4byte	0x8c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x35
	.4byte	0x91
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x22
	.4byte	0xcc
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd2
	.uleb128 0xa
	.4byte	.LASF123
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x72
	.4byte	0x4c
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x8
	.2byte	0x165
	.4byte	0x7a
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.4byte	0x118
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa8
	.4byte	0xed
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x7
	.byte	0xa9
	.4byte	0x118
	.byte	0
	.uleb128 0xe
	.4byte	0x2c
	.4byte	0x128
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.4byte	0x149
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x7
	.byte	0xa5
	.4byte	0x73
	.byte	0
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x7
	.byte	0xaa
	.4byte	0xf9
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0xab
	.4byte	0x128
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0xaf
	.4byte	0xc1
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x9
	.byte	0x16
	.4byte	0x5e
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x18
	.byte	0x9
	.byte	0x2f
	.4byte	0x1bd
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x9
	.byte	0x31
	.4byte	0x1bd
	.byte	0
	.uleb128 0x13
	.ascii	"_k\000"
	.byte	0x9
	.byte	0x32
	.4byte	0x73
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x9
	.byte	0x32
	.4byte	0x73
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x9
	.byte	0x32
	.4byte	0x73
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x9
	.byte	0x32
	.4byte	0x73
	.byte	0x10
	.uleb128 0x13
	.ascii	"_x\000"
	.byte	0x9
	.byte	0x33
	.4byte	0x1c3
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x16a
	.uleb128 0xe
	.4byte	0x15f
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	0x7a
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x24
	.byte	0x9
	.byte	0x37
	.4byte	0x24c
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x9
	.byte	0x39
	.4byte	0x73
	.byte	0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x9
	.byte	0x3a
	.4byte	0x73
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x9
	.byte	0x3b
	.4byte	0x73
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x9
	.byte	0x3c
	.4byte	0x73
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3d
	.4byte	0x73
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3e
	.4byte	0x73
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3f
	.4byte	0x73
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x9
	.byte	0x40
	.4byte	0x73
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x9
	.byte	0x41
	.4byte	0x73
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x9
	.byte	0x4a
	.4byte	0x28c
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x9
	.byte	0x4b
	.4byte	0x28c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x9
	.byte	0x4c
	.4byte	0x28c
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0x9
	.byte	0x4e
	.4byte	0x15f
	.2byte	0x100
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x9
	.byte	0x51
	.4byte	0x15f
	.2byte	0x104
	.byte	0
	.uleb128 0xe
	.4byte	0xbf
	.4byte	0x29c
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF47
	.2byte	0x190
	.byte	0x9
	.byte	0x5d
	.4byte	0x2da
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x9
	.byte	0x5e
	.4byte	0x2da
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x9
	.byte	0x5f
	.4byte	0x73
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x9
	.byte	0x61
	.4byte	0x2e0
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x9
	.byte	0x62
	.4byte	0x24c
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x29c
	.uleb128 0xe
	.4byte	0x2f0
	.4byte	0x2f0
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x16
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x9
	.byte	0x75
	.4byte	0x31c
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x9
	.byte	0x76
	.4byte	0x31c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x9
	.byte	0x77
	.4byte	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x68
	.byte	0x9
	.byte	0xb5
	.4byte	0x44c
	.uleb128 0x13
	.ascii	"_p\000"
	.byte	0x9
	.byte	0xb6
	.4byte	0x31c
	.byte	0
	.uleb128 0x13
	.ascii	"_r\000"
	.byte	0x9
	.byte	0xb7
	.4byte	0x73
	.byte	0x4
	.uleb128 0x13
	.ascii	"_w\000"
	.byte	0x9
	.byte	0xb8
	.4byte	0x73
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x9
	.byte	0xb9
	.4byte	0x33
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x9
	.byte	0xba
	.4byte	0x33
	.byte	0xe
	.uleb128 0x13
	.ascii	"_bf\000"
	.byte	0x9
	.byte	0xbb
	.4byte	0x2f7
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x9
	.byte	0xbc
	.4byte	0x73
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x9
	.byte	0xc3
	.4byte	0xbf
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x9
	.byte	0xc5
	.4byte	0x5b9
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x9
	.byte	0xc7
	.4byte	0x5e3
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x9
	.byte	0xca
	.4byte	0x607
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x9
	.byte	0xcb
	.4byte	0x621
	.byte	0x2c
	.uleb128 0x13
	.ascii	"_ub\000"
	.byte	0x9
	.byte	0xce
	.4byte	0x2f7
	.byte	0x30
	.uleb128 0x13
	.ascii	"_up\000"
	.byte	0x9
	.byte	0xcf
	.4byte	0x31c
	.byte	0x38
	.uleb128 0x13
	.ascii	"_ur\000"
	.byte	0x9
	.byte	0xd0
	.4byte	0x73
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x9
	.byte	0xd3
	.4byte	0x627
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x9
	.byte	0xd4
	.4byte	0x637
	.byte	0x43
	.uleb128 0x13
	.ascii	"_lb\000"
	.byte	0x9
	.byte	0xd7
	.4byte	0x2f7
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x9
	.byte	0xda
	.4byte	0x73
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x9
	.byte	0xdb
	.4byte	0xd7
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x9
	.byte	0xde
	.4byte	0x46a
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x9
	.byte	0xe2
	.4byte	0x154
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x9
	.byte	0xe4
	.4byte	0x149
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x9
	.byte	0xe5
	.4byte	0x73
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x73
	.4byte	0x46a
	.uleb128 0x18
	.4byte	0x46a
	.uleb128 0x18
	.4byte	0xbf
	.uleb128 0x18
	.4byte	0x5a7
	.uleb128 0x18
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x475
	.uleb128 0x19
	.4byte	0x46a
	.uleb128 0x1a
	.4byte	.LASF70
	.2byte	0x428
	.byte	0x9
	.2byte	0x260
	.4byte	0x5a7
	.uleb128 0x1b
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x262
	.4byte	0x73
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x267
	.4byte	0x68e
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x267
	.4byte	0x68e
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x267
	.4byte	0x68e
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x269
	.4byte	0x73
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x26a
	.4byte	0x870
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x26d
	.4byte	0x73
	.byte	0x30
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x26e
	.4byte	0x885
	.byte	0x34
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x270
	.4byte	0x73
	.byte	0x38
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x272
	.4byte	0x896
	.byte	0x3c
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x275
	.4byte	0x1bd
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x276
	.4byte	0x73
	.byte	0x44
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x277
	.4byte	0x1bd
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x278
	.4byte	0x89c
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x27b
	.4byte	0x73
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x27c
	.4byte	0x5a7
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x29f
	.4byte	0x84e
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF47
	.byte	0x9
	.2byte	0x2a3
	.4byte	0x2da
	.2byte	0x148
	.uleb128 0x1c
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x2a4
	.4byte	0x29c
	.2byte	0x14c
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x2a8
	.4byte	0x8ad
	.2byte	0x2dc
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x2ad
	.4byte	0x653
	.2byte	0x2e0
	.uleb128 0x1c
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x2af
	.4byte	0x8b9
	.2byte	0x2ec
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF92
	.uleb128 0x19
	.4byte	0x5ad
	.uleb128 0x9
	.byte	0x4
	.4byte	0x44c
	.uleb128 0x17
	.4byte	0x73
	.4byte	0x5dd
	.uleb128 0x18
	.4byte	0x46a
	.uleb128 0x18
	.4byte	0xbf
	.uleb128 0x18
	.4byte	0x5dd
	.uleb128 0x18
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5b4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5bf
	.uleb128 0x17
	.4byte	0xe2
	.4byte	0x607
	.uleb128 0x18
	.4byte	0x46a
	.uleb128 0x18
	.4byte	0xbf
	.uleb128 0x18
	.4byte	0xe2
	.uleb128 0x18
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5e9
	.uleb128 0x17
	.4byte	0x73
	.4byte	0x621
	.uleb128 0x18
	.4byte	0x46a
	.uleb128 0x18
	.4byte	0xbf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x60d
	.uleb128 0xe
	.4byte	0x2c
	.4byte	0x637
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x2c
	.4byte	0x647
	.uleb128 0xf
	.4byte	0x7a
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x11f
	.4byte	0x322
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0xc
	.byte	0x9
	.2byte	0x123
	.4byte	0x688
	.uleb128 0x1b
	.4byte	.LASF27
	.byte	0x9
	.2byte	0x125
	.4byte	0x688
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x126
	.4byte	0x73
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x127
	.4byte	0x68e
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x653
	.uleb128 0x9
	.byte	0x4
	.4byte	0x647
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0xe
	.byte	0x9
	.2byte	0x13f
	.4byte	0x6c9
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x140
	.4byte	0x6c9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x141
	.4byte	0x6c9
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x142
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x3a
	.4byte	0x6d9
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0xd0
	.byte	0x9
	.2byte	0x280
	.4byte	0x7da
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x282
	.4byte	0x7a
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x283
	.4byte	0x5a7
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x284
	.4byte	0x7da
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x285
	.4byte	0x1d3
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x286
	.4byte	0x73
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x287
	.4byte	0x6c
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x288
	.4byte	0x694
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x289
	.4byte	0x149
	.byte	0x68
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x28a
	.4byte	0x149
	.byte	0x70
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x28b
	.4byte	0x149
	.byte	0x78
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x28c
	.4byte	0x7ea
	.byte	0x80
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x28d
	.4byte	0x7fa
	.byte	0x88
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x28e
	.4byte	0x73
	.byte	0xa0
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x28f
	.4byte	0x149
	.byte	0xa4
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x290
	.4byte	0x149
	.byte	0xac
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x291
	.4byte	0x149
	.byte	0xb4
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x292
	.4byte	0x149
	.byte	0xbc
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x293
	.4byte	0x149
	.byte	0xc4
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x294
	.4byte	0x73
	.byte	0xcc
	.byte	0
	.uleb128 0xe
	.4byte	0x5ad
	.4byte	0x7ea
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	0x5ad
	.4byte	0x7fa
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0x5ad
	.4byte	0x80a
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.byte	0xf0
	.byte	0x9
	.2byte	0x299
	.4byte	0x82e
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x29c
	.4byte	0x82e
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x29d
	.4byte	0x83e
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.4byte	0x31c
	.4byte	0x83e
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	0x7a
	.4byte	0x84e
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.byte	0xf0
	.byte	0x9
	.2byte	0x27e
	.4byte	0x870
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x295
	.4byte	0x6d9
	.uleb128 0x20
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x29e
	.4byte	0x80a
	.byte	0
	.uleb128 0xe
	.4byte	0x5ad
	.4byte	0x880
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF124
	.uleb128 0x9
	.byte	0x4
	.4byte	0x880
	.uleb128 0x21
	.4byte	0x896
	.uleb128 0x18
	.4byte	0x46a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x88b
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0x21
	.4byte	0x8ad
	.uleb128 0x18
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8b3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8a2
	.uleb128 0xe
	.4byte	0x647
	.4byte	0x8c9
	.uleb128 0xf
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x32e
	.4byte	0x46a
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x32f
	.4byte	0x470
	.uleb128 0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x904
	.uleb128 0x23
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x17
	.4byte	0x91
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x1
	.byte	0x19
	.4byte	0x9c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF134
	.byte	0x1
	.byte	0x6
	.4byte	0x73
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e4
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x1
	.byte	0x8
	.4byte	0x91
	.4byte	.LLST0
	.uleb128 0x27
	.4byte	0x8e1
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x12
	.4byte	0x95b
	.uleb128 0x28
	.4byte	0x8ed
	.4byte	.LLST1
	.uleb128 0x29
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2a
	.4byte	0x8f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL1
	.4byte	0xa09
	.4byte	0x970
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL3
	.4byte	0xa14
	.4byte	0x98a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL4
	.4byte	0xa14
	.4byte	0x9a4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xa14
	.4byte	0x9be
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL6
	.4byte	0xa14
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x8e1
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa09
	.uleb128 0x28
	.4byte	0x8ed
	.4byte	.LLST2
	.uleb128 0x2a
	.4byte	0x8f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xa
	.byte	0xc
	.uleb128 0x2f
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xa
	.byte	0xe
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
	.uleb128 0x23
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE114
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
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF135:
	.ascii	"utmp32\000"
.LASF43:
	.ascii	"_fnargs\000"
.LASF97:
	.ascii	"_rand48\000"
.LASF76:
	.ascii	"_emergency\000"
.LASF88:
	.ascii	"_atexit0\000"
.LASF117:
	.ascii	"_wcrtomb_state\000"
.LASF118:
	.ascii	"_wcsrtombs_state\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF56:
	.ascii	"_lbfsize\000"
.LASF124:
	.ascii	"__locale_t\000"
.LASF13:
	.ascii	"ITM_RxBuffer\000"
.LASF115:
	.ascii	"_mbrtowc_state\000"
.LASF127:
	.ascii	"initUSART2\000"
.LASF33:
	.ascii	"__tm_sec\000"
.LASF17:
	.ascii	"_off_t\000"
.LASF61:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF62:
	.ascii	"_ubuf\000"
.LASF51:
	.ascii	"_base\000"
.LASF35:
	.ascii	"__tm_hour\000"
.LASF20:
	.ascii	"__wch\000"
.LASF91:
	.ascii	"__sf\000"
.LASF42:
	.ascii	"_on_exit_args\000"
.LASF57:
	.ascii	"_cookie\000"
.LASF90:
	.ascii	"__sglue\000"
.LASF132:
	.ascii	"delay_soft_ms\000"
.LASF4:
	.ascii	"long int\000"
.LASF54:
	.ascii	"_flags\000"
.LASF46:
	.ascii	"_is_cxa\000"
.LASF72:
	.ascii	"_stdin\000"
.LASF82:
	.ascii	"_result_k\000"
.LASF8:
	.ascii	"long long int\000"
.LASF86:
	.ascii	"_cvtbuf\000"
.LASF65:
	.ascii	"_offset\000"
.LASF116:
	.ascii	"_mbsrtowcs_state\000"
.LASF114:
	.ascii	"_mbrlen_state\000"
.LASF49:
	.ascii	"_fns\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF29:
	.ascii	"_sign\000"
.LASF125:
	.ascii	"_impure_ptr\000"
.LASF74:
	.ascii	"_stderr\000"
.LASF31:
	.ascii	"_Bigint\000"
.LASF58:
	.ascii	"_read\000"
.LASF32:
	.ascii	"__tm\000"
.LASF21:
	.ascii	"__wchb\000"
.LASF14:
	.ascii	"SystemCoreClock\000"
.LASF73:
	.ascii	"_stdout\000"
.LASF85:
	.ascii	"_cvtlen\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF55:
	.ascii	"_file\000"
.LASF66:
	.ascii	"_data\000"
.LASF95:
	.ascii	"_niobs\000"
.LASF106:
	.ascii	"_rand_next\000"
.LASF112:
	.ascii	"_signal_buf\000"
.LASF103:
	.ascii	"_asctime_buf\000"
.LASF81:
	.ascii	"_result\000"
.LASF129:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF131:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/MSUT/students/examples/LAB02/usart-print\000"
.LASF16:
	.ascii	"_LOCK_T\000"
.LASF130:
	.ascii	"main.c\000"
.LASF87:
	.ascii	"_new\000"
.LASF67:
	.ascii	"_lock\000"
.LASF99:
	.ascii	"_mult\000"
.LASF128:
	.ascii	"printUSART2\000"
.LASF59:
	.ascii	"_write\000"
.LASF38:
	.ascii	"__tm_year\000"
.LASF26:
	.ascii	"__ULong\000"
.LASF120:
	.ascii	"_nextf\000"
.LASF37:
	.ascii	"__tm_mon\000"
.LASF47:
	.ascii	"_atexit\000"
.LASF133:
	.ascii	"time\000"
.LASF79:
	.ascii	"__sdidinit\000"
.LASF105:
	.ascii	"_gamma_signgam\000"
.LASF19:
	.ascii	"wint_t\000"
.LASF84:
	.ascii	"_freelist\000"
.LASF110:
	.ascii	"_wctomb_state\000"
.LASF11:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF96:
	.ascii	"_iobs\000"
.LASF119:
	.ascii	"_h_errno\000"
.LASF25:
	.ascii	"_flock_t\000"
.LASF40:
	.ascii	"__tm_yday\000"
.LASF50:
	.ascii	"__sbuf\000"
.LASF69:
	.ascii	"_flags2\000"
.LASF93:
	.ascii	"__FILE\000"
.LASF24:
	.ascii	"_mbstate_t\000"
.LASF53:
	.ascii	"__sFILE\000"
.LASF68:
	.ascii	"_mbstate\000"
.LASF108:
	.ascii	"_mblen_state\000"
.LASF75:
	.ascii	"_inc\000"
.LASF48:
	.ascii	"_ind\000"
.LASF78:
	.ascii	"_locale\000"
.LASF80:
	.ascii	"__cleanup\000"
.LASF77:
	.ascii	"_unspecified_locale_info\000"
.LASF28:
	.ascii	"_maxwds\000"
.LASF70:
	.ascii	"_reent\000"
.LASF98:
	.ascii	"_seed\000"
.LASF22:
	.ascii	"__count\000"
.LASF123:
	.ascii	"__lock\000"
.LASF23:
	.ascii	"__value\000"
.LASF60:
	.ascii	"_seek\000"
.LASF39:
	.ascii	"__tm_wday\000"
.LASF18:
	.ascii	"_fpos_t\000"
.LASF15:
	.ascii	"long double\000"
.LASF71:
	.ascii	"_errno\000"
.LASF92:
	.ascii	"char\000"
.LASF64:
	.ascii	"_blksize\000"
.LASF52:
	.ascii	"_size\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF27:
	.ascii	"_next\000"
.LASF102:
	.ascii	"_strtok_last\000"
.LASF45:
	.ascii	"_fntypes\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF100:
	.ascii	"_add\000"
.LASF113:
	.ascii	"_getdate_err\000"
.LASF126:
	.ascii	"_global_impure_ptr\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF101:
	.ascii	"_unused_rand\000"
.LASF30:
	.ascii	"_wds\000"
.LASF94:
	.ascii	"_glue\000"
.LASF121:
	.ascii	"_nmalloc\000"
.LASF111:
	.ascii	"_l64a_buf\000"
.LASF89:
	.ascii	"_sig_func\000"
.LASF63:
	.ascii	"_nbuf\000"
.LASF122:
	.ascii	"_unused\000"
.LASF41:
	.ascii	"__tm_isdst\000"
.LASF104:
	.ascii	"_localtime_buf\000"
.LASF34:
	.ascii	"__tm_min\000"
.LASF107:
	.ascii	"_r48\000"
.LASF109:
	.ascii	"_mbtowc_state\000"
.LASF83:
	.ascii	"_p5s\000"
.LASF134:
	.ascii	"main\000"
.LASF36:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
