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
	.align	1
	.p2align 2,,3
	.global	getData4DAC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getData4DAC, %function
getData4DAC:
.LFB114:
	.file 1 "main.c"
	.loc 1 175 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9, d10, d11, d12, d13}
	.cfi_def_cfa_offset 64
	.cfi_offset 80, -64
	.cfi_offset 81, -60
	.cfi_offset 82, -56
	.cfi_offset 83, -52
	.cfi_offset 84, -48
	.cfi_offset 85, -44
	.cfi_offset 86, -40
	.cfi_offset 87, -36
	.cfi_offset 88, -32
	.cfi_offset 89, -28
	.cfi_offset 90, -24
	.cfi_offset 91, -20
	.loc 1 177 0
	vldr.32	s16, .L41
	.loc 1 227 0
	vldr.32	s18, .L41+4
	vldr.32	s19, .L41+8
	vldr.32	s17, .L41+12
	.loc 1 212 0
	vldr.32	s20, .L41+16
	.loc 1 216 0
	vldr.32	s21, .L41+20
	.loc 1 199 0
	vldr.32	s22, .L41+24
	vldr.32	s25, .L41+28
	vldr.32	s24, .L41+32
	mov	r4, r0
	.loc 1 218 0
	vmov.f32	s23, s16
	.loc 1 175 0
	mov	r5, r1
	add	r6, r0, #2000
.LVL1:
.L20:
	.loc 1 181 0
	cbnz	r5, .L2
	.loc 1 183 0
	vldr.32	s0, .L41+36
	vmul.f32	s0, s16, s0
	bl	sinf
.LVL2:
	vldr.32	s15, .L41+40
	vmov.f32	s14, #5.0e-1
	vfma.f32	s14, s0, s15
.LVL3:
	vadd.f32	s16, s16, s17
.LVL4:
	vmul.f32	s15, s14, s19
.LVL5:
.L3:
	.loc 1 227 0
	vcmpe.f32	s15, s18
	vmrs	APSR_nzcv, FPSCR
	ble	.L17
.L40:
	.loc 1 228 0
	movw	r3, #4095
	strh	r3, [r4]	@ movhi
.L19:
	adds	r4, r4, #2
	.loc 1 179 0 discriminator 2
	cmp	r6, r4
	bne	.L20
	.loc 1 234 0
	vldm	sp!, {d8-d13}
	.cfi_remember_state
	.cfi_restore 90
	.cfi_restore 91
	.cfi_restore 88
	.cfi_restore 89
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
	pop	{r4, r5, r6, pc}
.LVL6:
.L2:
	.cfi_restore_state
	.loc 1 185 0
	cmp	r5, #1
	beq	.L37
	.loc 1 189 0
	cmp	r5, #2
	beq	.L38
	.loc 1 210 0
	cmp	r5, #3
	beq	.L39
	vmul.f32	s15, s14, s19
.LVL7:
	vadd.f32	s16, s16, s17
	.loc 1 227 0
	vcmpe.f32	s15, s18
	vmrs	APSR_nzcv, FPSCR
	bgt	.L40
.LVL8:
.L17:
	vcvt.u32.f32	s15, s15
	vmov	r3, s15	@ int
	uxth	r3, r3
.LVL9:
.L21:
	.loc 1 230 0
	strh	r3, [r4]	@ movhi
	b	.L19
.LVL10:
.L37:
	.loc 1 187 0
	vldr.32	s0, .L41+44
	vmul.f32	s0, s16, s0
	bl	sinf
.LVL11:
	vmov.f32	s26, s0
	vldr.32	s0, .L41+48
	vmul.f32	s0, s16, s0
	bl	sinf
.LVL12:
	vldr.32	s13, .L41+52
	vldr.32	s15, .L41+56
	vmov.f32	s14, #5.0e-1
	vfma.f32	s14, s26, s13
	vadd.f32	s16, s16, s17
.LVL13:
	vfma.f32	s14, s0, s15
.LVL14:
	vmul.f32	s15, s14, s19
	b	.L3
.LVL15:
.L38:
	.loc 1 191 0
	vcmpe.f32	s16, s20
	vmrs	APSR_nzcv, FPSCR
	bpl	.L29
.LVL16:
	.loc 1 193 0
	vdiv.f32	s15, s16, s20
	vmov.f32	s14, #1.0e+0
.LVL17:
.L35:
	.loc 1 197 0
	vadd.f32	s15, s15, s14
	vmov.f32	s13, #3.0e+0
	vdiv.f32	s14, s15, s13
	vadd.f32	s16, s16, s17
.LVL18:
	vmul.f32	s15, s14, s19
	b	.L3
.LVL19:
.L39:
	.loc 1 212 0
	vcmpe.f32	s16, s20
	vmrs	APSR_nzcv, FPSCR
	bmi	.L14
	.loc 1 216 0
	vcmpe.f32	s16, s21
	vmrs	APSR_nzcv, FPSCR
	bpl	.L32
	vadd.f32	s16, s16, s17
.LVL20:
	movs	r3, #0
	.loc 1 218 0
	vmov.f32	s14, s23
.LVL21:
	b	.L21
.LVL22:
.L29:
	.loc 1 195 0
	vcmpe.f32	s16, s21
	vmrs	APSR_nzcv, FPSCR
	bpl	.L30
.LVL23:
	.loc 1 197 0
	vsub.f32	s14, s16, s20
	vmov.f32	s15, #-2.0e+0
	vmul.f32	s14, s14, s15
	vldr.32	s13, .L41+60
	vdiv.f32	s15, s14, s13
	vmov.f32	s14, #2.0e+0
	b	.L35
.LVL24:
.L14:
	vadd.f32	s16, s16, s17
.LVL25:
	.loc 1 212 0
	movw	r3, #2047
	.loc 1 214 0
	vmov.f32	s14, #5.0e-1
.LVL26:
	b	.L21
.LVL27:
.L30:
	.loc 1 199 0
	vcmpe.f32	s16, s22
	vmrs	APSR_nzcv, FPSCR
	bpl	.L31
.LVL28:
	.loc 1 201 0
	vsub.f32	s14, s16, s21
	vldr.32	s15, .L41+64
	vdiv.f32	s13, s14, s15
	vmov.f32	s15, #3.0e+0
	vdiv.f32	s14, s13, s15
	vadd.f32	s16, s16, s17
.LVL29:
	vmul.f32	s15, s14, s19
	b	.L3
.LVL30:
.L32:
	vldr.32	s16, .L41+12
.LVL31:
	movw	r3, #2047
	.loc 1 223 0
	vmov.f32	s14, #5.0e-1
.LVL32:
	b	.L21
.LVL33:
.L31:
	.loc 1 199 0
	vldr.32	s16, .L41+12
	vmov.f32	s15, s25
	vmov.f32	s14, s24
	b	.L17
.L42:
	.align	2
.L41:
	.word	0
	.word	1166012416
	.word	1166008320
	.word	953267991
	.word	981668463
	.word	994352038
	.word	998445679
	.word	1152030038
	.word	1051372203
	.word	1170495857
	.word	1050253722
	.word	1147903624
	.word	1167922266
	.word	1045220557
	.word	1036831949
	.word	990057070
	.word	981668464
	.cfi_endproc
.LFE114:
	.size	getData4DAC, .-getData4DAC
	.align	1
	.p2align 2,,3
	.global	serviceIRQA
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	serviceIRQA, %function
serviceIRQA:
.LFB115:
	.loc 1 237 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 238 0
	ldr	r4, .L53
	ldrb	r3, [r4]	@ zero_extendqisi2
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L45
	cmp	r3, #3
	beq	.L46
	cmp	r3, #1
	beq	.L52
.L43:
	.loc 1 274 0
	pop	{r4, pc}
