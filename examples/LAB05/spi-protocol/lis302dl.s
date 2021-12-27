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
	.file	"lis302dl.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	initLIS302DL
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initLIS302DL, %function
initLIS302DL:
.LFB113:
	.file 1 "lis302dl.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 10 0
	ldr	r4, .L4
	.loc 1 8 0
	movs	r0, #32
	bl	initSPI1
.LVL0:
	.loc 1 10 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 11 0
	movs	r0, #32
	bl	txByteSPI1
.LVL1:
	.loc 1 12 0
	movs	r0, #71
	bl	txByteSPI1
.LVL2:
	.loc 1 13 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 15 0
	movs	r0, #100
	bl	delay_ms
.LVL3:
	.loc 1 17 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 18 0
	movs	r0, #160
	bl	txByteSPI1
.LVL4:
	.loc 1 19 0
	bl	rxByteSPI1
.LVL5:
	.loc 1 20 0
	mov	r1, r0
	ldr	r0, .L4+4
.LVL6:
	bl	printUSART2
.LVL7:
	.loc 1 21 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 23 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 24 0
	movs	r0, #161
	bl	txByteSPI1
.LVL8:
	.loc 1 25 0
	bl	rxByteSPI1
.LVL9:
	.loc 1 26 0
	mov	r1, r0
	ldr	r0, .L4+8
.LVL10:
	bl	printUSART2
.LVL11:
	.loc 1 27 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 29 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 30 0
	movs	r0, #162
	bl	txByteSPI1
.LVL12:
	.loc 1 31 0
	bl	rxByteSPI1
.LVL13:
	.loc 1 32 0
	mov	r1, r0
	ldr	r0, .L4+12
.LVL14:
	bl	printUSART2
.LVL15:
	.loc 1 33 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 37 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 38 0
	movs	r0, #143
	bl	txByteSPI1
.LVL16:
	.loc 1 40 0
	bl	rxByteSPI1
.LVL17:
	.loc 1 41 0
	mov	r1, r0
	ldr	r0, .L4+16
.LVL18:
	bl	printUSART2
