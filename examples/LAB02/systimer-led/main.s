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
	.loc 1 6 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
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
	.loc 1 9 0
	mov	r0, #364
	bl	initUSART2
.LVL1:
	.loc 1 10 0
	ldr	r0, .L12
	.loc 1 17 0
	ldr	r4, .L12+4
	.loc 1 10 0
	bl	printUSART2
.LVL2:
	.loc 1 11 0
	ldr	r0, .L12+8
	bl	printUSART2
.LVL3:
	.loc 1 12 0
	ldr	r0, .L12
	bl	printUSART2
.LVL4:
	.loc 1 16 0
	ldr	r2, .L12+12
	ldr	r3, [r2, #48]
	orr	r3, r3, #8
	str	r3, [r2, #48]
	.loc 1 17 0
	ldr	r3, [r4]
	orr	r3, r3, #1426063360
	str	r3, [r4]
	.loc 1 18 0
	ldr	r3, [r4, #4]
	str	r3, [r4, #4]
	.loc 1 19 0
	ldr	r3, [r4, #8]
	.loc 1 21 0
	movs	r2, #0
	.loc 1 19 0
	orr	r3, r3, #-16777216
	str	r3, [r4, #8]
	.loc 1 21 0
	str	r2, [r4, #20]
	.loc 1 22 0
	bl	initSYSTIMER
.LVL5:
	.loc 1 23 0
	movs	r0, #100
	bl	delay_ms
.LVL6:
	.loc 1 25 0
	bl	getSYSTIMER
.LVL7:
	mov	r8, r0
.LVL8:
	.loc 1 26 0
	bl	getSYSTIMER
.LVL9:
	mov	r7, r0
.LVL10:
	.loc 1 27 0
	bl	getSYSTIMER
.LVL11:
	mov	r6, r0
.LVL12:
	.loc 1 28 0
	bl	getSYSTIMER
.LVL13:
	mov	r5, r0
.LVL14:
.L2:
	.loc 1 31 0
	movs	r1, #100
	mov	r0, r8
	bl	chk4TimeoutSYSTIMER
.LVL15:
	cbz	r0, .L9
.L3:
	.loc 1 37 0
	movs	r1, #150
	mov	r0, r7
	bl	chk4TimeoutSYSTIMER
.LVL16:
	cbz	r0, .L10
.L4:
	.loc 1 43 0
	movs	r1, #250
	mov	r0, r6
	bl	chk4TimeoutSYSTIMER
.LVL17:
	cbz	r0, .L11
.L5:
	.loc 1 49 0
	mov	r1, #430
	mov	r0, r5
	bl	chk4TimeoutSYSTIMER
.LVL18:
	cmp	r0, #0
	bne	.L2
	.loc 1 51 0
	ldr	r3, [r4, #20]
	eor	r3, r3, #32768
	str	r3, [r4, #20]
	.loc 1 52 0
	bl	getSYSTIMER
.LVL19:
	.loc 1 31 0
	movs	r1, #100
	.loc 1 52 0
	mov	r5, r0
.LVL20:
	.loc 1 31 0
	mov	r0, r8
.LVL21:
	bl	chk4TimeoutSYSTIMER
.LVL22:
	cmp	r0, #0
	bne	.L3
.L9:
	.loc 1 33 0
	ldr	r3, [r4, #20]
	eor	r3, r3, #4096
	str	r3, [r4, #20]
	.loc 1 34 0
	bl	getSYSTIMER
.LVL23:
	.loc 1 37 0
	movs	r1, #150
	.loc 1 34 0
	mov	r8, r0
.LVL24:
	.loc 1 37 0
	mov	r0, r7
.LVL25:
	bl	chk4TimeoutSYSTIMER
.LVL26:
	cmp	r0, #0
	bne	.L4
.L10:
	.loc 1 39 0
	ldr	r3, [r4, #20]
	eor	r3, r3, #8192
	str	r3, [r4, #20]
	.loc 1 40 0
	bl	getSYSTIMER
.LVL27:
	.loc 1 43 0
	movs	r1, #250
	.loc 1 40 0
	mov	r7, r0
.LVL28:
	.loc 1 43 0
	mov	r0, r6
.LVL29:
	bl	chk4TimeoutSYSTIMER
.LVL30:
	cmp	r0, #0
	bne	.L5
.L11:
	.loc 1 45 0
	ldr	r3, [r4, #20]
	eor	r3, r3, #16384
	str	r3, [r4, #20]
	.loc 1 46 0
	bl	getSYSTIMER
.LVL31:
	mov	r6, r0
.LVL32:
	b	.L5
.L13:
	.align	2
.L12:
	.word	.LC0
	.word	1073875968
	.word	.LC1
	.word	1073887232
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
	.ascii	"wwwwww\012\000"
.LC1:
	.ascii	"w Starting systimter-task test app...\012\000"
	.text
.Letext0:
	.file 2 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../../../sdk/core_cm4.h"
	.file 5 "../../../sdk/system_stm32f4xx.h"
	.file 6 "../../../sdk/stm32f4xx.h"
	.file 7 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 8 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 9 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 10 "/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 11 "usart.h"
	.file 12 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd76
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0xc
	.4byte	.LASF176
	.4byte	.LASF177
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.4byte	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x24
	.4byte	0x3a
	.uleb128 0x5
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.4byte	0x5e
	.uleb128 0x5
	.4byte	0xac
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x51b
	.4byte	0xa7
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x35
	.4byte	0xac
	.uleb128 0x8
	.4byte	0xac
	.4byte	0xe3
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x16f
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x290
	.4byte	0xb7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x291
	.4byte	0xb7
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x292
	.4byte	0xb7
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x293
	.4byte	0xb7
	.byte	0xc
	.uleb128 0xc
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xb7
	.byte	0x10
	.uleb128 0xc
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xb7
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x296
	.4byte	0x97
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x297
	.4byte	0x97
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x298
	.4byte	0xb7
	.byte	0x1c
	.uleb128 0xc
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x17f
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xb7
	.4byte	0x17f
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x16f
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x29a
	.4byte	0xe3
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x31f
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xb7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xb7
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xb7
	.byte	0x8
	.uleb128 0xc
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xb7
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xb7
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xb7
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xb7
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xac
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xb7
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xb7
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2e9
	.4byte	0xd3
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xb7
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xb7
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xb7
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xac
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xb7
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xb7
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2f0
	.4byte	0xd3
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xb7
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xb7
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xb7
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xac
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xb7
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xb7
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2f7
	.4byte	0xd3
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xb7
	.byte	0x70
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xb7
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xd3
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xb7
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xb7
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2fd
	.4byte	0x190
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF53
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x22
	.4byte	0x33f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x345
	.uleb128 0x10
	.4byte	.LASF161
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x8
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x72
	.4byte	0x57
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x165
	.4byte	0x85
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.4byte	0x38b
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa8
	.4byte	0x360
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa9
	.4byte	0x38b
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x39b
	.uleb128 0x9
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.4byte	0x3bc
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x8
	.byte	0xa5
	.4byte	0x7e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x8
	.byte	0xaa
	.4byte	0x36c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0xab
	.4byte	0x39b
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x8
	.byte	0xaf
	.4byte	0x334
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0x16
	.4byte	0x69
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x18
	.byte	0xa
	.byte	0x2f
	.4byte	0x430
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0xa
	.byte	0x31
	.4byte	0x430
	.byte	0
	.uleb128 0x16
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x32
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0xa
	.byte	0x32
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xa
	.byte	0x32
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0xa
	.byte	0x32
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x16
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x33
	.4byte	0x436
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x8
	.4byte	0x3d2
	.4byte	0x446
	.uleb128 0x9
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x24
	.byte	0xa
	.byte	0x37
	.4byte	0x4bf
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xa
	.byte	0x39
	.4byte	0x7e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0xa
	.byte	0x3a
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3b
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xa
	.byte	0x3c
	.4byte	0x7e
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0xa
	.byte	0x3d
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0xa
	.byte	0x3e
	.4byte	0x7e
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0xa
	.byte	0x3f
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0xa
	.byte	0x40
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0xa
	.byte	0x41
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF80
	.2byte	0x108
	.byte	0xa
	.byte	0x4a
	.4byte	0x4ff
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0xa
	.byte	0x4b
	.4byte	0x4ff
	.byte	0
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0xa
	.byte	0x4c
	.4byte	0x4ff
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0xa
	.byte	0x4e
	.4byte	0x3d2
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0xa
	.byte	0x51
	.4byte	0x3d2
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x332
	.4byte	0x50f
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF85
	.2byte	0x190
	.byte	0xa
	.byte	0x5d
	.4byte	0x54d
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0xa
	.byte	0x5e
	.4byte	0x54d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0xa
	.byte	0x5f
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0xa
	.byte	0x61
	.4byte	0x553
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0xa
	.byte	0x62
	.4byte	0x4bf
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x8
	.4byte	0x563
	.4byte	0x563
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x569
	.uleb128 0x19
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x8
	.byte	0xa
	.byte	0x75
	.4byte	0x58f
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0xa
	.byte	0x76
	.4byte	0x58f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0xa
	.byte	0x77
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x68
	.byte	0xa
	.byte	0xb5
	.4byte	0x6bf
	.uleb128 0x16
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xb6
	.4byte	0x58f
	.byte	0
	.uleb128 0x16
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xb7
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x16
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xa
	.byte	0xb9
	.4byte	0x33
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xa
	.byte	0xba
	.4byte	0x33
	.byte	0xe
	.uleb128 0x16
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0x56a
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xa
	.byte	0xbc
	.4byte	0x7e
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xa
	.byte	0xc3
	.4byte	0x332
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xa
	.byte	0xc5
	.4byte	0x82c
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xa
	.byte	0xc7
	.4byte	0x856
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xa
	.byte	0xca
	.4byte	0x87a
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xa
	.byte	0xcb
	.4byte	0x894
	.byte	0x2c
	.uleb128 0x16
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xce
	.4byte	0x56a
	.byte	0x30
	.uleb128 0x16
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xcf
	.4byte	0x58f
	.byte	0x38
	.uleb128 0x16
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xd0
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xa
	.byte	0xd3
	.4byte	0x89a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xa
	.byte	0xd4
	.4byte	0x8aa
	.byte	0x43
	.uleb128 0x16
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xd7
	.4byte	0x56a
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xa
	.byte	0xda
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xa
	.byte	0xdb
	.4byte	0x34a
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa
	.byte	0xde
	.4byte	0x6dd
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xa
	.byte	0xe2
	.4byte	0x3c7
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xa
	.byte	0xe4
	.4byte	0x3bc
	.byte	0x5c
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xa
	.byte	0xe5
	.4byte	0x7e
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x7e
	.4byte	0x6dd
	.uleb128 0x1b
	.4byte	0x6dd
	.uleb128 0x1b
	.4byte	0x332
	.uleb128 0x1b
	.4byte	0x81a
	.uleb128 0x1b
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6e8
	.uleb128 0x1c
	.4byte	0x6dd
	.uleb128 0x1d
	.4byte	.LASF108
	.2byte	0x428
	.byte	0xa
	.2byte	0x260
	.4byte	0x81a
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x262
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x267
	.4byte	0x901
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x267
	.4byte	0x901
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x267
	.4byte	0x901
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x269
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x26a
	.4byte	0xae3
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x26d
	.4byte	0x7e
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x26e
	.4byte	0xaf8
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x270
	.4byte	0x7e
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x272
	.4byte	0xb09
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x275
	.4byte	0x430
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x276
	.4byte	0x7e
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x277
	.4byte	0x430
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x278
	.4byte	0xb0f
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x27b
	.4byte	0x7e
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x27c
	.4byte	0x81a
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x29f
	.4byte	0xac1
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x2a3
	.4byte	0x54d
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x50f
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x2a8
	.4byte	0xb20
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x2ad
	.4byte	0x8c6
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x2af
	.4byte	0xb2c
	.2byte	0x2ec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x820
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF130
	.uleb128 0x1c
	.4byte	0x820
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6bf
	.uleb128 0x1a
	.4byte	0x7e
	.4byte	0x850
	.uleb128 0x1b
	.4byte	0x6dd
	.uleb128 0x1b
	.4byte	0x332
	.uleb128 0x1b
	.4byte	0x850
	.uleb128 0x1b
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x827
	.uleb128 0xf
	.byte	0x4
	.4byte	0x832
	.uleb128 0x1a
	.4byte	0x355
	.4byte	0x87a
	.uleb128 0x1b
	.4byte	0x6dd
	.uleb128 0x1b
	.4byte	0x332
	.uleb128 0x1b
	.4byte	0x355
	.uleb128 0x1b
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x85c
	.uleb128 0x1a
	.4byte	0x7e
	.4byte	0x894
	.uleb128 0x1b
	.4byte	0x6dd
	.uleb128 0x1b
	.4byte	0x332
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x880
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x8aa
	.uleb128 0x9
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x8ba
	.uleb128 0x9
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x11f
	.4byte	0x595
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0xc
	.byte	0xa
	.2byte	0x123
	.4byte	0x8fb
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xa
	.2byte	0x125
	.4byte	0x8fb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x126
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x127
	.4byte	0x901
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8c6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8ba
	.uleb128 0x1f
	.4byte	.LASF135
	.byte	0xe
	.byte	0xa
	.2byte	0x13f
	.4byte	0x93c
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x140
	.4byte	0x93c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x141
	.4byte	0x93c
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x142
	.4byte	0x45
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x94c
	.uleb128 0x9
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xd0
	.byte	0xa
	.2byte	0x280
	.4byte	0xa4d
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x282
	.4byte	0x85
	.byte	0
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x283
	.4byte	0x81a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x284
	.4byte	0xa4d
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x285
	.4byte	0x446
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x286
	.4byte	0x7e
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x287
	.4byte	0x77
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x288
	.4byte	0x907
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x289
	.4byte	0x3bc
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x28a
	.4byte	0x3bc
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x28b
	.4byte	0x3bc
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x28c
	.4byte	0xa5d
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x28d
	.4byte	0xa6d
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x28e
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x28f
	.4byte	0x3bc
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x290
	.4byte	0x3bc
	.byte	0xac
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x291
	.4byte	0x3bc
	.byte	0xb4
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x292
	.4byte	0x3bc
	.byte	0xbc
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x293
	.4byte	0x3bc
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x294
	.4byte	0x7e
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x820
	.4byte	0xa5d
	.uleb128 0x9
	.4byte	0x85
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x820
	.4byte	0xa6d
	.uleb128 0x9
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x820
	.4byte	0xa7d
	.uleb128 0x9
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.byte	0xf0
	.byte	0xa
	.2byte	0x299
	.4byte	0xaa1
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x29c
	.4byte	0xaa1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x29d
	.4byte	0xab1
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x58f
	.4byte	0xab1
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x85
	.4byte	0xac1
	.uleb128 0x9
	.4byte	0x85
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xa
	.2byte	0x27e
	.4byte	0xae3
	.uleb128 0x21
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x295
	.4byte	0x94c
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x29e
	.4byte	0xa7d
	.byte	0
	.uleb128 0x8
	.4byte	0x820
	.4byte	0xaf3
	.uleb128 0x9
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.uleb128 0xf
	.byte	0x4
	.4byte	0xaf3
	.uleb128 0x22
	.4byte	0xb09
	.uleb128 0x1b
	.4byte	0x6dd
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xafe
	.uleb128 0xf
	.byte	0x4
	.4byte	0x430
	.uleb128 0x22
	.4byte	0xb20
	.uleb128 0x1b
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb26
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb15
	.uleb128 0x8
	.4byte	0x8ba
	.4byte	0xb3c
	.uleb128 0x9
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x32e
	.4byte	0x6dd
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x32f
	.4byte	0x6e3
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x1
	.byte	0x5
	.4byte	0x7e
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd37
	.uleb128 0x24
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x7
	.4byte	0xac
	.byte	0
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.byte	0x7
	.4byte	0xac
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x19
	.4byte	0xac
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LASF166
	.byte	0x1
	.byte	0x1a
	.4byte	0xac
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LASF167
	.byte	0x1
	.byte	0x1b
	.4byte	0xac
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LASF168
	.byte	0x1
	.byte	0x1c
	.4byte	0xac
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	.LVL1
	.4byte	0xd37
	.4byte	0xbd5
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL2
	.4byte	0xd42
	.4byte	0xbec
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL3
	.4byte	0xd42
	.4byte	0xc03
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x27
	.4byte	.LVL4
	.4byte	0xd42
	.4byte	0xc1a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL5
	.4byte	0xd4d
	.uleb128 0x27
	.4byte	.LVL6
	.4byte	0xd58
	.4byte	0xc37
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xd63
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xd63
	.uleb128 0x29
	.4byte	.LVL11
	.4byte	0xd63
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0xd63
	.uleb128 0x27
	.4byte	.LVL15
	.4byte	0xd6e
	.4byte	0xc75
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL16
	.4byte	0xd6e
	.4byte	0xc8f
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0xd6e
	.4byte	0xca9
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xfa
	.byte	0
	.uleb128 0x27
	.4byte	.LVL18
	.4byte	0xd6e
	.4byte	0xcc4
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ae
	.byte	0
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0xd63
	.uleb128 0x27
	.4byte	.LVL22
	.4byte	0xd6e
	.4byte	0xce7
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x29
	.4byte	.LVL23
	.4byte	0xd63
	.uleb128 0x27
	.4byte	.LVL26
	.4byte	0xd6e
	.4byte	0xd0a
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.uleb128 0x29
	.4byte	.LVL27
	.4byte	0xd63
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0xd6e
	.4byte	0xd2d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xfa
	.byte	0
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0xd63
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xb
	.byte	0xc
	.uleb128 0x2a
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xb
	.byte	0xe
	.uleb128 0x2a
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xc
	.byte	0x11
	.uleb128 0x2a
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xc
	.byte	0x9
	.uleb128 0x2a
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xc
	.byte	0x12
	.uleb128 0x2a
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xc
	.byte	0x13
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
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-1
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x55
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
.LASF82:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF20:
	.ascii	"PUPDR\000"
.LASF23:
	.ascii	"LCKR\000"
.LASF91:
	.ascii	"__sFILE\000"
.LASF81:
	.ascii	"_fnargs\000"
.LASF135:
	.ascii	"_rand48\000"
.LASF114:
	.ascii	"_emergency\000"
.LASF18:
	.ascii	"OTYPER\000"
.LASF126:
	.ascii	"_atexit0\000"
.LASF155:
	.ascii	"_wcrtomb_state\000"
.LASF156:
	.ascii	"_wcsrtombs_state\000"
.LASF17:
	.ascii	"MODER\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF94:
	.ascii	"_lbfsize\000"
.LASF162:
	.ascii	"__locale_t\000"
.LASF15:
	.ascii	"ITM_RxBuffer\000"
.LASF153:
	.ascii	"_mbrtowc_state\000"
.LASF41:
	.ascii	"AHB1LPENR\000"
.LASF169:
	.ascii	"initUSART2\000"
.LASF148:
	.ascii	"_wctomb_state\000"
.LASF71:
	.ascii	"__tm_sec\000"
.LASF55:
	.ascii	"_off_t\000"
.LASF99:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF27:
	.ascii	"AHB1RSTR\000"
.LASF100:
	.ascii	"_ubuf\000"
.LASF89:
	.ascii	"_base\000"
.LASF73:
	.ascii	"__tm_hour\000"
.LASF58:
	.ascii	"__wch\000"
.LASF129:
	.ascii	"__sf\000"
.LASF80:
	.ascii	"_on_exit_args\000"
.LASF36:
	.ascii	"AHB3ENR\000"
.LASF95:
	.ascii	"_cookie\000"
.LASF128:
	.ascii	"__sglue\000"
.LASF6:
	.ascii	"long int\000"
.LASF32:
	.ascii	"APB2RSTR\000"
.LASF45:
	.ascii	"APB1LPENR\000"
.LASF92:
	.ascii	"_flags\000"
.LASF84:
	.ascii	"_is_cxa\000"
.LASF110:
	.ascii	"_stdin\000"
.LASF120:
	.ascii	"_result_k\000"
.LASF9:
	.ascii	"long long int\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF167:
	.ascii	"led3_time\000"
.LASF124:
	.ascii	"_cvtbuf\000"
.LASF103:
	.ascii	"_offset\000"
.LASF25:
	.ascii	"PLLCFGR\000"
.LASF154:
	.ascii	"_mbsrtowcs_state\000"
.LASF152:
	.ascii	"_mbrlen_state\000"
.LASF87:
	.ascii	"_fns\000"
.LASF19:
	.ascii	"OSPEEDR\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF67:
	.ascii	"_sign\000"
.LASF163:
	.ascii	"_impure_ptr\000"
.LASF112:
	.ascii	"_stderr\000"
.LASF69:
	.ascii	"_Bigint\000"
.LASF96:
	.ascii	"_read\000"
.LASF70:
	.ascii	"__tm\000"
.LASF59:
	.ascii	"__wchb\000"
.LASF26:
	.ascii	"CFGR\000"
.LASF111:
	.ascii	"_stdout\000"
.LASF123:
	.ascii	"_cvtlen\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF24:
	.ascii	"GPIO_TypeDef\000"
.LASF93:
	.ascii	"_file\000"
.LASF52:
	.ascii	"RCC_TypeDef\000"
.LASF104:
	.ascii	"_data\000"
.LASF133:
	.ascii	"_niobs\000"
.LASF144:
	.ascii	"_rand_next\000"
.LASF51:
	.ascii	"PLLI2SCFGR\000"
.LASF150:
	.ascii	"_signal_buf\000"
.LASF141:
	.ascii	"_asctime_buf\000"
.LASF29:
	.ascii	"AHB3RSTR\000"
.LASF119:
	.ascii	"_result\000"
.LASF175:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF158:
	.ascii	"_nextf\000"
.LASF54:
	.ascii	"_LOCK_T\000"
.LASF176:
	.ascii	"main.c\000"
.LASF125:
	.ascii	"_new\000"
.LASF46:
	.ascii	"APB2LPENR\000"
.LASF105:
	.ascii	"_lock\000"
.LASF137:
	.ascii	"_mult\000"
.LASF170:
	.ascii	"printUSART2\000"
.LASF97:
	.ascii	"_write\000"
.LASF76:
	.ascii	"__tm_year\000"
.LASF64:
	.ascii	"__ULong\000"
.LASF68:
	.ascii	"_wds\000"
.LASF177:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/MSUT/students/examples/LAB02/systimer-led\000"
.LASF42:
	.ascii	"AHB2LPENR\000"
.LASF75:
	.ascii	"__tm_mon\000"
.LASF85:
	.ascii	"_atexit\000"
.LASF179:
	.ascii	"time\000"
.LASF117:
	.ascii	"__sdidinit\000"
.LASF143:
	.ascii	"_gamma_signgam\000"
.LASF31:
	.ascii	"APB1RSTR\000"
.LASF57:
	.ascii	"wint_t\000"
.LASF16:
	.ascii	"SystemCoreClock\000"
.LASF122:
	.ascii	"_freelist\000"
.LASF30:
	.ascii	"RESERVED0\000"
.LASF33:
	.ascii	"RESERVED1\000"
.LASF37:
	.ascii	"RESERVED2\000"
.LASF40:
	.ascii	"RESERVED3\000"
.LASF44:
	.ascii	"RESERVED4\000"
.LASF47:
	.ascii	"RESERVED5\000"
.LASF49:
	.ascii	"RESERVED6\000"
.LASF171:
	.ascii	"initSYSTIMER\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF134:
	.ascii	"_iobs\000"
.LASF157:
	.ascii	"_h_errno\000"
.LASF63:
	.ascii	"_flock_t\000"
.LASF78:
	.ascii	"__tm_yday\000"
.LASF173:
	.ascii	"getSYSTIMER\000"
.LASF88:
	.ascii	"__sbuf\000"
.LASF107:
	.ascii	"_flags2\000"
.LASF43:
	.ascii	"AHB3LPENR\000"
.LASF131:
	.ascii	"__FILE\000"
.LASF62:
	.ascii	"_mbstate_t\000"
.LASF165:
	.ascii	"led1_time\000"
.LASF106:
	.ascii	"_mbstate\000"
.LASF146:
	.ascii	"_mblen_state\000"
.LASF113:
	.ascii	"_inc\000"
.LASF86:
	.ascii	"_ind\000"
.LASF39:
	.ascii	"APB2ENR\000"
.LASF116:
	.ascii	"_locale\000"
.LASF118:
	.ascii	"__cleanup\000"
.LASF115:
	.ascii	"_unspecified_locale_info\000"
.LASF174:
	.ascii	"chk4TimeoutSYSTIMER\000"
.LASF66:
	.ascii	"_maxwds\000"
.LASF108:
	.ascii	"_reent\000"
.LASF136:
	.ascii	"_seed\000"
.LASF172:
	.ascii	"delay_ms\000"
.LASF60:
	.ascii	"__count\000"
.LASF161:
	.ascii	"__lock\000"
.LASF61:
	.ascii	"__value\000"
.LASF98:
	.ascii	"_seek\000"
.LASF77:
	.ascii	"__tm_wday\000"
.LASF56:
	.ascii	"_fpos_t\000"
.LASF53:
	.ascii	"long double\000"
.LASF109:
	.ascii	"_errno\000"
.LASF130:
	.ascii	"char\000"
.LASF102:
	.ascii	"_blksize\000"
.LASF90:
	.ascii	"_size\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF28:
	.ascii	"AHB2RSTR\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF65:
	.ascii	"_next\000"
.LASF166:
	.ascii	"led2_time\000"
.LASF140:
	.ascii	"_strtok_last\000"
.LASF38:
	.ascii	"APB1ENR\000"
.LASF83:
	.ascii	"_fntypes\000"
.LASF35:
	.ascii	"AHB2ENR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF138:
	.ascii	"_add\000"
.LASF151:
	.ascii	"_getdate_err\000"
.LASF164:
	.ascii	"_global_impure_ptr\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF50:
	.ascii	"SSCGR\000"
.LASF139:
	.ascii	"_unused_rand\000"
.LASF21:
	.ascii	"BSRRL\000"
.LASF48:
	.ascii	"BDCR\000"
.LASF132:
	.ascii	"_glue\000"
.LASF22:
	.ascii	"BSRRH\000"
.LASF159:
	.ascii	"_nmalloc\000"
.LASF149:
	.ascii	"_l64a_buf\000"
.LASF168:
	.ascii	"led4_time\000"
.LASF127:
	.ascii	"_sig_func\000"
.LASF101:
	.ascii	"_nbuf\000"
.LASF160:
	.ascii	"_unused\000"
.LASF34:
	.ascii	"AHB1ENR\000"
.LASF79:
	.ascii	"__tm_isdst\000"
.LASF142:
	.ascii	"_localtime_buf\000"
.LASF72:
	.ascii	"__tm_min\000"
.LASF145:
	.ascii	"_r48\000"
.LASF147:
	.ascii	"_mbtowc_state\000"
.LASF121:
	.ascii	"_p5s\000"
.LASF178:
	.ascii	"main\000"
.LASF74:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