.L52:
	.loc 1 246 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r4, #1]
	.loc 1 247 0
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #3
	.loc 1 248 0
	itt	hi
	movhi	r3, #0
	strbhi	r3, [r4, #1]
	.loc 1 250 0
	movs	r3, #2
	strb	r3, [r4]
	.loc 1 274 0
	pop	{r4, pc}
.L46:
	.loc 1 264 0
	ldr	r0, [r4, #4]
	movs	r1, #50
	bl	chk4TimeoutSYSTIM
.LVL34:
	cmp	r0, #0
	bne	.L43
	.loc 1 266 0
	strb	r0, [r4]
	.loc 1 274 0
	pop	{r4, pc}
.L45:
	.loc 1 255 0
	ldr	r3, .L53+4
	ldr	r3, [r3, #16]
	lsls	r3, r3, #31
	bmi	.L43
.LBB7:
.LBB8:
	.loc 1 257 0
	movs	r3, #3
	strb	r3, [r4]
	.loc 1 258 0
	bl	getSYSTIM
.LVL35:
	str	r0, [r4, #4]
.LBE8:
.LBE7:
	.loc 1 274 0
	pop	{r4, pc}
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.word	1073872896
	.cfi_endproc
.LFE115:
	.size	serviceIRQA, .-serviceIRQA
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
	.loc 1 31 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8048
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 44 0
	ldr	r2, .L91
	.loc 1 32 0
	ldr	r3, .L91+4
	.loc 1 45 0
	ldr	r4, .L91+8
	.loc 1 32 0
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	.loc 1 44 0
	ldr	r1, [r2, #48]
	.loc 1 50 0
	ldr	r3, .L91+12
	.loc 1 49 0
	ldr	r0, .L91+16
.LBB9:
.LBB10:
	.file 2 "../../../sdk/core_cm4.h"
	.loc 2 1075 0
	ldr	r6, .L91+20
.LBE10:
.LBE9:
.LBB13:
	.loc 1 145 0
	ldr	r5, .L91+24
.LBE13:
	.loc 1 44 0
	orr	r1, r1, #1
	str	r1, [r2, #48]
	.loc 1 45 0
	ldr	r1, [r4]
	bic	r1, r1, #3
	str	r1, [r4]
	.loc 1 47 0
	ldr	r1, [r2, #68]
.LBB14:
.LBB11:
	.loc 2 1075 0
	mov	ip, #64
.LBE11:
.LBE14:
	.loc 1 47 0
	orr	r1, r1, #16384
	.loc 1 49 0
	movs	r4, #0
	.loc 1 50 0
	movs	r7, #1
	.loc 1 47 0
	str	r1, [r2, #68]
.LBB15:
.LBB12:
	.loc 2 1075 0
	str	ip, [r6]
.LBE12:
.LBE15:
	.loc 1 49 0
	str	r4, [r0, #8]
	.loc 1 50 0
	str	r7, [r3]
	.loc 1 51 0
	ldr	r2, [r3, #4]
	.loc 1 31 0
	sub	sp, sp, #8032
	.cfi_def_cfa_offset 8068
	sub	sp, sp, #20
	.cfi_def_cfa_offset 8088
	.loc 1 51 0
	bic	r2, r2, #1
	str	r2, [r3, #4]
	.loc 1 52 0
	str	r7, [r3, #8]
	.loc 1 53 0
	str	r4, [r3, #12]
	.loc 1 32 0
	uxtb	r3, r10
	str	r3, [sp, #4]
.LVL36:
	.loc 1 56 0
	bl	initSYSTIM
.LVL37:
	.loc 1 58 0
	movs	r0, #45
	bl	initUSART2
.LVL38:
	.loc 1 61 0
	add	r9, sp, #4048
	.loc 1 60 0
	mov	r1, r4
	add	r0, sp, #48
	bl	getData4DAC
.LVL39:
	.loc 1 61 0
	mov	r0, r9
	mov	r2, #1000
	add	r1, sp, #6048
	bl	initDmaADC1
.LVL40:
	add	r7, sp, #5024
	.loc 1 62 0
	add	r0, sp, #2048
	mov	r1, #1000
	add	r6, sp, #7040
	bl	initDmaDAC1
.LVL41:
	adds	r7, r7, #22
.LBB16:
	.loc 1 128 0
	str	r4, [sp]
	adds	r6, r6, #6
.LVL42:
.L74:
	.loc 1 66 0
	bl	getcharUSART2
.LVL43:
	.loc 1 67 0
	ldr	r3, .L91+28
	ldr	r3, [r3]
	lsls	r3, r3, #12
	bpl	.L56
	addw	r8, sp, #4046
	mov	r4, r8
.L57:
	.loc 1 72 0 discriminator 3
	ldrh	r10, [r4, #2]!
.LVL44:
	.loc 1 73 0 discriminator 3
	lsr	r0, r10, #8
	bl	putcharUSART2
.LVL45:
	.loc 1 74 0 discriminator 3
	uxtb	r0, r10
	bl	putcharUSART2
.LVL46:
	.loc 1 70 0 discriminator 3
	cmp	r7, r4
	bne	.L57
	.loc 1 79 0
	movs	r2, #0
	.loc 1 80 0
	mov	r3, r2
	b	.L60
.LVL47:
.L88:
	.loc 1 84 0
	add	r0, sp, #8
	ldr	r1, [sp]
	strh	r1, [r0, r3, lsl #1]	@ movhi
	.loc 1 80 0
	adds	r3, r3, #1
.LVL48:
	cmp	r3, #20
	beq	.L87
.LVL49:
.L60:
	.loc 1 82 0
	cmp	r3, #9
	bls	.L88
	.loc 1 88 0
	add	r0, sp, #8
	ldrh	r1, [r9, r2, lsl #1]
	strh	r1, [r0, r3, lsl #1]	@ movhi
	.loc 1 80 0
	adds	r3, r3, #1
.LVL50:
	cmp	r3, #20
	.loc 1 89 0
	add	r2, r2, #1
.LVL51:
	.loc 1 80 0
	bne	.L60
.L87:
	.loc 1 92 0
	mov	fp, #0
.LVL52:
.L61:
	add	r3, sp, #6
	add	r0, sp, #46
	.loc 1 96 0
	movs	r2, #0
.LVL53:
.L62:
	.loc 1 99 0 discriminator 3
	ldrh	r1, [r3, #2]!
	.loc 1 97 0 discriminator 3
	cmp	r0, r3
	.loc 1 99 0 discriminator 3
	add	r2, r2, r1
.LVL54:
	.loc 1 97 0 discriminator 3
	bne	.L62
	.loc 1 101 0
	umull	r3, r2, r5, r2
.LVL55:
	lsr	r10, r2, #4
.LVL56:
	.loc 1 103 0
	ubfx	r0, r10, #8, #8
	.loc 1 106 0
	add	fp, fp, #1
.LVL57:
	.loc 1 103 0
	bl	putcharUSART2
.LVL58:
	.loc 1 106 0
	uxth	fp, fp
	.loc 1 104 0
	uxtb	r0, r10
	bl	putcharUSART2
.LVL59:
	.loc 1 107 0
	cmp	fp, #20
	.loc 1 110 0
	ldrh	r2, [r8, #2]!
	it	eq
	moveq	fp, #0
.LVL60:
	add	r1, sp, #8
	.loc 1 94 0
	cmp	r4, r8
	.loc 1 110 0
	strh	r2, [r1, fp, lsl #1]	@ movhi
	.loc 1 94 0
	bne	.L61
.L64:
	addw	r4, sp, #2046
	add	fp, sp, #46
.LVL61:
	mov	r10, r4
.LVL62:
.L72:
	.loc 1 160 0 discriminator 3
	ldrh	r8, [fp, #2]!
	bl	genRIN
.LVL63:
	.loc 1 158 0 discriminator 3
	cmp	r10, fp
	.loc 1 160 0 discriminator 3
	add	r0, r8, r0, lsr #23
	strh	r0, [r4, #2]!	@ movhi
	.loc 1 158 0 discriminator 3
	bne	.L72
	.loc 1 164 0
	ldr	r2, .L91+4
	ldr	r1, [sp, #4]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	cmp	r3, r1
	beq	.L73
	.loc 1 166 0
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	.loc 1 167 0
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	.loc 1 166 0
	uxtb	r3, r4
	.loc 1 167 0
	add	r0, sp, #48
	.loc 1 166 0
	str	r3, [sp, #4]
.LVL64:
	.loc 1 167 0
	bl	getData4DAC
.LVL65:
.L73:
	.loc 1 170 0
	bl	serviceIRQA
.LVL66:
.LBE16:
	.loc 1 65 0
	b	.L74
.L56:
	add	r8, sp, #6016
	add	r8, r8, #30
.LBB17:
	.loc 1 67 0
	mov	r4, r8
.L65:
	.loc 1 117 0 discriminator 3
	ldrh	r10, [r4, #2]!
.LVL67:
	.loc 1 118 0 discriminator 3
	lsr	r0, r10, #8
	bl	putcharUSART2
.LVL68:
	.loc 1 119 0 discriminator 3
	uxtb	r0, r10
	bl	putcharUSART2
.LVL69:
	.loc 1 115 0 discriminator 3
	cmp	r6, r4
	bne	.L65
	.loc 1 123 0
	movs	r2, #0
	.loc 1 124 0
	mov	r3, r2
	b	.L68
.LVL70:
.L90:
	.loc 1 128 0
	add	r0, sp, #8
	ldr	r1, [sp]
	strh	r1, [r0, r3, lsl #1]	@ movhi
	.loc 1 124 0
	adds	r3, r3, #1
.LVL71:
	cmp	r3, #20
	beq	.L89
.LVL72:
.L68:
	.loc 1 126 0
	cmp	r3, #9
	bls	.L90
	.loc 1 132 0
	add	r0, sp, #8
	ldrh	r1, [r9, r2, lsl #1]
	strh	r1, [r0, r3, lsl #1]	@ movhi
	.loc 1 124 0
	adds	r3, r3, #1
.LVL73:
	cmp	r3, #20
	.loc 1 133 0
	add	r2, r2, #1
.LVL74:
	.loc 1 124 0
	bne	.L68
.L89:
	.loc 1 136 0
	mov	fp, #0
.LVL75:
.L69:
	add	r3, sp, #6
	add	r0, sp, #46
	.loc 1 140 0
	movs	r2, #0
.LVL76:
.L70:
	.loc 1 143 0 discriminator 3
	ldrh	r1, [r3, #2]!
	.loc 1 141 0 discriminator 3
	cmp	r0, r3
	.loc 1 143 0 discriminator 3
	add	r2, r2, r1
.LVL77:
	.loc 1 141 0 discriminator 3
	bne	.L70
	.loc 1 145 0
	umull	r3, r2, r5, r2
.LVL78:
	lsr	r10, r2, #4
.LVL79:
	.loc 1 146 0
	ubfx	r0, r10, #8, #8
	.loc 1 149 0
	add	fp, fp, #1
.LVL80:
	.loc 1 146 0
	bl	putcharUSART2
.LVL81:
	.loc 1 149 0
	uxth	fp, fp
	.loc 1 147 0
	uxtb	r0, r10
	bl	putcharUSART2
.LVL82:
	.loc 1 150 0
	cmp	fp, #20
	.loc 1 153 0
	ldrh	r2, [r8, #2]!
	it	eq
	moveq	fp, #0
.LVL83:
	add	r1, sp, #8
	.loc 1 138 0
	cmp	r4, r8
	.loc 1 153 0
	strh	r2, [r1, fp, lsl #1]	@ movhi
	.loc 1 138 0
	bne	.L69
	b	.L64
.L92:
	.align	2
.L91:
	.word	1073887232
	.word	.LANCHOR0
	.word	1073872896
	.word	1073822720
	.word	1073821696
	.word	-536813312
	.word	-858993459
	.word	1073898512
.LBE17:
	.cfi_endproc
.LFE113:
	.size	main, .-main
	.text
	.align	1
	.p2align 2,,3
	.global	EXTI0_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	EXTI0_IRQHandler, %function
EXTI0_IRQHandler:
.LFB116:
	.loc 1 277 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 278 0
	ldr	r3, .L100
	ldr	r3, [r3, #20]
	lsls	r3, r3, #31
	bpl	.L93
	.loc 1 280 0
	ldr	r3, .L100+4
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbz	r2, .L99
.L95:
	.loc 1 284 0
	ldr	r3, .L100
	movs	r2, #1
	str	r2, [r3, #20]
.L93:
	.loc 1 286 0
	bx	lr
.L99:
	.loc 1 282 0
	movs	r2, #1
	strb	r2, [r3]
	b	.L95
.L101:
	.align	2
.L100:
	.word	1073822720
	.word	.LANCHOR0
	.cfi_endproc
.LFE116:
	.size	EXTI0_IRQHandler, .-EXTI0_IRQHandler
	.global	g_pbtn_cnt
	.global	g_irq_timer
	.global	g_gpioa_irq_state
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_gpioa_irq_state, %object
	.size	g_gpioa_irq_state, 1
g_gpioa_irq_state:
	.space	1
	.type	g_pbtn_cnt, %object
	.size	g_pbtn_cnt, 1
g_pbtn_cnt:
	.space	1
	.space	2
	.type	g_irq_timer, %object
	.size	g_irq_timer, 4
g_irq_timer:
	.space	4
	.text
.Letext0:
	.file 3 "../../../sdk/stm32f4xx.h"
	.file 4 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "../../../sdk/system_stm32f4xx.h"
	.file 7 "delay.h"
	.file 8 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 9 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 10 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 11 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 12 "/mnt/ssd/Dropbox/Fakultet/MSUT/students/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 13 "usart.h"
	.file 14 "rand.h"
	.file 15 "adc.h"
	.file 16 "dac.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1499
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF313
	.byte	0xc
	.4byte	.LASF314
	.4byte	.LASF315
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF90
	.uleb128 0x3
	.4byte	.LASF282
	.byte	0x5
	.byte	0x1
	.4byte	0x25a
	.byte	0x3
	.byte	0x91
	.4byte	0x25a
	.uleb128 0x4
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x4
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x4
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x4
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x4
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x4
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x4
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0xf
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x13
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x15
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x16
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x17
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x19
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x1a
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x1b
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x1d
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x1e
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x1f
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x21
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x22
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x23
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x25
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x26
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x27
	.uleb128 0x5
	.4byte	.LASF48
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x29
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x2a
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x2b
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x2c
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x2d
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x2e
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x2f
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x30
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x31
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x32
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x33
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0x34
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x35
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x36
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x37
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x38
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x39
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x3a
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x3b
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x3d
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x3e
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x3f
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x40
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x41
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x42
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x43
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x44
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x45
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0x46
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0x47
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x48
	.uleb128 0x5
	.4byte	.LASF81
	.byte	0x49
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x4a
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0x4b
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF85
	.byte	0x4d
	.uleb128 0x5
	.4byte	.LASF86
	.byte	0x4e
	.uleb128 0x5
	.4byte	.LASF87
	.byte	0x4f
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x50
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0x51
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF91
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x3
	.byte	0xef
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x4
	.byte	0x2b
	.4byte	0x277
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF95
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x4
	.byte	0x39
	.4byte	0x290
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF97
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x4
	.byte	0x4d
	.4byte	0x2a2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x4
	.byte	0x4f
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF101
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF102
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF104
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x5
	.byte	0x18
	.4byte	0x26c
	.uleb128 0x8
	.4byte	0x2d7
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x5
	.byte	0x24
	.4byte	0x285
	.uleb128 0x8
	.4byte	0x2e7
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x5
	.byte	0x2c
	.4byte	0x297
	.uleb128 0x8
	.4byte	0x2f7
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x5
	.byte	0x30
	.4byte	0x2a9
	.uleb128 0x8
	.4byte	0x307
	.uleb128 0x9
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.4byte	0x3d3
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x132
	.4byte	0x3e3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x133
	.4byte	0x3e8
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x134
	.4byte	0x3e3
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x135
	.4byte	0x3e8
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x136
	.4byte	0x3e3
	.2byte	0x100
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x137
	.4byte	0x3e8
	.2byte	0x120
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x138
	.4byte	0x3e3
	.2byte	0x180
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x139
	.4byte	0x3e8
	.2byte	0x1a0
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13a
	.4byte	0x3e3
	.2byte	0x200
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13b
	.4byte	0x3f8
	.2byte	0x220
	.uleb128 0xc
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x418
	.2byte	0x300
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x13d
	.4byte	0x41d
	.2byte	0x3f0
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x13e
	.4byte	0x312
	.2byte	0xe00
	.byte	0
	.uleb128 0xd
	.4byte	0x312
	.4byte	0x3e3
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x3d3
	.uleb128 0xd
	.4byte	0x307
	.4byte	0x3f8
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0x307
	.4byte	0x408
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x37
	.byte	0
	.uleb128 0xd
	.4byte	0x2e2
	.4byte	0x418
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	0x408
	.uleb128 0xd
	.4byte	0x307
	.4byte	0x42e
	.uleb128 0xf
	.4byte	0x2d0
	.2byte	0x283
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x13f
	.4byte	0x317
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x51b
	.4byte	0x302
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0x6
	.byte	0x35
	.4byte	0x307
	.uleb128 0x13
	.byte	0x18
	.byte	0x3
	.2byte	0x1d7
	.4byte	0x4a8
	.uleb128 0x14
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x1d9
	.4byte	0x312
	.byte	0
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x1da
	.4byte	0x312
	.byte	0x4
	.uleb128 0x14
	.ascii	"PAR\000"
	.byte	0x3
	.2byte	0x1db
	.4byte	0x312
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x1dc
	.4byte	0x312
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x1dd
	.4byte	0x312
	.byte	0x10
	.uleb128 0x14
	.ascii	"FCR\000"
	.byte	0x3
	.2byte	0x1de
	.4byte	0x312
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x1df
	.4byte	0x451
	.uleb128 0xd
	.4byte	0x307
	.4byte	0x4c4
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0x18
	.byte	0x3
	.2byte	0x237
	.4byte	0x51b
	.uleb128 0x14
	.ascii	"IMR\000"
	.byte	0x3
	.2byte	0x239
	.4byte	0x312
	.byte	0
	.uleb128 0x14
	.ascii	"EMR\000"
	.byte	0x3
	.2byte	0x23a
	.4byte	0x312
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x23b
	.4byte	0x312
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x23c
	.4byte	0x312
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x23d
	.4byte	0x312
	.byte	0x10
	.uleb128 0x14
	.ascii	"PR\000"
	.byte	0x3
	.2byte	0x23e
	.4byte	0x312
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x23f
	.4byte	0x4c4
	.uleb128 0x13
	.byte	0x28
	.byte	0x3
	.2byte	0x28e
	.4byte	0x5b3
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x290
	.4byte	0x312
	.byte	0
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x291
	.4byte	0x312
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x292
	.4byte	0x312
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x293
	.4byte	0x312
	.byte	0xc
	.uleb128 0x14
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x294
	.4byte	0x312
	.byte	0x10
	.uleb128 0x14
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x295
	.4byte	0x312
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x296
	.4byte	0x2f2
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x297
	.4byte	0x2f2
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x298
	.4byte	0x312
	.byte	0x1c
	.uleb128 0x14
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x299
	.4byte	0x5c3
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x312
	.4byte	0x5c3
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x5b3
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x29a
	.4byte	0x527
	.uleb128 0x13
	.byte	0x24
	.byte	0x3
	.2byte	0x2a0
	.4byte	0x61f
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x2a2
	.4byte	0x312
	.byte	0
	.uleb128 0x14
	.ascii	"PMC\000"
	.byte	0x3
	.2byte	0x2a3
	.4byte	0x312
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x2a4
	.4byte	0x62f
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2a5
	.4byte	0x4b4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x2a6
	.4byte	0x312
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x312
	.4byte	0x62f
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x61f
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2a7
	.4byte	0x5d4
	.uleb128 0x13
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x7cf
	.uleb128 0x14
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.4byte	0x312
	.byte	0
	.uleb128 0xa
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2e0
	.4byte	0x312
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2e1
	.4byte	0x312
	.byte	0x8
	.uleb128 0x14
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.4byte	0x312
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x312
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x312
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2e5
	.4byte	0x312
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x2e6
	.4byte	0x307
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x312
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x2e8
	.4byte	0x312
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x4b4
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x2ea
	.4byte	0x312
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x312
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x2ec
	.4byte	0x312
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x307
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x2ee
	.4byte	0x312
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x2ef
	.4byte	0x312
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x4b4
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x2f1
	.4byte	0x312
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x2f2
	.4byte	0x312
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x312
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f4
	.4byte	0x307
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x2f5
	.4byte	0x312
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x2f6
	.4byte	0x312
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x2f7
	.4byte	0x4b4
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x2f8
	.4byte	0x312
	.byte	0x70
	.uleb128 0x14
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x312
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x2fa
	.4byte	0x4b4
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x2fb
	.4byte	0x312
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x2fc
	.4byte	0x312
	.byte	0x84
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x2fd
	.4byte	0x640
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x7
	.byte	0x1c
	.4byte	0x312
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF169
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF170
	.byte	0x8
	.byte	0x22
	.4byte	0x7fa
	.uleb128 0x16
	.byte	0x4
	.4byte	0x800
	.uleb128 0x17
	.4byte	.LASF277
	.uleb128 0x6
	.4byte	.LASF171
	.byte	0x9
	.byte	0x2c
	.4byte	0x2a2
	.uleb128 0x6
	.4byte	.LASF172
	.byte	0x9
	.byte	0x72
	.4byte	0x2a2
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x165
	.4byte	0x2d0
	.uleb128 0x18
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.4byte	0x846
	.uleb128 0x19
	.4byte	.LASF174
	.byte	0x9
	.byte	0xa8
	.4byte	0x81b
	.uleb128 0x19
	.4byte	.LASF175
	.byte	0x9
	.byte	0xa9
	.4byte	0x846
	.byte	0
	.uleb128 0xd
	.4byte	0x277
	.4byte	0x856
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.byte	0x9
	.byte	0xa3
	.4byte	0x877
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x9
	.byte	0xa5
	.4byte	0x2c9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x9
	.byte	0xaa
	.4byte	0x827
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF178
	.byte	0x9
	.byte	0xab
	.4byte	0x856
	.uleb128 0x6
	.4byte	.LASF179
	.byte	0x9
	.byte	0xaf
	.4byte	0x7ef
	.uleb128 0x6
	.4byte	.LASF180
	.byte	0xb
	.byte	0x16
	.4byte	0x2b4
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0x18
	.byte	0xb
	.byte	0x2f
	.4byte	0x8eb
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0xb
	.byte	0x31
	.4byte	0x8eb
	.byte	0
	.uleb128 0x1d
	.ascii	"_k\000"
	.byte	0xb
	.byte	0x32
	.4byte	0x2c9
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF182
	.byte	0xb
	.byte	0x32
	.4byte	0x2c9
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF183
	.byte	0xb
	.byte	0x32
	.4byte	0x2c9
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF184
	.byte	0xb
	.byte	0x32
	.4byte	0x2c9
	.byte	0x10
	.uleb128 0x1d
	.ascii	"_x\000"
	.byte	0xb
	.byte	0x33
	.4byte	0x8f1
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x898
	.uleb128 0xd
	.4byte	0x88d
	.4byte	0x901
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF186
	.byte	0x24
	.byte	0xb
	.byte	0x37
	.4byte	0x97a
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0xb
	.byte	0x39
	.4byte	0x2c9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0xb
	.byte	0x3a
	.4byte	0x2c9
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0xb
	.byte	0x3b
	.4byte	0x2c9
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0xb
	.byte	0x3c
	.4byte	0x2c9
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0xb
	.byte	0x3d
	.4byte	0x2c9
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF192
	.byte	0xb
	.byte	0x3e
	.4byte	0x2c9
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0xb
	.byte	0x3f
	.4byte	0x2c9
	.byte	0x18
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0xb
	.byte	0x40
	.4byte	0x2c9
	.byte	0x1c
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0xb
	.byte	0x41
	.4byte	0x2c9
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF196
	.2byte	0x108
	.byte	0xb
	.byte	0x4a
	.4byte	0x9ba
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0xb
	.byte	0x4b
	.4byte	0x9ba
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0xb
	.byte	0x4c
	.4byte	0x9ba
	.byte	0x80
	.uleb128 0x1f
	.4byte	.LASF199
	.byte	0xb
	.byte	0x4e
	.4byte	0x88d
	.2byte	0x100
	.uleb128 0x1f
	.4byte	.LASF200
	.byte	0xb
	.byte	0x51
	.4byte	0x88d
	.2byte	0x104
	.byte	0
	.uleb128 0xd
	.4byte	0x7ed
	.4byte	0x9ca
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x1f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF201
	.2byte	0x190
	.byte	0xb
	.byte	0x5d
	.4byte	0xa08
	.uleb128 0x1b
	.4byte	.LASF181
	.byte	0xb
	.byte	0x5e
	.4byte	0xa08
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0xb
	.byte	0x5f
	.4byte	0x2c9
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0xb
	.byte	0x61
	.4byte	0xa0e
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF196
	.byte	0xb
	.byte	0x62
	.4byte	0x97a
	.byte	0x88
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x9ca
	.uleb128 0xd
	.4byte	0xa1e
	.4byte	0xa1e
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xa24
	.uleb128 0x20
	.uleb128 0x1c
	.4byte	.LASF204
	.byte	0x8
	.byte	0xb
	.byte	0x75
	.4byte	0xa4a
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0xb
	.byte	0x76
	.4byte	0xa4a
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF206
	.byte	0xb
	.byte	0x77
	.4byte	0x2c9
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x277
	.uleb128 0x1c
	.4byte	.LASF207
	.byte	0x68
	.byte	0xb
	.byte	0xb5
	.4byte	0xb7a
	.uleb128 0x1d
	.ascii	"_p\000"
	.byte	0xb
	.byte	0xb6
	.4byte	0xa4a
	.byte	0
	.uleb128 0x1d
	.ascii	"_r\000"
	.byte	0xb
	.byte	0xb7
	.4byte	0x2c9
	.byte	0x4
	.uleb128 0x1d
	.ascii	"_w\000"
	.byte	0xb
	.byte	0xb8
	.4byte	0x2c9
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0xb
	.byte	0xb9
	.4byte	0x27e
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF209
	.byte	0xb
	.byte	0xba
	.4byte	0x27e
	.byte	0xe
	.uleb128 0x1d
	.ascii	"_bf\000"
	.byte	0xb
	.byte	0xbb
	.4byte	0xa25
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF210
	.byte	0xb
	.byte	0xbc
	.4byte	0x2c9
	.byte	0x18
	.uleb128 0x1b
	.4byte	.LASF211
	.byte	0xb
	.byte	0xc3
	.4byte	0x7ed
	.byte	0x1c
	.uleb128 0x1b
	.4byte	.LASF212
	.byte	0xb
	.byte	0xc5
	.4byte	0xce7
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF213
	.byte	0xb
	.byte	0xc7
	.4byte	0xd11
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF214
	.byte	0xb
	.byte	0xca
	.4byte	0xd35
	.byte	0x28
	.uleb128 0x1b
	.4byte	.LASF215
	.byte	0xb
	.byte	0xcb
	.4byte	0xd4f
	.byte	0x2c
	.uleb128 0x1d
	.ascii	"_ub\000"
	.byte	0xb
	.byte	0xce
	.4byte	0xa25
	.byte	0x30
	.uleb128 0x1d
	.ascii	"_up\000"
	.byte	0xb
	.byte	0xcf
	.4byte	0xa4a
	.byte	0x38
	.uleb128 0x1d
	.ascii	"_ur\000"
	.byte	0xb
	.byte	0xd0
	.4byte	0x2c9
	.byte	0x3c
	.uleb128 0x1b
	.4byte	.LASF216
	.byte	0xb
	.byte	0xd3
	.4byte	0xd55
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF217
	.byte	0xb
	.byte	0xd4
	.4byte	0xd65
	.byte	0x43
	.uleb128 0x1d
	.ascii	"_lb\000"
	.byte	0xb
	.byte	0xd7
	.4byte	0xa25
	.byte	0x44
	.uleb128 0x1b
	.4byte	.LASF218
	.byte	0xb
	.byte	0xda
	.4byte	0x2c9
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF219
	.byte	0xb
	.byte	0xdb
	.4byte	0x805
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF220
	.byte	0xb
	.byte	0xde
	.4byte	0xb98
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF221
	.byte	0xb
	.byte	0xe2
	.4byte	0x882
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF222
	.byte	0xb
	.byte	0xe4
	.4byte	0x877
	.byte	0x5c
	.uleb128 0x1b
	.4byte	.LASF223
	.byte	0xb
	.byte	0xe5
	.4byte	0x2c9
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.4byte	0x2c9
	.4byte	0xb98
	.uleb128 0x22
	.4byte	0xb98
	.uleb128 0x22
	.4byte	0x7ed
	.uleb128 0x22
	.4byte	0xcd5
	.uleb128 0x22
	.4byte	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xba3
	.uleb128 0x23
	.4byte	0xb98
	.uleb128 0x24
	.4byte	.LASF224
	.2byte	0x428
	.byte	0xb
	.2byte	0x260
	.4byte	0xcd5
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0xb
	.2byte	0x262
	.4byte	0x2c9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0xb
	.2byte	0x267
	.4byte	0xdbc
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0xb
	.2byte	0x267
	.4byte	0xdbc
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xb
	.2byte	0x267
	.4byte	0xdbc
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0xb
	.2byte	0x269
	.4byte	0x2c9
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0xb
	.2byte	0x26a
	.4byte	0xf9e
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0xb
	.2byte	0x26d
	.4byte	0x2c9
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF232
	.byte	0xb
	.2byte	0x26e
	.4byte	0xfb3
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF233
	.byte	0xb
	.2byte	0x270
	.4byte	0x2c9
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF234
	.byte	0xb
	.2byte	0x272
	.4byte	0xfc4
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF235
	.byte	0xb
	.2byte	0x275
	.4byte	0x8eb
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0xb
	.2byte	0x276
	.4byte	0x2c9
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0xb
	.2byte	0x277
	.4byte	0x8eb
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0xb
	.2byte	0x278
	.4byte	0xfca
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0xb
	.2byte	0x27b
	.4byte	0x2c9
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0xb
	.2byte	0x27c
	.4byte	0xcd5
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0xb
	.2byte	0x29f
	.4byte	0xf7c
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0xb
	.2byte	0x2a3
	.4byte	0xa08
	.2byte	0x148
	.uleb128 0xb
	.4byte	.LASF242
	.byte	0xb
	.2byte	0x2a4
	.4byte	0x9ca
	.2byte	0x14c
	.uleb128 0xb
	.4byte	.LASF243
	.byte	0xb
	.2byte	0x2a8
	.4byte	0xfdb
	.2byte	0x2dc
	.uleb128 0xb
	.4byte	.LASF244
	.byte	0xb
	.2byte	0x2ad
	.4byte	0xd81
	.2byte	0x2e0
	.uleb128 0xb
	.4byte	.LASF245
	.byte	0xb
	.2byte	0x2af
	.4byte	0xfe7
	.2byte	0x2ec
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xcdb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF246
	.uleb128 0x23
	.4byte	0xcdb
	.uleb128 0x16
	.byte	0x4
	.4byte	0xb7a
	.uleb128 0x21
	.4byte	0x2c9
	.4byte	0xd0b
	.uleb128 0x22
	.4byte	0xb98
	.uleb128 0x22
	.4byte	0x7ed
	.uleb128 0x22
	.4byte	0xd0b
	.uleb128 0x22
	.4byte	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xce2
	.uleb128 0x16
	.byte	0x4
	.4byte	0xced
	.uleb128 0x21
	.4byte	0x810
	.4byte	0xd35
	.uleb128 0x22
	.4byte	0xb98
	.uleb128 0x22
	.4byte	0x7ed
	.uleb128 0x22
	.4byte	0x810
	.uleb128 0x22
	.4byte	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xd17
	.uleb128 0x21
	.4byte	0x2c9
	.4byte	0xd4f
	.uleb128 0x22
	.4byte	0xb98
	.uleb128 0x22
	.4byte	0x7ed
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xd3b
	.uleb128 0xd
	.4byte	0x277
	.4byte	0xd65
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x277
	.4byte	0xd75
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF247
	.byte	0xb
	.2byte	0x11f
	.4byte	0xa50
	.uleb128 0x25
	.4byte	.LASF248
	.byte	0xc
	.byte	0xb
	.2byte	0x123
	.4byte	0xdb6
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x125
	.4byte	0xdb6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF249
	.byte	0xb
	.2byte	0x126
	.4byte	0x2c9
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF250
	.byte	0xb
	.2byte	0x127
	.4byte	0xdbc
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xd81
	.uleb128 0x16
	.byte	0x4
	.4byte	0xd75
	.uleb128 0x25
	.4byte	.LASF251
	.byte	0xe
	.byte	0xb
	.2byte	0x13f
	.4byte	0xdf7
	.uleb128 0xa
	.4byte	.LASF252
	.byte	0xb
	.2byte	0x140
	.4byte	0xdf7
	.byte	0
	.uleb128 0xa
	.4byte	.LASF253
	.byte	0xb
	.2byte	0x141
	.4byte	0xdf7
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF254
	.byte	0xb
	.2byte	0x142
	.4byte	0x290
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.4byte	0x290
	.4byte	0xe07
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.byte	0xd0
	.byte	0xb
	.2byte	0x280
	.4byte	0xf08
	.uleb128 0xa
	.4byte	.LASF255
	.byte	0xb
	.2byte	0x282
	.4byte	0x2d0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF256
	.byte	0xb
	.2byte	0x283
	.4byte	0xcd5
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF257
	.byte	0xb
	.2byte	0x284
	.4byte	0xf08
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF258
	.byte	0xb
	.2byte	0x285
	.4byte	0x901
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF259
	.byte	0xb
	.2byte	0x286
	.4byte	0x2c9
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF260
	.byte	0xb
	.2byte	0x287
	.4byte	0x2c2
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF261
	.byte	0xb
	.2byte	0x288
	.4byte	0xdc2
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF262
	.byte	0xb
	.2byte	0x289
	.4byte	0x877
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF263
	.byte	0xb
	.2byte	0x28a
	.4byte	0x877
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF264
	.byte	0xb
	.2byte	0x28b
	.4byte	0x877
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF265
	.byte	0xb
	.2byte	0x28c
	.4byte	0xf18
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF266
	.byte	0xb
	.2byte	0x28d
	.4byte	0xf28
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF267
	.byte	0xb
	.2byte	0x28e
	.4byte	0x2c9
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF268
	.byte	0xb
	.2byte	0x28f
	.4byte	0x877
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF269
	.byte	0xb
	.2byte	0x290
	.4byte	0x877
	.byte	0xac
	.uleb128 0xa
	.4byte	.LASF270
	.byte	0xb
	.2byte	0x291
	.4byte	0x877
	.byte	0xb4
	.uleb128 0xa
	.4byte	.LASF271
	.byte	0xb
	.2byte	0x292
	.4byte	0x877
	.byte	0xbc
	.uleb128 0xa
	.4byte	.LASF272
	.byte	0xb
	.2byte	0x293
	.4byte	0x877
	.byte	0xc4
	.uleb128 0xa
	.4byte	.LASF273
	.byte	0xb
	.2byte	0x294
	.4byte	0x2c9
	.byte	0xcc
	.byte	0
	.uleb128 0xd
	.4byte	0xcdb
	.4byte	0xf18
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	0xcdb
	.4byte	0xf28
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	0xcdb
	.4byte	0xf38
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.byte	0xf0
	.byte	0xb
	.2byte	0x299
	.4byte	0xf5c
	.uleb128 0xa
	.4byte	.LASF274
	.byte	0xb
	.2byte	0x29c
	.4byte	0xf5c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF275
	.byte	0xb
	.2byte	0x29d
	.4byte	0xf6c
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.4byte	0xa4a
	.4byte	0xf6c
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	0x2d0
	.4byte	0xf7c
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x1d
	.byte	0
	.uleb128 0x26
	.byte	0xf0
	.byte	0xb
	.2byte	0x27e
	.4byte	0xf9e
	.uleb128 0x27
	.4byte	.LASF224
	.byte	0xb
	.2byte	0x295
	.4byte	0xe07
	.uleb128 0x27
	.4byte	.LASF276
	.byte	0xb
	.2byte	0x29e
	.4byte	0xf38
	.byte	0
	.uleb128 0xd
	.4byte	0xcdb
	.4byte	0xfae
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF278
	.uleb128 0x16
	.byte	0x4
	.4byte	0xfae
	.uleb128 0x28
	.4byte	0xfc4
	.uleb128 0x22
	.4byte	0xb98
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xfb9
	.uleb128 0x16
	.byte	0x4
	.4byte	0x8eb
	.uleb128 0x28
	.4byte	0xfdb
	.uleb128 0x22
	.4byte	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xfe1
	.uleb128 0x16
	.byte	0x4
	.4byte	0xfd0
	.uleb128 0xd
	.4byte	0xd75
	.4byte	0xff7
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0xb
	.2byte	0x32e
	.4byte	0xb98
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0xb
	.2byte	0x32f
	.4byte	0xb9e
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF281
	.uleb128 0x29
	.4byte	.LASF283
	.byte	0x5
	.byte	0x1
	.4byte	0x25a
	.byte	0xc
	.2byte	0x282
	.4byte	0x1041
	.uleb128 0x4
	.4byte	.LASF284
	.sleb128 -1
	.uleb128 0x5
	.4byte	.LASF285
	.byte	0
	.uleb128 0x5
	.4byte	.LASF286
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF287
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0xc
	.2byte	0x28d
	.4byte	0x1016
	.uleb128 0x2a
	.4byte	.LASF289
	.byte	0x1
	.byte	0xe
	.4byte	0x2e2
	.uleb128 0x5
	.byte	0x3
	.4byte	g_gpioa_irq_state
	.uleb128 0x2a
	.4byte	.LASF290
	.byte	0x1
	.byte	0xf
	.4byte	0x312
	.uleb128 0x5
	.byte	0x3
	.4byte	g_irq_timer
	.uleb128 0x2a
	.4byte	.LASF291
	.byte	0x1
	.byte	0x10
	.4byte	0x2e2
	.uleb128 0x5
	.byte	0x3
	.4byte	g_pbtn_cnt
	.uleb128 0x2b
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF317
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF318
	.byte	0x1
	.byte	0xae
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114a
	.uleb128 0x2e
	.4byte	.LASF292
	.byte	0x1
	.byte	0xae
	.4byte	0x114a
	.4byte	.LLST0
	.uleb128 0x2f
	.ascii	"pb\000"
	.byte	0x1
	.byte	0xae
	.4byte	0x2d7
	.4byte	.LLST1
	.uleb128 0x30
	.ascii	"n\000"
	.byte	0x1
	.byte	0xb0
	.4byte	0x2e7
	.4byte	.LLST2
	.uleb128 0x30
	.ascii	"y\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x30
	.ascii	"t\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x31
	.4byte	.LVL2
	.4byte	0x142d
	.4byte	0x1111
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x45c45971
	.byte	0x1e
	.byte	0
	.uleb128 0x31
	.4byte	.LVL11
	.4byte	0x142d
	.4byte	0x112f
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x446b9e88
	.byte	0x1e
	.byte	0
	.uleb128 0x33
	.4byte	.LVL12
	.4byte	0x142d
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0xb
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x459d145a
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x2e7
	.uleb128 0x34
	.4byte	.LASF319
	.byte	0x1
	.byte	0x1e
	.4byte	0x2c9
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13c1
	.uleb128 0x35
	.ascii	"c\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x2d7
	.uleb128 0x36
	.4byte	.LASF293
	.byte	0x1
	.byte	0x20
	.4byte	0x2d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8084
	.uleb128 0x37
	.4byte	.LASF294
	.byte	0x1
	.byte	0x21
	.4byte	0x307
	.uleb128 0x30
	.ascii	"k\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x307
	.4byte	.LLST5
	.uleb128 0x30
	.ascii	"n\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x307
	.4byte	.LLST6
	.uleb128 0x38
	.4byte	.LASF295
	.byte	0x1
	.byte	0x22
	.4byte	0x2e7
	.4byte	.LLST7
	.uleb128 0x37
	.4byte	.LASF296
	.byte	0x1
	.byte	0x22
	.4byte	0x2e7
	.uleb128 0x38
	.4byte	.LASF297
	.byte	0x1
	.byte	0x22
	.4byte	0x2e7
	.4byte	.LLST8
	.uleb128 0x39
	.ascii	"pb\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x2d7
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF298
	.byte	0x1
	.byte	0x24
	.4byte	0x307
	.byte	0
	.uleb128 0x30
	.ascii	"y\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x307
	.4byte	.LLST9
	.uleb128 0x36
	.4byte	.LASF292
	.byte	0x1
	.byte	0x25
	.4byte	0x13c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8040
	.uleb128 0x36
	.4byte	.LASF299
	.byte	0x1
	.byte	0x26
	.4byte	0x13c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6040
	.uleb128 0x36
	.4byte	.LASF300
	.byte	0x1
	.byte	0x27
	.4byte	0x13c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4040
	.uleb128 0x36
	.4byte	.LASF301
	.byte	0x1
	.byte	0x28
	.4byte	0x13c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2040
	.uleb128 0x36
	.4byte	.LASF302
	.byte	0x1
	.byte	0x2a
	.4byte	0x13d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8080
	.uleb128 0x3b
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x1335
	.uleb128 0x3c
	.4byte	.LASF304
	.byte	0x1
	.byte	0x42
	.4byte	0x2c9
	.4byte	0x1258
	.uleb128 0x3d
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL43
	.4byte	0x1439
	.uleb128 0x31
	.4byte	.LVL45
	.4byte	0x1444
	.4byte	0x1277
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x7a
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x31
	.4byte	.LVL46
	.4byte	0x1444
	.4byte	0x128b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL58
	.4byte	0x1444
	.4byte	0x12a5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0
	.uleb128 0x31
	.4byte	.LVL59
	.4byte	0x1444
	.4byte	0x12b9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL63
	.4byte	0x144f
	.uleb128 0x31
	.4byte	.LVL65
	.4byte	0x109a
	.4byte	0x12d7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8040
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL66
	.4byte	0x1092
	.uleb128 0x31
	.4byte	.LVL68
	.4byte	0x1444
	.4byte	0x12f6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x7a
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x31
	.4byte	.LVL69
	.4byte	0x1444
	.4byte	0x130a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL81
	.4byte	0x1444
	.4byte	0x1324
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x9
	.byte	0xf4
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0
	.uleb128 0x33
	.4byte	.LVL82
	.4byte	0x1444
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	0x13e2
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x30
	.4byte	0x134e
	.uleb128 0x40
	.4byte	0x13ef
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL37
	.4byte	0x145a
	.uleb128 0x31
	.4byte	.LVL38
	.4byte	0x1465
	.4byte	0x136b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x31
	.4byte	.LVL39
	.4byte	0x109a
	.4byte	0x1386
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8040
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL40
	.4byte	0x1470
	.4byte	0x13a8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2040
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL41
	.4byte	0x147b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6040
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x2e7
	.4byte	0x13d2
	.uleb128 0xf
	.4byte	0x2d0
	.2byte	0x3e7
	.byte	0
	.uleb128 0xd
	.4byte	0x2e7
	.4byte	0x13e2
	.uleb128 0xe
	.4byte	0x2d0
	.byte	0x13
	.byte	0
	.uleb128 0x41
	.4byte	.LASF320
	.byte	0x2
	.2byte	0x430
	.byte	0x3
	.4byte	0x13fc
	.uleb128 0x42
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x430
	.4byte	0x261
	.byte	0
	.uleb128 0x43
	.4byte	0x1092
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x142d
	.uleb128 0x31
	.4byte	.LVL34
	.4byte	0x1486
	.4byte	0x1423
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL35
	.4byte	0x1491
	.byte	0
	.uleb128 0x44
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0xc
	.2byte	0x15a
	.uleb128 0x45
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x1
	.byte	0x42
	.uleb128 0x45
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0xd
	.byte	0xf
	.uleb128 0x45
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0xe
	.byte	0xc
	.uleb128 0x45
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0x7
	.byte	0x17
	.uleb128 0x45
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0xd
	.byte	0xe
	.uleb128 0x45
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0xf
	.byte	0x8
	.uleb128 0x45
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0x10
	.byte	0x9
	.uleb128 0x45
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x7
	.byte	0x19
	.uleb128 0x45
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x7
	.byte	0x18
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0x76
	.sleb128 -2000
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL3
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3a83126f
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3f800000
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x24
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3a83126f
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0xc0000000
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3b03126e
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x40000000
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x14
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3b449ba6
	.byte	0x1c
	.byte	0xf4
	.uleb128 0x25
	.byte	0x4
	.4byte	0x3a831270
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL33
	.4byte	.LFE114
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3eaaaaab
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL44
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
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
.LASF126:
	.ascii	"M1AR\000"
.LASF112:
	.ascii	"RSERVED1\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF320:
	.ascii	"NVIC_EnableIRQ\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF141:
	.ascii	"EXTICR\000"
.LASF278:
	.ascii	"__locale_t\000"
.LASF177:
	.ascii	"__value\000"
.LASF245:
	.ascii	"__sf\000"
.LASF166:
	.ascii	"PLLI2SCFGR\000"
.LASF212:
	.ascii	"_read\000"
.LASF234:
	.ascii	"__cleanup\000"
.LASF313:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF213:
	.ascii	"_write\000"
.LASF294:
	.ascii	"utmp32\000"
.LASF107:
	.ascii	"int32_t\000"
.LASF257:
	.ascii	"_asctime_buf\000"
.LASF239:
	.ascii	"_cvtlen\000"
.LASF276:
	.ascii	"_unused\000"
.LASF186:
	.ascii	"__tm\000"
.LASF272:
	.ascii	"_wcsrtombs_state\000"
.LASF217:
	.ascii	"_nbuf\000"
.LASF187:
	.ascii	"__tm_sec\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF265:
	.ascii	"_l64a_buf\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF293:
	.ascii	"t_pbtn_cnt\000"
.LASF221:
	.ascii	"_lock\000"
.LASF253:
	.ascii	"_mult\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF168:
	.ascii	"g_tim7_val\000"
.LASF115:
	.ascii	"ICPR\000"
.LASF129:
	.ascii	"FTSR\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF296:
	.ascii	"dac_val\000"
.LASF174:
	.ascii	"__wch\000"
.LASF93:
	.ascii	"__uint8_t\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF159:
	.ascii	"AHB2LPENR\000"
.LASF196:
	.ascii	"_on_exit_args\000"
.LASF209:
	.ascii	"_file\000"
.LASF140:
	.ascii	"MEMRMP\000"
.LASF268:
	.ascii	"_mbrlen_state\000"
.LASF99:
	.ascii	"long int\000"
.LASF279:
	.ascii	"_impure_ptr\000"
.LASF236:
	.ascii	"_result_k\000"
.LASF90:
	.ascii	"float\000"
.LASF206:
	.ascii	"_size\000"
.LASF258:
	.ascii	"_localtime_buf\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF319:
	.ascii	"main\000"
.LASF282:
	.ascii	"IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF128:
	.ascii	"RTSR\000"
.LASF131:
	.ascii	"EXTI_TypeDef\000"
.LASF191:
	.ascii	"__tm_mon\000"
.LASF157:
	.ascii	"APB2ENR\000"
.LASF317:
	.ascii	"serviceIRQA\000"
.LASF158:
	.ascii	"AHB1LPENR\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF255:
	.ascii	"_unused_rand\000"
.LASF91:
	.ascii	"signed char\000"
.LASF105:
	.ascii	"uint8_t\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF110:
	.ascii	"RESERVED0\000"
.LASF152:
	.ascii	"RESERVED1\000"
.LASF94:
	.ascii	"unsigned char\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF118:
	.ascii	"RESERVED4\000"
.LASF119:
	.ascii	"RESERVED5\000"
.LASF164:
	.ascii	"RESERVED6\000"
.LASF300:
	.ascii	"adc_buff0\000"
.LASF301:
	.ascii	"adc_buff1\000"
.LASF117:
	.ascii	"IABR\000"
.LASF231:
	.ascii	"_unspecified_locale_info\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF224:
	.ascii	"_reent\000"
.LASF280:
	.ascii	"_global_impure_ptr\000"
.LASF299:
	.ascii	"dac_buff_noise\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF114:
	.ascii	"RESERVED2\000"
.LASF116:
	.ascii	"RESERVED3\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF246:
	.ascii	"char\000"
.LASF203:
	.ascii	"_fns\000"
.LASF215:
	.ascii	"_close\000"
.LASF147:
	.ascii	"AHB1RSTR\000"
.LASF96:
	.ascii	"__uint16_t\000"
.LASF154:
	.ascii	"AHB2ENR\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF303:
	.ascii	"sinf\000"
.LASF226:
	.ascii	"_stdin\000"
.LASF306:
	.ascii	"genRIN\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF163:
	.ascii	"BDCR\000"
.LASF305:
	.ascii	"putcharUSART2\000"
.LASF120:
	.ascii	"STIR\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF142:
	.ascii	"RESERVED\000"
.LASF211:
	.ascii	"_cookie\000"
.LASF184:
	.ascii	"_wds\000"
.LASF277:
	.ascii	"__lock\000"
.LASF292:
	.ascii	"dac_buff\000"
.LASF243:
	.ascii	"_sig_func\000"
.LASF146:
	.ascii	"CFGR\000"
.LASF219:
	.ascii	"_offset\000"
.LASF240:
	.ascii	"_cvtbuf\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF288:
	.ascii	"__fdlib_version\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF237:
	.ascii	"_p5s\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF207:
	.ascii	"__sFILE\000"
.LASF233:
	.ascii	"__sdidinit\000"
.LASF223:
	.ascii	"_flags2\000"
.LASF123:
	.ascii	"SystemCoreClock\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF92:
	.ascii	"IRQn_Type\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF225:
	.ascii	"_errno\000"
.LASF143:
	.ascii	"CMPCR\000"
.LASF266:
	.ascii	"_signal_buf\000"
.LASF138:
	.ascii	"LCKR\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF185:
	.ascii	"_Bigint\000"
.LASF182:
	.ascii	"_maxwds\000"
.LASF134:
	.ascii	"OSPEEDR\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF145:
	.ascii	"PLLCFGR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF285:
	.ascii	"__fdlibm_svid\000"
.LASF100:
	.ascii	"__uint32_t\000"
.LASF230:
	.ascii	"_emergency\000"
.LASF263:
	.ascii	"_mbtowc_state\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF102:
	.ascii	"long long int\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF135:
	.ascii	"PUPDR\000"
.LASF249:
	.ascii	"_niobs\000"
.LASF165:
	.ascii	"SSCGR\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF244:
	.ascii	"__sglue\000"
.LASF275:
	.ascii	"_nmalloc\000"
.LASF302:
	.ascii	"ma_fir\000"
.LASF281:
	.ascii	"double\000"
.LASF314:
	.ascii	"main.c\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF259:
	.ascii	"_gamma_signgam\000"
.LASF151:
	.ascii	"APB2RSTR\000"
.LASF137:
	.ascii	"BSRRH\000"
.LASF136:
	.ascii	"BSRRL\000"
.LASF238:
	.ascii	"_freelist\000"
.LASF250:
	.ascii	"_iobs\000"
.LASF308:
	.ascii	"initUSART2\000"
.LASF248:
	.ascii	"_glue\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF183:
	.ascii	"_sign\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF162:
	.ascii	"APB2LPENR\000"
.LASF242:
	.ascii	"_atexit0\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF273:
	.ascii	"_h_errno\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF104:
	.ascii	"unsigned int\000"
.LASF311:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF271:
	.ascii	"_wcrtomb_state\000"
.LASF190:
	.ascii	"__tm_mday\000"
.LASF241:
	.ascii	"_new\000"
.LASF216:
	.ascii	"_ubuf\000"
.LASF228:
	.ascii	"_stderr\000"
.LASF264:
	.ascii	"_wctomb_state\000"
.LASF222:
	.ascii	"_mbstate\000"
.LASF260:
	.ascii	"_rand_next\000"
.LASF208:
	.ascii	"_flags\000"
.LASF161:
	.ascii	"APB1LPENR\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF201:
	.ascii	"_atexit\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF127:
	.ascii	"DMA_Stream_TypeDef\000"
.LASF176:
	.ascii	"__count\000"
.LASF193:
	.ascii	"__tm_wday\000"
.LASF307:
	.ascii	"initSYSTIM\000"
.LASF149:
	.ascii	"AHB3RSTR\000"
.LASF169:
	.ascii	"long double\000"
.LASF194:
	.ascii	"__tm_yday\000"
.LASF289:
	.ascii	"g_gpioa_irq_state\000"
.LASF312:
	.ascii	"getSYSTIM\000"
.LASF252:
	.ascii	"_seed\000"
.LASF214:
	.ascii	"_seek\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF172:
	.ascii	"_fpos_t\000"
.LASF130:
	.ascii	"SWIER\000"
.LASF175:
	.ascii	"__wchb\000"
.LASF150:
	.ascii	"APB1RSTR\000"
.LASF304:
	.ascii	"getcharUSART2\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF156:
	.ascii	"APB1ENR\000"
.LASF121:
	.ascii	"NVIC_Type\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF103:
	.ascii	"long long unsigned int\000"
.LASF106:
	.ascii	"uint16_t\000"
.LASF198:
	.ascii	"_dso_handle\000"
.LASF101:
	.ascii	"long unsigned int\000"
.LASF251:
	.ascii	"_rand48\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF227:
	.ascii	"_stdout\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF283:
	.ascii	"__fdlibm_version\000"
.LASF218:
	.ascii	"_blksize\000"
.LASF310:
	.ascii	"initDmaDAC1\000"
.LASF205:
	.ascii	"_base\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF256:
	.ascii	"_strtok_last\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF269:
	.ascii	"_mbrtowc_state\000"
.LASF291:
	.ascii	"g_pbtn_cnt\000"
.LASF111:
	.ascii	"ICER\000"
.LASF179:
	.ascii	"_flock_t\000"
.LASF247:
	.ascii	"__FILE\000"
.LASF160:
	.ascii	"AHB3LPENR\000"
.LASF178:
	.ascii	"_mbstate_t\000"
.LASF261:
	.ascii	"_r48\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF173:
	.ascii	"wint_t\000"
.LASF133:
	.ascii	"OTYPER\000"
.LASF181:
	.ascii	"_next\000"
.LASF220:
	.ascii	"_data\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF153:
	.ascii	"AHB1ENR\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF148:
	.ascii	"AHB2RSTR\000"
.LASF125:
	.ascii	"M0AR\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF287:
	.ascii	"__fdlibm_posix\000"
.LASF167:
	.ascii	"RCC_TypeDef\000"
.LASF309:
	.ascii	"initDmaADC1\000"
.LASF262:
	.ascii	"_mblen_state\000"
.LASF95:
	.ascii	"short int\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF286:
	.ascii	"__fdlibm_xopen\000"
.LASF199:
	.ascii	"_fntypes\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF297:
	.ascii	"widx\000"
.LASF192:
	.ascii	"__tm_year\000"
.LASF318:
	.ascii	"getData4DAC\000"
.LASF316:
	.ascii	"EXTI0_IRQHandler\000"
.LASF139:
	.ascii	"GPIO_TypeDef\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF122:
	.ascii	"ITM_RxBuffer\000"
.LASF210:
	.ascii	"_lbfsize\000"
.LASF229:
	.ascii	"_inc\000"
.LASF202:
	.ascii	"_ind\000"
.LASF284:
	.ascii	"__fdlibm_ieee\000"
.LASF204:
	.ascii	"__sbuf\000"
.LASF200:
	.ascii	"_is_cxa\000"
.LASF170:
	.ascii	"_LOCK_T\000"
.LASF274:
	.ascii	"_nextf\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF232:
	.ascii	"_locale\000"
.LASF180:
	.ascii	"__ULong\000"
.LASF108:
	.ascii	"uint32_t\000"
.LASF132:
	.ascii	"MODER\000"
.LASF235:
	.ascii	"_result\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF171:
	.ascii	"_off_t\000"
.LASF254:
	.ascii	"_add\000"
.LASF97:
	.ascii	"short unsigned int\000"
.LASF189:
	.ascii	"__tm_hour\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF315:
	.ascii	"/mnt/ssd/Dropbox/Fakultet/MSUT/students/examples/LA"
	.ascii	"B05/ma-fir-dac-adc-matlab\000"
.LASF290:
	.ascii	"g_irq_timer\000"
.LASF113:
	.ascii	"ISPR\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF270:
	.ascii	"_mbsrtowcs_state\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF298:
	.ascii	"time\000"
.LASF98:
	.ascii	"__int32_t\000"
.LASF124:
	.ascii	"NDTR\000"
.LASF109:
	.ascii	"ISER\000"
.LASF295:
	.ascii	"utmp16\000"
.LASF197:
	.ascii	"_fnargs\000"
.LASF195:
	.ascii	"__tm_isdst\000"
.LASF188:
	.ascii	"__tm_min\000"
.LASF144:
	.ascii	"SYSCFG_TypeDef\000"
.LASF267:
	.ascii	"_getdate_err\000"
.LASF155:
	.ascii	"AHB3ENR\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