.LVL19:
	.loc 1 43 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 44 0
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	1073876992
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE113:
	.size	initLIS302DL, .-initLIS302DL
	.align	1
	.p2align 2,,3
	.global	getDataLIS302DL
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getDataLIS302DL, %function
getDataLIS302DL:
.LFB114:
	.loc 1 47 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL20:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 54 0
	ldr	r4, .L10
	.loc 1 50 0
	movs	r5, #0
	strb	r5, [r0]
	.loc 1 51 0
	strb	r5, [r0, #1]
	.loc 1 52 0
	strb	r5, [r0, #2]
	.loc 1 54 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	.loc 1 47 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 54 0
	str	r3, [r4, #20]
	.loc 1 47 0
	mov	r6, r0
	.loc 1 55 0
	movs	r0, #167
.LVL21:
	bl	txByteSPI1
.LVL22:
	.loc 1 56 0
	bl	rxByteSPI1
.LVL23:
	.loc 1 57 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 58 0
	movs	r0, #100
	bl	delay_us
.LVL24:
	.loc 1 60 0
	str	r5, [sp]
	strh	r5, [sp, #4]	@ movhi
	.loc 1 61 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 62 0
	movs	r0, #169
	bl	txByteSPI1
.LVL25:
	mov	r4, sp
	add	r5, sp, #6
.LVL26:
.L7:
	.loc 1 65 0 discriminator 3
	bl	rxByteSPI1
.LVL27:
	strb	r0, [r4], #1
.LVL28:
	.loc 1 64 0 discriminator 3
	cmp	r4, r5
	bne	.L7
	.loc 1 67 0
	ldr	r4, .L10
.LVL29:
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 69 0
	ldrb	r1, [sp]	@ zero_extendqisi2
	.loc 1 70 0
	ldrb	r2, [sp, #2]	@ zero_extendqisi2
	.loc 1 71 0
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	.loc 1 69 0
	strb	r1, [r6]
	.loc 1 70 0
	strb	r2, [r6, #1]
	.loc 1 71 0
	strb	r3, [r6, #2]
	.loc 1 74 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 75 0
	movs	r0, #32
	bl	txByteSPI1
.LVL30:
	.loc 1 76 0
	movs	r0, #71
	bl	txByteSPI1
.LVL31:
	.loc 1 77 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 79 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL32:
.L11:
	.align	2
.L10:
	.word	1073876992
	.cfi_endproc
.LFE114:
	.size	getDataLIS302DL, .-getDataLIS302DL
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> LIS302: LIS302DL_CTRL_REG1 [%x]\012\000"
.LC1:
	.ascii	"-> LIS302: LIS302DL_CTRL_REG2 [%x]\012\000"
.LC2:
	.ascii	"-> LIS302: LIS302DL_CTRL_REG3 [%x]\012\000"
.LC3:
	.ascii	"-> LIS302: LIS302DL_REG_WHO_AM_I [%x]\012\000"
	.text
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
	.file 12 "spi.h"
	.file 13 "usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc47
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xc
	.4byte	.LASF153
	.4byte	.LASF154
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.4byte	0x42
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.4byte	0x7f
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
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.4byte	0x50
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x5
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.4byte	0x74
	.uleb128 0x5
	.4byte	0xd8
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x51b
	.4byte	0xd3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x35
	.4byte	0xd8
	.uleb128 0x8
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x18b
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x290
	.4byte	0xe3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x291
	.4byte	0xe3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x292
	.4byte	0xe3
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x293
	.4byte	0xe3
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xe3
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xe3
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x296
	.4byte	0xc3
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x297
	.4byte	0xc3
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x298
	.4byte	0xe3
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x19b
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	0xe3
	.4byte	0x19b
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x18b
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x29a
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1c
	.4byte	0xe3
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF30
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x22
	.4byte	0x1cb
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d1
	.uleb128 0x10
	.4byte	.LASF138
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x9
	.byte	0x2c
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0x72
	.4byte	0x6d
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0xa
	.2byte	0x165
	.4byte	0x9b
	.uleb128 0x11
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.4byte	0x217
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa8
	.4byte	0x1ec
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x9
	.byte	0xa9
	.4byte	0x217
	.byte	0
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x227
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.byte	0xa3
	.4byte	0x248
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x9
	.byte	0xa5
	.4byte	0x94
	.byte	0
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x9
	.byte	0xaa
	.4byte	0x1f8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x9
	.byte	0xab
	.4byte	0x227
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0xaf
	.4byte	0x1c0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0xb
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x18
	.byte	0xb
	.byte	0x2f
	.4byte	0x2bc
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0xb
	.byte	0x31
	.4byte	0x2bc
	.byte	0
	.uleb128 0x16
	.ascii	"_k\000"
	.byte	0xb
	.byte	0x32
	.4byte	0x94
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0xb
	.byte	0x32
	.4byte	0x94
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0xb
	.byte	0x32
	.4byte	0x94
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0xb
	.byte	0x32
	.4byte	0x94
	.byte	0x10
	.uleb128 0x16
	.ascii	"_x\000"
	.byte	0xb
	.byte	0x33
	.4byte	0x2c2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x269
	.uleb128 0xb
	.4byte	0x25e
	.4byte	0x2d2
	.uleb128 0xc
	.4byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x24
	.byte	0xb
	.byte	0x37
	.4byte	0x34b
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0xb
	.byte	0x39
	.4byte	0x94
	.byte	0
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0xb
	.byte	0x3a
	.4byte	0x94
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xb
	.byte	0x3b
	.4byte	0x94
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xb
	.byte	0x3c
	.4byte	0x94
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0xb
	.byte	0x3d
	.4byte	0x94
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xb
	.byte	0x3e
	.4byte	0x94
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xb
	.byte	0x3f
	.4byte	0x94
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xb
	.byte	0x40
	.4byte	0x94
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xb
	.byte	0x41
	.4byte	0x94
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF57
	.2byte	0x108
	.byte	0xb
	.byte	0x4a
	.4byte	0x38b
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xb
	.byte	0x4b
	.4byte	0x38b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xb
	.byte	0x4c
	.4byte	0x38b
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0xb
	.byte	0x4e
	.4byte	0x25e
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0xb
	.byte	0x51
	.4byte	0x25e
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x1be
	.4byte	0x39b
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF62
	.2byte	0x190
	.byte	0xb
	.byte	0x5d
	.4byte	0x3d9
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0xb
	.byte	0x5e
	.4byte	0x3d9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0xb
	.byte	0x5f
	.4byte	0x94
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0xb
	.byte	0x61
	.4byte	0x3df
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xb
	.byte	0x62
	.4byte	0x34b
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x39b
	.uleb128 0xb
	.4byte	0x3ef
	.4byte	0x3ef
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3f5
	.uleb128 0x19
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x8
	.byte	0xb
	.byte	0x75
	.4byte	0x41b
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0xb
	.byte	0x76
	.4byte	0x41b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xb
	.byte	0x77
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x42
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x68
	.byte	0xb
	.byte	0xb5
	.4byte	0x54b
	.uleb128 0x16
	.ascii	"_p\000"
	.byte	0xb
	.byte	0xb6
	.4byte	0x41b
	.byte	0
	.uleb128 0x16
	.ascii	"_r\000"
	.byte	0xb
	.byte	0xb7
	.4byte	0x94
	.byte	0x4
	.uleb128 0x16
	.ascii	"_w\000"
	.byte	0xb
	.byte	0xb8
	.4byte	0x94
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0xb
	.byte	0xb9
	.4byte	0x49
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xb
	.byte	0xba
	.4byte	0x49
	.byte	0xe
	.uleb128 0x16
	.ascii	"_bf\000"
	.byte	0xb
	.byte	0xbb
	.4byte	0x3f6
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xb
	.byte	0xbc
	.4byte	0x94
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0xb
	.byte	0xc3
	.4byte	0x1be
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xb
	.byte	0xc5
	.4byte	0x6b8
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xb
	.byte	0xc7
	.4byte	0x6e2
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0xb
	.byte	0xca
	.4byte	0x706
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0xb
	.byte	0xcb
	.4byte	0x720
	.byte	0x2c
	.uleb128 0x16
	.ascii	"_ub\000"
	.byte	0xb
	.byte	0xce
	.4byte	0x3f6
	.byte	0x30
	.uleb128 0x16
	.ascii	"_up\000"
	.byte	0xb
	.byte	0xcf
	.4byte	0x41b
	.byte	0x38
	.uleb128 0x16
	.ascii	"_ur\000"
	.byte	0xb
	.byte	0xd0
	.4byte	0x94
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0xb
	.byte	0xd3
	.4byte	0x726
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0xb
	.byte	0xd4
	.4byte	0x736
	.byte	0x43
	.uleb128 0x16
	.ascii	"_lb\000"
	.byte	0xb
	.byte	0xd7
	.4byte	0x3f6
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0xb
	.byte	0xda
	.4byte	0x94
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0xb
	.byte	0xdb
	.4byte	0x1d6
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0xb
	.byte	0xde
	.4byte	0x569
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0xb
	.byte	0xe2
	.4byte	0x253
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0xb
	.byte	0xe4
	.4byte	0x248
	.byte	0x5c
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0xb
	.byte	0xe5
	.4byte	0x94
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x94
	.4byte	0x569
	.uleb128 0x1b
	.4byte	0x569
	.uleb128 0x1b
	.4byte	0x1be
	.uleb128 0x1b
	.4byte	0x6a6
	.uleb128 0x1b
	.4byte	0x94
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x574
	.uleb128 0x1c
	.4byte	0x569
	.uleb128 0x1d
	.4byte	.LASF85
	.2byte	0x428
	.byte	0xb
	.2byte	0x260
	.4byte	0x6a6
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x262
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x267
	.4byte	0x78d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x267
	.4byte	0x78d
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x267
	.4byte	0x78d
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x269
	.4byte	0x94
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x26a
	.4byte	0x96f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x26d
	.4byte	0x94
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x26e
	.4byte	0x984
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x270
	.4byte	0x94
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x272
	.4byte	0x995
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x275
	.4byte	0x2bc
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x276
	.4byte	0x94
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x277
	.4byte	0x2bc
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x278
	.4byte	0x99b
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x27b
	.4byte	0x94
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x27c
	.4byte	0x6a6
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x29f
	.4byte	0x94d
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF62
	.byte	0xb
	.2byte	0x2a3
	.4byte	0x3d9
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x2a4
	.4byte	0x39b
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x2a8
	.4byte	0x9ac
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x2ad
	.4byte	0x752
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x2af
	.4byte	0x9b8
	.2byte	0x2ec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ac
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF107
	.uleb128 0x1c
	.4byte	0x6ac
	.uleb128 0xf
	.byte	0x4
	.4byte	0x54b
	.uleb128 0x1a
	.4byte	0x94
	.4byte	0x6dc
	.uleb128 0x1b
	.4byte	0x569
	.uleb128 0x1b
	.4byte	0x1be
	.uleb128 0x1b
	.4byte	0x6dc
	.uleb128 0x1b
	.4byte	0x94
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6b3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6be
	.uleb128 0x1a
	.4byte	0x1e1
	.4byte	0x706
	.uleb128 0x1b
	.4byte	0x569
	.uleb128 0x1b
	.4byte	0x1be
	.uleb128 0x1b
	.4byte	0x1e1
	.uleb128 0x1b
	.4byte	0x94
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6e8
	.uleb128 0x1a
	.4byte	0x94
	.4byte	0x720
	.uleb128 0x1b
	.4byte	0x569
	.uleb128 0x1b
	.4byte	0x1be
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x70c
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x736
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x746
	.uleb128 0xc
	.4byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x11f
	.4byte	0x421
	.uleb128 0x1f
	.4byte	.LASF109
	.byte	0xc
	.byte	0xb
	.2byte	0x123
	.4byte	0x787
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xb
	.2byte	0x125
	.4byte	0x787
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x126
	.4byte	0x94
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x127
	.4byte	0x78d
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x752
	.uleb128 0xf
	.byte	0x4
	.4byte	0x746
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0xe
	.byte	0xb
	.2byte	0x13f
	.4byte	0x7c8
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x140
	.4byte	0x7c8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x141
	.4byte	0x7c8
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x142
	.4byte	0x5b
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x5b
	.4byte	0x7d8
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0xd0
	.byte	0xb
	.2byte	0x280
	.4byte	0x8d9
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x282
	.4byte	0x9b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x283
	.4byte	0x6a6
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x284
	.4byte	0x8d9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x285
	.4byte	0x2d2
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x286
	.4byte	0x94
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x287
	.4byte	0x8d
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x288
	.4byte	0x793
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x289
	.4byte	0x248
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x28a
	.4byte	0x248
	.byte	0x70
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x28b
	.4byte	0x248
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x28c
	.4byte	0x8e9
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x28d
	.4byte	0x8f9
	.byte	0x88
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x28e
	.4byte	0x94
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x28f
	.4byte	0x248
	.byte	0xa4
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x290
	.4byte	0x248
	.byte	0xac
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x291
	.4byte	0x248
	.byte	0xb4
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x292
	.4byte	0x248
	.byte	0xbc
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x293
	.4byte	0x248
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x294
	.4byte	0x94
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.4byte	0x6ac
	.4byte	0x8e9
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x6ac
	.4byte	0x8f9
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x6ac
	.4byte	0x909
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.byte	0xf0
	.byte	0xb
	.2byte	0x299
	.4byte	0x92d
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x29c
	.4byte	0x92d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x29d
	.4byte	0x93d
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x41b
	.4byte	0x93d
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x94d
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xb
	.2byte	0x27e
	.4byte	0x96f
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x295
	.4byte	0x7d8
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x29e
	.4byte	0x909
	.byte	0
	.uleb128 0xb
	.4byte	0x6ac
	.4byte	0x97f
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF139
	.uleb128 0xf
	.byte	0x4
	.4byte	0x97f
	.uleb128 0x22
	.4byte	0x995
	.uleb128 0x1b
	.4byte	0x569
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x98a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2bc
	.uleb128 0x22
	.4byte	0x9ac
	.uleb128 0x1b
	.4byte	0x94
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9b2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9a1
	.uleb128 0xb
	.4byte	0x746
	.4byte	0x9c8
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x32e
	.4byte	0x569
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x32f
	.4byte	0x56f
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9d
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x2e
	.4byte	0xa9d
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x1
	.byte	0x30
	.4byte	0xd8
	.uleb128 0x26
	.ascii	"k\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0xad
	.4byte	.LLST2
	.uleb128 0x27
	.4byte	.LASF142
	.byte	0x1
	.byte	0x3c
	.4byte	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.4byte	.LVL22
	.4byte	0xc08
	.4byte	0xa3e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa7
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL23
	.4byte	0xc13
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0xc1e
	.4byte	0xa5b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0xc08
	.4byte	0xa6f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa9
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL27
	.4byte	0xc13
	.uleb128 0x28
	.4byte	.LVL30
	.4byte	0xc08
	.4byte	0xa8c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL31
	.4byte	0xc08
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xb
	.4byte	0xad
	.4byte	0xab3
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.byte	0x3
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc08
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2c
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2d
	.4byte	.LASF145
	.byte	0x1
	.byte	0x6
	.4byte	0xd8
	.4byte	.LLST0
	.uleb128 0x28
	.4byte	.LVL0
	.4byte	0xc29
	.4byte	0xaff
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xc08
	.4byte	0xb13
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0xc08
	.4byte	0xb27
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0xc34
	.4byte	0xb3b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0xc08
	.4byte	0xb4f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL5
	.4byte	0xc13
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0xc3f
	.4byte	0xb6f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xc08
	.4byte	0xb83
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL9
	.4byte	0xc13
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xc3f
	.4byte	0xba3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x28
	.4byte	.LVL12
	.4byte	0xc08
	.4byte	0xbb7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL13
	.4byte	0xc13
	.uleb128 0x28
	.4byte	.LVL15
	.4byte	0xc3f
	.4byte	0xbd7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0xc08
	.4byte	0xbeb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0x8f
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL17
	.4byte	0xc13
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0xc3f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x1d
	.uleb128 0x2e
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0x1c
	.uleb128 0x2e
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x7
	.byte	0xc
	.uleb128 0x2e
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xc
	.byte	0x1b
	.uleb128 0x2e
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x7
	.byte	0xb
	.uleb128 0x2e
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xd
	.byte	0x10
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
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
.LLST1:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
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
.LASF59:
	.ascii	"_dso_handle\000"
.LASF4:
	.ascii	"short int\000"
.LASF145:
	.ascii	"utmp32\000"
.LASF27:
	.ascii	"LCKR\000"
.LASF58:
	.ascii	"_fnargs\000"
.LASF112:
	.ascii	"_rand48\000"
.LASF91:
	.ascii	"_emergency\000"
.LASF22:
	.ascii	"OTYPER\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF103:
	.ascii	"_atexit0\000"
.LASF132:
	.ascii	"_wcrtomb_state\000"
.LASF133:
	.ascii	"_wcsrtombs_state\000"
.LASF21:
	.ascii	"MODER\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF71:
	.ascii	"_lbfsize\000"
.LASF24:
	.ascii	"PUPDR\000"
.LASF139:
	.ascii	"__locale_t\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF19:
	.ascii	"ITM_RxBuffer\000"
.LASF130:
	.ascii	"_mbrtowc_state\000"
.LASF143:
	.ascii	"getDataLIS302DL\000"
.LASF48:
	.ascii	"__tm_sec\000"
.LASF32:
	.ascii	"_off_t\000"
.LASF76:
	.ascii	"_close\000"
.LASF2:
	.ascii	"signed char\000"
.LASF154:
	.ascii	"/mnt/ssd/Dropbox/Fakultet/MSUT/students/examples/LA"
	.ascii	"B05/spi-protocol\000"
.LASF77:
	.ascii	"_ubuf\000"
.LASF66:
	.ascii	"_base\000"
.LASF50:
	.ascii	"__tm_hour\000"
.LASF35:
	.ascii	"__wch\000"
.LASF106:
	.ascii	"__sf\000"
.LASF57:
	.ascii	"_on_exit_args\000"
.LASF72:
	.ascii	"_cookie\000"
.LASF105:
	.ascii	"__sglue\000"
.LASF8:
	.ascii	"long int\000"
.LASF69:
	.ascii	"_flags\000"
.LASF61:
	.ascii	"_is_cxa\000"
.LASF87:
	.ascii	"_stdin\000"
.LASF97:
	.ascii	"_result_k\000"
.LASF29:
	.ascii	"g_tim7_val\000"
.LASF11:
	.ascii	"long long int\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF147:
	.ascii	"rxByteSPI1\000"
.LASF101:
	.ascii	"_cvtbuf\000"
.LASF80:
	.ascii	"_offset\000"
.LASF131:
	.ascii	"_mbsrtowcs_state\000"
.LASF129:
	.ascii	"_mbrlen_state\000"
.LASF64:
	.ascii	"_fns\000"
.LASF23:
	.ascii	"OSPEEDR\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF44:
	.ascii	"_sign\000"
.LASF140:
	.ascii	"_impure_ptr\000"
.LASF89:
	.ascii	"_stderr\000"
.LASF46:
	.ascii	"_Bigint\000"
.LASF73:
	.ascii	"_read\000"
.LASF47:
	.ascii	"__tm\000"
.LASF36:
	.ascii	"__wchb\000"
.LASF20:
	.ascii	"SystemCoreClock\000"
.LASF88:
	.ascii	"_stdout\000"
.LASF100:
	.ascii	"_cvtlen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF28:
	.ascii	"GPIO_TypeDef\000"
.LASF70:
	.ascii	"_file\000"
.LASF81:
	.ascii	"_data\000"
.LASF110:
	.ascii	"_niobs\000"
.LASF142:
	.ascii	"data\000"
.LASF121:
	.ascii	"_rand_next\000"
.LASF127:
	.ascii	"_signal_buf\000"
.LASF118:
	.ascii	"_asctime_buf\000"
.LASF86:
	.ascii	"_errno\000"
.LASF96:
	.ascii	"_result\000"
.LASF152:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF31:
	.ascii	"_LOCK_T\000"
.LASF102:
	.ascii	"_new\000"
.LASF82:
	.ascii	"_lock\000"
.LASF114:
	.ascii	"_mult\000"
.LASF149:
	.ascii	"initSPI1\000"
.LASF151:
	.ascii	"printUSART2\000"
.LASF74:
	.ascii	"_write\000"
.LASF53:
	.ascii	"__tm_year\000"
.LASF136:
	.ascii	"_nmalloc\000"
.LASF135:
	.ascii	"_nextf\000"
.LASF52:
	.ascii	"__tm_mon\000"
.LASF62:
	.ascii	"_atexit\000"
.LASF94:
	.ascii	"__sdidinit\000"
.LASF120:
	.ascii	"_gamma_signgam\000"
.LASF146:
	.ascii	"txByteSPI1\000"
.LASF99:
	.ascii	"_freelist\000"
.LASF125:
	.ascii	"_wctomb_state\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF111:
	.ascii	"_iobs\000"
.LASF134:
	.ascii	"_h_errno\000"
.LASF40:
	.ascii	"_flock_t\000"
.LASF55:
	.ascii	"__tm_yday\000"
.LASF65:
	.ascii	"__sbuf\000"
.LASF84:
	.ascii	"_flags2\000"
.LASF108:
	.ascii	"__FILE\000"
.LASF39:
	.ascii	"_mbstate_t\000"
.LASF68:
	.ascii	"__sFILE\000"
.LASF83:
	.ascii	"_mbstate\000"
.LASF123:
	.ascii	"_mblen_state\000"
.LASF90:
	.ascii	"_inc\000"
.LASF63:
	.ascii	"_ind\000"
.LASF93:
	.ascii	"_locale\000"
.LASF95:
	.ascii	"__cleanup\000"
.LASF92:
	.ascii	"_unspecified_locale_info\000"
.LASF43:
	.ascii	"_maxwds\000"
.LASF85:
	.ascii	"_reent\000"
.LASF113:
	.ascii	"_seed\000"
.LASF34:
	.ascii	"wint_t\000"
.LASF150:
	.ascii	"delay_ms\000"
.LASF37:
	.ascii	"__count\000"
.LASF138:
	.ascii	"__lock\000"
.LASF38:
	.ascii	"__value\000"
.LASF75:
	.ascii	"_seek\000"
.LASF54:
	.ascii	"__tm_wday\000"
.LASF33:
	.ascii	"_fpos_t\000"
.LASF30:
	.ascii	"long double\000"
.LASF155:
	.ascii	"accel_data\000"
.LASF107:
	.ascii	"char\000"
.LASF79:
	.ascii	"_blksize\000"
.LASF67:
	.ascii	"_size\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF148:
	.ascii	"delay_us\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF42:
	.ascii	"_next\000"
.LASF117:
	.ascii	"_strtok_last\000"
.LASF60:
	.ascii	"_fntypes\000"
.LASF144:
	.ascii	"initLIS302DL\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF115:
	.ascii	"_add\000"
.LASF41:
	.ascii	"__ULong\000"
.LASF14:
	.ascii	"int8_t\000"
.LASF128:
	.ascii	"_getdate_err\000"
.LASF141:
	.ascii	"_global_impure_ptr\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF116:
	.ascii	"_unused_rand\000"
.LASF25:
	.ascii	"BSRRL\000"
.LASF45:
	.ascii	"_wds\000"
.LASF109:
	.ascii	"_glue\000"
.LASF26:
	.ascii	"BSRRH\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF126:
	.ascii	"_l64a_buf\000"
.LASF104:
	.ascii	"_sig_func\000"
.LASF78:
	.ascii	"_nbuf\000"
.LASF137:
	.ascii	"_unused\000"
.LASF56:
	.ascii	"__tm_isdst\000"
.LASF119:
	.ascii	"_localtime_buf\000"
.LASF49:
	.ascii	"__tm_min\000"
.LASF122:
	.ascii	"_r48\000"
.LASF124:
	.ascii	"_mbtowc_state\000"
.LASF98:
	.ascii	"_p5s\000"
.LASF153:
	.ascii	"lis302dl.c\000"
.LASF51:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
