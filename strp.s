	.cpu generic+fp+simd
	.file	"strp.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"iSrc != ((void *)0)"
	.align	3
.LC1:
	.string	"strp.c"
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
	adrp	x2, __PRETTY_FUNCTION__.2446
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2446
	mov	w2, 21
	bl	__assert_fail
.L2:
	str	xzr, [x29,40]
	b	.L3
.L4:
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
	ldr	x0, [x29,24]
	add	x0, x0, 1
	str	x0, [x29,24]
.L3:
	ldr	x0, [x29,24]
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
	adrp	x2, __PRETTY_FUNCTION__.2455
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2455
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
	adrp	x2, __PRETTY_FUNCTION__.2455
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2455
	mov	w2, 35
	bl	__assert_fail
.L8:
	ldr	x0, [x29,24]
	str	x0, [x29,40]
	b	.L9
.L10:
	ldr	x0, [x29,16]
	ldrb	w1, [x0]
	ldr	x0, [x29,40]
	strb	w1, [x0]
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
	ldr	x0, [x29,16]
	add	x0, x0, 1
	str	x0, [x29,16]
.L9:
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L10
	ldr	x0, [x29,40]
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
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L13
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2464
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2464
	mov	w2, 52
	bl	__assert_fail
.L13:
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L14
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2464
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2464
	mov	w2, 53
	bl	__assert_fail
.L14:
	ldr	x0, [x29,24]
	str	x0, [x29,40]
	b	.L15
.L16:
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
.L15:
	ldr	x0, [x29,40]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L16
	b	.L17
.L18:
	ldr	x0, [x29,16]
	ldrb	w1, [x0]
	ldr	x0, [x29,40]
	strb	w1, [x0]
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
	ldr	x0, [x29,16]
	add	x0, x0, 1
	str	x0, [x29,16]
.L17:
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L18
	ldr	x0, [x29,40]
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
	bne	.L21
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2476
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2476
	mov	w2, 73
	bl	__assert_fail
.L21:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L22
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2476
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2476
	mov	w2, 74
	bl	__assert_fail
.L22:
	str	wzr, [x29,44]
	b	.L23
.L27:
	ldr	x0, [x29,24]
	ldrb	w1, [x0]
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L24
	ldr	w0, [x29,44]
	sub	w0, w0, #1
	str	w0, [x29,44]
	b	.L25
.L24:
	ldr	x0, [x29,24]
	ldrb	w1, [x0]
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L26
	ldr	w0, [x29,44]
	add	w0, w0, 1
	str	w0, [x29,44]
	b	.L25
.L26:
	ldr	x0, [x29,24]
	add	x0, x0, 1
	str	x0, [x29,24]
	ldr	x0, [x29,16]
	add	x0, x0, 1
	str	x0, [x29,16]
.L23:
	ldr	x0, [x29,24]
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L25
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L27
.L25:
	ldr	x0, [x29,24]
	ldrb	w1, [x0]
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L28
	ldr	w0, [x29,44]
	sub	w0, w0, #1
	str	w0, [x29,44]
	b	.L29
.L28:
	ldr	x0, [x29,24]
	ldrb	w1, [x0]
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w1, w0
	bls	.L29
	ldr	w0, [x29,44]
	add	w0, w0, 1
	str	w0, [x29,44]
.L29:
	ldr	w0, [x29,44]
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L32
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2487
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2487
	mov	w2, 100
	bl	__assert_fail
.L32:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L33
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2487
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2487
	mov	w2, 101
	bl	__assert_fail
.L33:
	ldr	x0, [x29,16]
	str	x0, [x29,48]
	str	wzr, [x29,60]
	ldr	x0, [x29,16]
	bl	Str_getLength
	cmp	x0, xzr
	bne	.L34
	ldr	x0, [x29,24]
	b	.L35
.L34:
	b	.L36
.L42:
	ldr	x0, [x29,24]
	ldrb	w1, [x0]
	ldr	x0, [x29,48]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L37
	mov	w0, 1
	str	w0, [x29,44]
	mov	w0, 1
	str	w0, [x29,60]
	b	.L38
.L40:
	ldrsw	x0, [x29,44]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [x29,48]
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L39
	str	wzr, [x29,60]
.L39:
	ldr	x0, [x29,48]
	add	x0, x0, 1
	str	x0, [x29,48]
.L38:
	ldr	x0, [x29,16]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L40
	ldr	w0, [x29,60]
	cmp	w0, 1
	bne	.L41
	ldr	x0, [x29,24]
	b	.L35
.L41:
	ldr	x0, [x29,16]
	str	x0, [x29,48]
.L37:
	ldr	x0, [x29,24]
	add	x0, x0, 1
	str	x0, [x29,24]
.L36:
	ldr	x0, [x29,24]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L42
	mov	x0, 0
.L35:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.2446, %object
	.size	__PRETTY_FUNCTION__.2446, 14
__PRETTY_FUNCTION__.2446:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.2455, %object
	.size	__PRETTY_FUNCTION__.2455, 9
__PRETTY_FUNCTION__.2455:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.2464, %object
	.size	__PRETTY_FUNCTION__.2464, 11
__PRETTY_FUNCTION__.2464:
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
