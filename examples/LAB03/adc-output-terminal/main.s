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
	.loc 1 12 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
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
	.loc 1 16 0
	bl	initSYSTIMER
.LVL1:
.LBB6:
.LBB7:
	.loc 1 42 0
	ldr	r1, .L6
	.loc 1 43 0
	ldr	r3, .L6+4
	.loc 1 42 0
	ldr	r2, [r1, #48]
	ldr	r9, .L6+20
	ldr	r8, .L6+24
.LBE7:
.LBE6:
	.loc 1 26 0
	ldr	r7, .L6+8
	.loc 1 28 0
	ldr	r6, .L6+12
	.loc 1 29 0
	ldr	r5, .L6+16
.LBB9:
.LBB8:
	.loc 1 42 0
	orr	r2, r2, #8
	str	r2, [r1, #48]
	.loc 1 43 0
	ldr	r2, [r3]
	orr	r2, r2, #1426063360
	str	r2, [r3]
	.loc 1 44 0
	ldr	r2, [r3, #4]
	str	r2, [r3, #4]
	.loc 1 45 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #-16777216
	str	r2, [r3, #8]
	.loc 1 47 0
	ldr	r2, [r3, #20]
	ubfx	r2, r2, #0, #12
	str	r2, [r3, #20]
.LBE8:
.LBE9:
	.loc 1 18 0
	mov	r0, #364
	bl	initUSART2
.LVL2:
	.loc 1 19 0
	bl	initADC1
.LVL3:
	.loc 1 13 0
	movs	r4, #0
.LVL4:
.L2:
	.loc 1 24 0 discriminator 1
	bl	getADC1
.LVL5:
	.loc 1 26 0 discriminator 1
	mov	r1, r4
	mov	r2, r0
	.loc 1 24 0 discriminator 1
	mov	r10, r0
.LVL6:
	.loc 1 26 0 discriminator 1
	mov	r0, r7
.LVL7:
	bl	printUSART2
.LVL8:
	.loc 1 28 0 discriminator 1
	movw	r0, #3000
	mul	r0, r0, r10
.LVL9:
	umull	r3, r1, r6, r0
	subs	r0, r0, r1
.LVL10:
	add	r1, r1, r0, lsr #1
	.loc 1 29 0 discriminator 1
	lsrs	r1, r1, #11
	mov	r0, r5
	bl	printUSART2
.LVL11:
	.loc 1 31 0 discriminator 1
	movs	r0, #100
	bl	delay_ms
.LVL12:
.LBB10:
.LBB11:
	.loc 1 52 0 discriminator 1
	ldr	r3, .L6+4
	ldr	r2, [r3, #20]
	ubfx	r2, r2, #0, #12
	str	r2, [r3, #20]
	.loc 1 53 0 discriminator 1
	ldrb	r2, [r9]	@ zero_extendqisi2
	uxtb	r2, r2
.LBE11:
.LBE10:
	.loc 1 32 0 discriminator 1
	adds	r4, r4, #1
.LVL13:
.LBB13:
.LBB12:
	.loc 1 53 0 discriminator 1
	ldrh	r1, [r8, r2, lsl #1]
	ldr	r2, [r3, #20]
	orrs	r2, r2, r1
	str	r2, [r3, #20]
	.loc 1 54 0 discriminator 1
	ldrb	r3, [r9]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r9]
	.loc 1 55 0 discriminator 1
	ldrb	r3, [r9]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
	.loc 1 56 0
	movs	r3, #0
	strb	r3, [r9]
	b	.L2
.L7:
	.align	2
.L6:
	.word	1073887232
	.word	1073875968
	.word	.LC0
	.word	1048833
	.word	.LC1
	.word	g_led_k
	.word	.LANCHOR0
.LBE12:
.LBE13:
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.text
	.align	1
	.p2align 2,,3
	.global	initLED
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initLED, %function
initLED:
.LFB114:
	.loc 1 38 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 42 0
	ldr	r1, .L9
	.loc 1 43 0
	ldr	r3, .L9+4
	.loc 1 42 0
	ldr	r2, [r1, #48]
	orr	r2, r2, #8
	str	r2, [r1, #48]
	.loc 1 43 0
	ldr	r2, [r3]
	orr	r2, r2, #1426063360
	str	r2, [r3]
	.loc 1 44 0
	ldr	r2, [r3, #4]
	str	r2, [r3, #4]
	.loc 1 45 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #-16777216
	str	r2, [r3, #8]
	.loc 1 47 0
	ldr	r2, [r3, #20]
	ubfx	r2, r2, #0, #12
	str	r2, [r3, #20]
	.loc 1 48 0
	bx	lr
.L10:
	.align	2
.L9:
	.word	1073887232
	.word	1073875968
	.cfi_endproc
.LFE114:
	.size	initLED, .-initLED
	.align	1
	.p2align 2,,3
	.global	doLED
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	doLED, %function
doLED:
.LFB115:
	.loc 1 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 52 0
	ldr	r3, .L13
	.loc 1 53 0
	ldr	r2, .L13+4
	.loc 1 52 0
	ldr	r1, [r3, #20]
	.loc 1 53 0
	ldr	r0, .L13+8
	.loc 1 52 0
	ubfx	r1, r1, #0, #12
	str	r1, [r3, #20]
	.loc 1 53 0
	ldrb	r1, [r2]	@ zero_extendqisi2
	uxtb	r1, r1
	ldrh	r0, [r0, r1, lsl #1]
	ldr	r1, [r3, #20]
	orrs	r1, r1, r0
	str	r1, [r3, #20]
	.loc 1 54 0
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	.loc 1 55 0
	ldrb	r3, [r2]	@ zero_extendqisi2
	cmp	r3, #8
	.loc 1 56 0
	itt	eq
	moveq	r3, #0
	strbeq	r3, [r2]
	.loc 1 57 0
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073875968
	.word	g_led_k
	.word	.LANCHOR0
	.cfi_endproc
.LFE115:
	.size	doLED, .-doLED
	.comm	g_led_k,1,1
	.global	g_led_state
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_led_state, %object
	.size	g_led_state, 16
g_led_state:
	.short	-4096
	.short	-8192
	.short	-16384
	.short	-32768
	.short	0
	.short	4096
	.short	12288
	.short	28672
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> ADC[%d]:  [%d/4095]\012\000"
.LC1:
	.ascii	"-> ADC: %d[mV]\012\000"
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
	.file 11 "delay.h"
	.file 12 "usart.h"
	.file 13 "adc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd2a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0xc
	.4byte	.LASF179
	.4byte	.LASF180
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.4byte	0x3a
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x53
	.uleb128 0x5
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x5
	.4byte	0xb7
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x77
	.uleb128 0x5
	.4byte	0xc7
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xc2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xc7
	.uleb128 0x8
	.4byte	0xc7
	.4byte	0xfe
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x18a
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x290
	.4byte	0xd2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x291
	.4byte	0xd2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x292
	.4byte	0xd2
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x293
	.4byte	0xd2
	.byte	0xc
	.uleb128 0xc
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xd2
	.byte	0x10
	.uleb128 0xc
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xd2
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x296
	.4byte	0xb2
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x297
	.4byte	0xb2
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x298
	.4byte	0xd2
	.byte	0x1c
	.uleb128 0xc
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x19a
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	0xd2
	.4byte	0x19a
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x18a
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x29a
	.4byte	0xfe
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x33a
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xd2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xd2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xd2
	.byte	0x8
	.uleb128 0xc
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xd2
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xd2
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xd2
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xd2
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xc7
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xd2
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xd2
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2e9
	.4byte	0xee
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xd2
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xd2
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xd2
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xc7
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xd2
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xd2
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f0
	.4byte	0xee
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xd2
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xd2
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xd2
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xc7
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xd2
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xd2
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2f7
	.4byte	0xee
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xd2
	.byte	0x70
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xd2
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xee
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xd2
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xd2
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2fd
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF55
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0x22
	.4byte	0x35a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x360
	.uleb128 0x10
	.4byte	.LASF163
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x72
	.4byte	0x70
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x165
	.4byte	0x25
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.4byte	0x3a6
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x8
	.byte	0xa8
	.4byte	0x37b
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x8
	.byte	0xa9
	.4byte	0x3a6
	.byte	0
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x3b6
	.uleb128 0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.4byte	0x3d7
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x8
	.byte	0xa5
	.4byte	0x90
	.byte	0
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x8
	.byte	0xaa
	.4byte	0x387
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x8
	.byte	0xab
	.4byte	0x3b6
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x8
	.byte	0xaf
	.4byte	0x34f
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0x16
	.4byte	0x82
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x18
	.byte	0xa
	.byte	0x2f
	.4byte	0x44b
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xa
	.byte	0x31
	.4byte	0x44b
	.byte	0
	.uleb128 0x16
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xa
	.byte	0x32
	.4byte	0x90
	.byte	0x10
	.uleb128 0x16
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x33
	.4byte	0x451
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3f8
	.uleb128 0x8
	.4byte	0x3ed
	.4byte	0x461
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x24
	.byte	0xa
	.byte	0x37
	.4byte	0x4da
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xa
	.byte	0x39
	.4byte	0x90
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xa
	.byte	0x3a
	.4byte	0x90
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0xa
	.byte	0x3b
	.4byte	0x90
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0xa
	.byte	0x3c
	.4byte	0x90
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0xa
	.byte	0x3d
	.4byte	0x90
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0xa
	.byte	0x3e
	.4byte	0x90
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0xa
	.byte	0x3f
	.4byte	0x90
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0xa
	.byte	0x40
	.4byte	0x90
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0xa
	.byte	0x41
	.4byte	0x90
	.byte	0x20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF82
	.2byte	0x108
	.byte	0xa
	.byte	0x4a
	.4byte	0x51a
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0xa
	.byte	0x4b
	.4byte	0x51a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0xa
	.byte	0x4c
	.4byte	0x51a
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0xa
	.byte	0x4e
	.4byte	0x3ed
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0xa
	.byte	0x51
	.4byte	0x3ed
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x34d
	.4byte	0x52a
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.2byte	0x190
	.byte	0xa
	.byte	0x5d
	.4byte	0x568
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xa
	.byte	0x5e
	.4byte	0x568
	.byte	0
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xa
	.byte	0x5f
	.4byte	0x90
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0xa
	.byte	0x61
	.4byte	0x56e
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0xa
	.byte	0x62
	.4byte	0x4da
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x52a
	.uleb128 0x8
	.4byte	0x57e
	.4byte	0x57e
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x584
	.uleb128 0x19
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x8
	.byte	0xa
	.byte	0x75
	.4byte	0x5aa
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xa
	.byte	0x76
	.4byte	0x5aa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xa
	.byte	0x77
	.4byte	0x90
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x45
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x68
	.byte	0xa
	.byte	0xb5
	.4byte	0x6da
	.uleb128 0x16
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xb6
	.4byte	0x5aa
	.byte	0
	.uleb128 0x16
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xb7
	.4byte	0x90
	.byte	0x4
	.uleb128 0x16
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x90
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xa
	.byte	0xb9
	.4byte	0x4c
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xa
	.byte	0xba
	.4byte	0x4c
	.byte	0xe
	.uleb128 0x16
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0x585
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xa
	.byte	0xbc
	.4byte	0x90
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xa
	.byte	0xc3
	.4byte	0x34d
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xa
	.byte	0xc5
	.4byte	0x847
	.byte	0x20
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xa
	.byte	0xc7
	.4byte	0x871
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xa
	.byte	0xca
	.4byte	0x895
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xa
	.byte	0xcb
	.4byte	0x8af
	.byte	0x2c
	.uleb128 0x16
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xce
	.4byte	0x585
	.byte	0x30
	.uleb128 0x16
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xcf
	.4byte	0x5aa
	.byte	0x38
	.uleb128 0x16
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xd0
	.4byte	0x90
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xa
	.byte	0xd3
	.4byte	0x8b5
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xa
	.byte	0xd4
	.4byte	0x8c5
	.byte	0x43
	.uleb128 0x16
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xd7
	.4byte	0x585
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa
	.byte	0xda
	.4byte	0x90
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xa
	.byte	0xdb
	.4byte	0x365
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xa
	.byte	0xde
	.4byte	0x6f8
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xa
	.byte	0xe2
	.4byte	0x3e2
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0xa
	.byte	0xe4
	.4byte	0x3d7
	.byte	0x5c
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0xa
	.byte	0xe5
	.4byte	0x90
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0x6f8
	.uleb128 0x1b
	.4byte	0x6f8
	.uleb128 0x1b
	.4byte	0x34d
	.uleb128 0x1b
	.4byte	0x835
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x703
	.uleb128 0x1c
	.4byte	0x6f8
	.uleb128 0x1d
	.4byte	.LASF110
	.2byte	0x428
	.byte	0xa
	.2byte	0x260
	.4byte	0x835
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x262
	.4byte	0x90
	.byte	0
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x267
	.4byte	0x91c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x267
	.4byte	0x91c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x267
	.4byte	0x91c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x269
	.4byte	0x90
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x26a
	.4byte	0xafe
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x26d
	.4byte	0x90
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x26e
	.4byte	0xb13
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x270
	.4byte	0x90
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x272
	.4byte	0xb24
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x275
	.4byte	0x44b
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x276
	.4byte	0x90
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x277
	.4byte	0x44b
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x278
	.4byte	0xb2a
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x27b
	.4byte	0x90
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x27c
	.4byte	0x835
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x29f
	.4byte	0xadc
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x2a3
	.4byte	0x568
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x52a
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x2a8
	.4byte	0xb3b
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x2ad
	.4byte	0x8e1
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x2af
	.4byte	0xb47
	.2byte	0x2ec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x83b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF132
	.uleb128 0x1c
	.4byte	0x83b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6da
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0x86b
	.uleb128 0x1b
	.4byte	0x6f8
	.uleb128 0x1b
	.4byte	0x34d
	.uleb128 0x1b
	.4byte	0x86b
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x842
	.uleb128 0xf
	.byte	0x4
	.4byte	0x84d
	.uleb128 0x1a
	.4byte	0x370
	.4byte	0x895
	.uleb128 0x1b
	.4byte	0x6f8
	.uleb128 0x1b
	.4byte	0x34d
	.uleb128 0x1b
	.4byte	0x370
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x877
	.uleb128 0x1a
	.4byte	0x90
	.4byte	0x8af
	.uleb128 0x1b
	.4byte	0x6f8
	.uleb128 0x1b
	.4byte	0x34d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x89b
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x8c5
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x8d5
	.uleb128 0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x11f
	.4byte	0x5b0
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0xc
	.byte	0xa
	.2byte	0x123
	.4byte	0x916
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x125
	.4byte	0x916
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x126
	.4byte	0x90
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x127
	.4byte	0x91c
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d5
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0xe
	.byte	0xa
	.2byte	0x13f
	.4byte	0x957
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x140
	.4byte	0x957
	.byte	0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x141
	.4byte	0x957
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x142
	.4byte	0x5e
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x5e
	.4byte	0x967
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0xd0
	.byte	0xa
	.2byte	0x280
	.4byte	0xa68
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x282
	.4byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x283
	.4byte	0x835
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x284
	.4byte	0xa68
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x285
	.4byte	0x461
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x286
	.4byte	0x90
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x287
	.4byte	0x2c
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x288
	.4byte	0x922
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x289
	.4byte	0x3d7
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x28a
	.4byte	0x3d7
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x28b
	.4byte	0x3d7
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x28c
	.4byte	0xa78
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x28d
	.4byte	0xa88
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x28e
	.4byte	0x90
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x28f
	.4byte	0x3d7
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x290
	.4byte	0x3d7
	.byte	0xac
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x291
	.4byte	0x3d7
	.byte	0xb4
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x292
	.4byte	0x3d7
	.byte	0xbc
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x293
	.4byte	0x3d7
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x294
	.4byte	0x90
	.byte	0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x83b
	.4byte	0xa78
	.uleb128 0x9
	.4byte	0x25
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x83b
	.4byte	0xa88
	.uleb128 0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x83b
	.4byte	0xa98
	.uleb128 0x9
	.4byte	0x25
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.byte	0xf0
	.byte	0xa
	.2byte	0x299
	.4byte	0xabc
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x29c
	.4byte	0xabc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x29d
	.4byte	0xacc
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x5aa
	.4byte	0xacc
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x25
	.4byte	0xadc
	.uleb128 0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xa
	.2byte	0x27e
	.4byte	0xafe
	.uleb128 0x21
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x295
	.4byte	0x967
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x29e
	.4byte	0xa98
	.byte	0
	.uleb128 0x8
	.4byte	0x83b
	.4byte	0xb0e
	.uleb128 0x9
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF164
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb0e
	.uleb128 0x22
	.4byte	0xb24
	.uleb128 0x1b
	.4byte	0x6f8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb19
	.uleb128 0xf
	.byte	0x4
	.4byte	0x44b
	.uleb128 0x22
	.4byte	0xb3b
	.uleb128 0x1b
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb41
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb30
	.uleb128 0x8
	.4byte	0x8d5
	.4byte	0xb57
	.uleb128 0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x32e
	.4byte	0x6f8
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x32f
	.4byte	0x6fe
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0xb7f
	.uleb128 0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0xb6f
	.uleb128 0x23
	.4byte	.LASF167
	.byte	0x1
	.byte	0x8
	.4byte	0xb7f
	.uleb128 0x5
	.byte	0x3
	.4byte	g_led_state
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0x1
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x3
	.4byte	g_led_k
	.uleb128 0x24
	.4byte	.LASF169
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF181
	.byte	0x1
	.byte	0xb
	.4byte	0x90
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccd
	.uleb128 0x26
	.4byte	.LASF171
	.byte	0x1
	.byte	0xd
	.4byte	0xc7
	.4byte	.LLST0
	.uleb128 0x27
	.ascii	"k\000"
	.byte	0x1
	.byte	0xd
	.4byte	0xc7
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	.LASF182
	.byte	0x1
	.byte	0xe
	.4byte	0xa7
	.uleb128 0x29
	.4byte	0xbae
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x11
	.uleb128 0x29
	.4byte	0xba6
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x21
	.uleb128 0x2a
	.4byte	.LVL1
	.4byte	0xceb
	.uleb128 0x2b
	.4byte	.LVL2
	.4byte	0xcf6
	.4byte	0xc32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL3
	.4byte	0xd01
	.uleb128 0x2a
	.4byte	.LVL5
	.4byte	0xd0c
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0xd17
	.4byte	0xc64
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
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0xd17
	.4byte	0xcbc
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x40
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xbb8
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xbb8
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x25
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x25
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xbb8
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x25
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x3b
	.byte	0x25
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL12
	.4byte	0xd22
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0xbae
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	0xba6
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xb
	.byte	0x11
	.uleb128 0x2f
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xc
	.byte	0xe
	.uleb128 0x2f
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xd
	.byte	0x7
	.uleb128 0x2f
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xd
	.byte	0x8
	.uleb128 0x2f
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xc
	.byte	0x10
	.uleb128 0x2f
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xb
	.byte	0x9
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
	.uleb128 0x24
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0
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
	.byte	0
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
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xd
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE113
	.2byte	0x11
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xbb8
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF84:
	.ascii	"_dso_handle\000"
.LASF4:
	.ascii	"short int\000"
.LASF171:
	.ascii	"utmp32\000"
.LASF25:
	.ascii	"LCKR\000"
.LASF93:
	.ascii	"__sFILE\000"
.LASF83:
	.ascii	"_fnargs\000"
.LASF137:
	.ascii	"_rand48\000"
.LASF116:
	.ascii	"_emergency\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF128:
	.ascii	"_atexit0\000"
.LASF180:
	.ascii	"/mnt/fc1baefc-d6c5-4544-a806-4037b5232b05/Dropbox/F"
	.ascii	"akultet/MSUT/students/examples/LAB03/adc-output-ter"
	.ascii	"minal\000"
.LASF157:
	.ascii	"_wcrtomb_state\000"
.LASF158:
	.ascii	"_wcsrtombs_state\000"
.LASF19:
	.ascii	"MODER\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF96:
	.ascii	"_lbfsize\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF164:
	.ascii	"__locale_t\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF155:
	.ascii	"_mbrtowc_state\000"
.LASF43:
	.ascii	"AHB1LPENR\000"
.LASF173:
	.ascii	"initUSART2\000"
.LASF150:
	.ascii	"_wctomb_state\000"
.LASF73:
	.ascii	"__tm_sec\000"
.LASF57:
	.ascii	"_off_t\000"
.LASF101:
	.ascii	"_close\000"
.LASF2:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF102:
	.ascii	"_ubuf\000"
.LASF91:
	.ascii	"_base\000"
.LASF75:
	.ascii	"__tm_hour\000"
.LASF60:
	.ascii	"__wch\000"
.LASF131:
	.ascii	"__sf\000"
.LASF82:
	.ascii	"_on_exit_args\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF97:
	.ascii	"_cookie\000"
.LASF130:
	.ascii	"__sglue\000"
.LASF9:
	.ascii	"long int\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF47:
	.ascii	"APB1LPENR\000"
.LASF94:
	.ascii	"_flags\000"
.LASF86:
	.ascii	"_is_cxa\000"
.LASF112:
	.ascii	"_stdin\000"
.LASF122:
	.ascii	"_result_k\000"
.LASF12:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF126:
	.ascii	"_cvtbuf\000"
.LASF105:
	.ascii	"_offset\000"
.LASF27:
	.ascii	"PLLCFGR\000"
.LASF156:
	.ascii	"_mbsrtowcs_state\000"
.LASF142:
	.ascii	"_strtok_last\000"
.LASF154:
	.ascii	"_mbrlen_state\000"
.LASF89:
	.ascii	"_fns\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF69:
	.ascii	"_sign\000"
.LASF165:
	.ascii	"_impure_ptr\000"
.LASF114:
	.ascii	"_stderr\000"
.LASF71:
	.ascii	"_Bigint\000"
.LASF98:
	.ascii	"_read\000"
.LASF72:
	.ascii	"__tm\000"
.LASF61:
	.ascii	"__wchb\000"
.LASF28:
	.ascii	"CFGR\000"
.LASF113:
	.ascii	"_stdout\000"
.LASF125:
	.ascii	"_cvtlen\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"GPIO_TypeDef\000"
.LASF95:
	.ascii	"_file\000"
.LASF170:
	.ascii	"initLED\000"
.LASF54:
	.ascii	"RCC_TypeDef\000"
.LASF106:
	.ascii	"_data\000"
.LASF135:
	.ascii	"_niobs\000"
.LASF146:
	.ascii	"_rand_next\000"
.LASF53:
	.ascii	"PLLI2SCFGR\000"
.LASF152:
	.ascii	"_signal_buf\000"
.LASF143:
	.ascii	"_asctime_buf\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
.LASF121:
	.ascii	"_result\000"
.LASF178:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF160:
	.ascii	"_nextf\000"
.LASF56:
	.ascii	"_LOCK_T\000"
.LASF179:
	.ascii	"main.c\000"
.LASF127:
	.ascii	"_new\000"
.LASF48:
	.ascii	"APB2LPENR\000"
.LASF107:
	.ascii	"_lock\000"
.LASF139:
	.ascii	"_mult\000"
.LASF176:
	.ascii	"printUSART2\000"
.LASF99:
	.ascii	"_write\000"
.LASF78:
	.ascii	"__tm_year\000"
.LASF161:
	.ascii	"_nmalloc\000"
.LASF70:
	.ascii	"_wds\000"
.LASF169:
	.ascii	"doLED\000"
.LASF44:
	.ascii	"AHB2LPENR\000"
.LASF77:
	.ascii	"__tm_mon\000"
.LASF87:
	.ascii	"_atexit\000"
.LASF119:
	.ascii	"__sdidinit\000"
.LASF145:
	.ascii	"_gamma_signgam\000"
.LASF33:
	.ascii	"APB1RSTR\000"
.LASF59:
	.ascii	"wint_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF124:
	.ascii	"_freelist\000"
.LASF32:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF42:
	.ascii	"RESERVED3\000"
.LASF46:
	.ascii	"RESERVED4\000"
.LASF49:
	.ascii	"RESERVED5\000"
.LASF51:
	.ascii	"RESERVED6\000"
.LASF172:
	.ascii	"initSYSTIMER\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF136:
	.ascii	"_iobs\000"
.LASF159:
	.ascii	"_h_errno\000"
.LASF65:
	.ascii	"_flock_t\000"
.LASF80:
	.ascii	"__tm_yday\000"
.LASF90:
	.ascii	"__sbuf\000"
.LASF109:
	.ascii	"_flags2\000"
.LASF45:
	.ascii	"AHB3LPENR\000"
.LASF133:
	.ascii	"__FILE\000"
.LASF64:
	.ascii	"_mbstate_t\000"
.LASF167:
	.ascii	"g_led_state\000"
.LASF168:
	.ascii	"g_led_k\000"
.LASF108:
	.ascii	"_mbstate\000"
.LASF148:
	.ascii	"_mblen_state\000"
.LASF115:
	.ascii	"_inc\000"
.LASF88:
	.ascii	"_ind\000"
.LASF41:
	.ascii	"APB2ENR\000"
.LASF118:
	.ascii	"_locale\000"
.LASF120:
	.ascii	"__cleanup\000"
.LASF117:
	.ascii	"_unspecified_locale_info\000"
.LASF68:
	.ascii	"_maxwds\000"
.LASF110:
	.ascii	"_reent\000"
.LASF138:
	.ascii	"_seed\000"
.LASF177:
	.ascii	"delay_ms\000"
.LASF62:
	.ascii	"__count\000"
.LASF163:
	.ascii	"__lock\000"
.LASF63:
	.ascii	"__value\000"
.LASF100:
	.ascii	"_seek\000"
.LASF79:
	.ascii	"__tm_wday\000"
.LASF58:
	.ascii	"_fpos_t\000"
.LASF55:
	.ascii	"long double\000"
.LASF182:
	.ascii	"utmp16\000"
.LASF111:
	.ascii	"_errno\000"
.LASF132:
	.ascii	"char\000"
.LASF104:
	.ascii	"_blksize\000"
.LASF92:
	.ascii	"_size\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF67:
	.ascii	"_next\000"
.LASF174:
	.ascii	"initADC1\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF85:
	.ascii	"_fntypes\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF140:
	.ascii	"_add\000"
.LASF66:
	.ascii	"__ULong\000"
.LASF153:
	.ascii	"_getdate_err\000"
.LASF166:
	.ascii	"_global_impure_ptr\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF52:
	.ascii	"SSCGR\000"
.LASF141:
	.ascii	"_unused_rand\000"
.LASF23:
	.ascii	"BSRRL\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF134:
	.ascii	"_glue\000"
.LASF24:
	.ascii	"BSRRH\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF151:
	.ascii	"_l64a_buf\000"
.LASF129:
	.ascii	"_sig_func\000"
.LASF103:
	.ascii	"_nbuf\000"
.LASF162:
	.ascii	"_unused\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF81:
	.ascii	"__tm_isdst\000"
.LASF144:
	.ascii	"_localtime_buf\000"
.LASF74:
	.ascii	"__tm_min\000"
.LASF147:
	.ascii	"_r48\000"
.LASF149:
	.ascii	"_mbtowc_state\000"
.LASF123:
	.ascii	"_p5s\000"
.LASF181:
	.ascii	"main\000"
.LASF76:
	.ascii	"__tm_mday\000"
.LASF175:
	.ascii	"getADC1\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
