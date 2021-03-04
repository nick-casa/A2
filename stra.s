	.cpu generic+fp+simd
	.file	"stra.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"iSrc != ((void *)0)"
	.align	3
.LC1:
	.string	"stra.c"
	.text
	.align	2
	.global	Str_getLength
	.type	Str_getLength, %function
Str_getLength:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2447
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2447
	mov	w2, 23
	bl	__assert_fail
.L2:
	str	xzr, [x29,40]
	str	wzr, [x29,36]
	b	.L3
.L4:
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
	ldr	w0, [x29,36]
	add	w0, w0, 1
	str	w0, [x29,36]
.L3:
	ldrsw	x0, [x29,36]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L4
	ldr	x0, [x29,40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	Str_getLength, .-Str_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"dest != ((void *)0)"
	.text
	.align	2
	.global	Str_copy
	.type	Str_copy, %function
Str_copy:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2456
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2456
	mov	w2, 34
	bl	__assert_fail
.L7:
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2456
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2456
	mov	w2, 35
	bl	__assert_fail
.L8:
	str	wzr, [x29,44]
	b	.L9
.L10:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrsw	x1, [x29,44]
	ldr	x2, [x29,16]
	add	x1, x2, x1
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [x29,44]
	add	w0, w0, 1
	str	w0, [x29,44]
.L9:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L10
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [x29,24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1:
	.size	Str_copy, .-Str_copy
	.align	2
	.global	Str_concat
	.type	Str_concat, %function
Str_concat:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L13
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2466
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2466
	mov	w2, 47
	bl	__assert_fail
.L13:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L14
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2466
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2466
	mov	w2, 48
	bl	__assert_fail
.L14:
	ldr	x0, [x29,24]
	bl	Str_getLength
	str	w0, [x29,40]
	str	wzr, [x29,44]
	b	.L15
.L16:
	ldr	w1, [x29,44]
	ldr	w0, [x29,40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrsw	x1, [x29,44]
	ldr	x2, [x29,16]
	add	x1, x2, x1
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [x29,44]
	add	w0, w0, 1
	str	w0, [x29,44]
.L15:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L16
	ldr	w1, [x29,44]
	ldr	w0, [x29,40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [x29,24]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [x29,24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE2:
	.size	Str_concat, .-Str_concat
	.section	.rodata
	.align	3
.LC3:
	.string	"compA != ((void *)0)"
	.align	3
.LC4:
	.string	"compB != ((void *)0)"
	.text
	.align	2
	.global	Str_compare
	.type	Str_compare, %function
Str_compare:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L19
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2476
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2476
	mov	w2, 62
	bl	__assert_fail
.L19:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L20
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2476
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2476
	mov	w2, 63
	bl	__assert_fail
.L20:
	str	wzr, [x29,40]
	str	wzr, [x29,44]
	b	.L21
.L25:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [x29,44]
	ldr	x2, [x29,16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L22
	ldr	w0, [x29,40]
	sub	w0, w0, #1
	str	w0, [x29,40]
	b	.L23
.L22:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [x29,44]
	ldr	x2, [x29,16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L24
	ldr	w0, [x29,40]
	add	w0, w0, 1
	str	w0, [x29,40]
	b	.L23
.L24:
	ldr	w0, [x29,44]
	add	w0, w0, 1
	str	w0, [x29,44]
.L21:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L23
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L25
.L23:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [x29,44]
	ldr	x2, [x29,16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L26
	ldr	w0, [x29,40]
	sub	w0, w0, #1
	str	w0, [x29,40]
	b	.L27
.L26:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [x29,44]
	ldr	x2, [x29,16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L27
	ldr	w0, [x29,40]
	add	w0, w0, 1
	str	w0, [x29,40]
.L27:
	ldr	w0, [x29,40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE3:
	.size	Str_compare, .-Str_compare
	.section	.rodata
	.align	3
.LC5:
	.string	"haystack != ((void *)0)"
	.align	3
.LC6:
	.string	"needle != ((void *)0)"
	.text
	.align	2
	.global	Str_search
	.type	Str_search, %function
Str_search:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L30
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2487
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2487
	mov	w2, 86
	bl	__assert_fail
.L30:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L31
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2487
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2487
	mov	w2, 87
	bl	__assert_fail
.L31:
	str	wzr, [x29,36]
	ldr	x0, [x29,16]
	bl	Str_getLength
	cmp	x0, xzr
	bne	.L32
	ldr	x0, [x29,24]
	b	.L33
.L32:
	str	wzr, [x29,44]
	b	.L34
.L39:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L35
	mov	w0, 1
	str	w0, [x29,36]
	mov	w0, 1
	str	w0, [x29,40]
	b	.L36
.L38:
	ldr	w1, [x29,44]
	ldr	w0, [x29,40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [x29,40]
	ldr	x2, [x29,16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L37
	str	wzr, [x29,36]
.L37:
	ldr	w0, [x29,40]
	add	w0, w0, 1
	str	w0, [x29,40]
.L36:
	ldrsw	x0, [x29,40]
	ldr	x1, [x29,16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L38
	ldr	w0, [x29,36]
	cmp	w0, 1
	bne	.L35
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	b	.L33
.L35:
	ldr	w0, [x29,44]
	add	w0, w0, 1
	str	w0, [x29,44]
.L34:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L39
	mov	x0, 0
.L33:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.2447, %object
	.size	__PRETTY_FUNCTION__.2447, 14
__PRETTY_FUNCTION__.2447:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.2456, %object
	.size	__PRETTY_FUNCTION__.2456, 9
__PRETTY_FUNCTION__.2456:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.2466, %object
	.size	__PRETTY_FUNCTION__.2466, 11
__PRETTY_FUNCTION__.2466:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.2476, %object
	.size	__PRETTY_FUNCTION__.2476, 12
__PRETTY_FUNCTION__.2476:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.2487, %object
	.size	__PRETTY_FUNCTION__.2487, 11
__PRETTY_FUNCTION__.2487:
	.string	"Str_search"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",%progbits
