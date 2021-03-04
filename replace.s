	.cpu generic+fp+simd
	.file	"replace.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"pcLine != ((void *)0)"
	.align	3
.LC1:
	.string	"replace.c"
	.align	3
.LC2:
	.string	"pcFrom != ((void *)0)"
	.align	3
.LC3:
	.string	"pcTo != ((void *)0)"
	.text
	.align	2
	.type	replaceAndWrite, %function
replaceAndWrite:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,40]
	str	x1, [x29,32]
	str	x2, [x29,24]
	ldr	x0, [x29,40]
	cmp	x0, xzr
	bne	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2451
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2451
	mov	w2, 27
	bl	__assert_fail
.L2:
	ldr	x0, [x29,32]
	cmp	x0, xzr
	bne	.L3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2451
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2451
	mov	w2, 28
	bl	__assert_fail
.L3:
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2451
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2451
	mov	w2, 29
	bl	__assert_fail
.L4:
	ldr	x0, [x29,24]
	bl	Str_getLength
	str	w0, [x29,60]
	ldr	x0, [x29,32]
	bl	Str_getLength
	str	w0, [x29,56]
	str	xzr, [x29,64]
	ldr	w0, [x29,56]
	cmp	w0, wzr
	bne	.L5
	b	.L6
.L7:
	ldr	x0, [x29,40]
	ldrb	w0, [x0]
	adrp	x1, stdout
	add	x1, x1, :lo12:stdout
	ldr	x1, [x1]
	bl	fputc
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
.L6:
	ldr	x0, [x29,40]
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L7
	mov	x0, 0
	b	.L8
.L5:
	b	.L9
.L14:
	b	.L10
.L11:
	ldr	x0, [x29,40]
	ldrb	w0, [x0]
	adrp	x1, stdout
	add	x1, x1, :lo12:stdout
	ldr	x1, [x1]
	bl	fputc
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
.L10:
	ldr	x1, [x29,40]
	ldr	x0, [x29,48]
	cmp	x1, x0
	bne	.L11
	str	wzr, [x29,76]
	b	.L12
.L13:
	ldrsw	x0, [x29,76]
	ldr	x1, [x29,24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	adrp	x1, stdout
	add	x1, x1, :lo12:stdout
	ldr	x1, [x1]
	bl	fputc
	ldr	w0, [x29,76]
	add	w0, w0, 1
	str	w0, [x29,76]
.L12:
	ldr	w1, [x29,76]
	ldr	w0, [x29,60]
	cmp	w1, w0
	blt	.L13
	ldrsw	x0, [x29,56]
	ldr	x1, [x29,40]
	add	x0, x1, x0
	str	x0, [x29,40]
	ldr	x0, [x29,64]
	add	x0, x0, 1
	str	x0, [x29,64]
.L9:
	ldr	x0, [x29,40]
	ldr	x1, [x29,32]
	bl	Str_search
	str	x0, [x29,48]
	ldr	x0, [x29,48]
	cmp	x0, xzr
	bne	.L14
	ldr	x0, [x29,40]
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L15
	adrp	x0, stdout
	add	x0, x0, :lo12:stdout
	ldr	x1, [x0]
	ldr	x0, [x29,40]
	bl	fputs
.L15:
	ldr	x0, [x29,64]
.L8:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	replaceAndWrite, .-replaceAndWrite
	.section	.rodata
	.align	3
.LC4:
	.string	"usage: %s fromstring tostring\n"
	.align	3
.LC5:
	.string	"%lu replacements\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #4096
	.cfi_def_cfa_offset 4096
	sub	sp, sp, #48
	.cfi_def_cfa_offset 4144
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 4160
	.cfi_offset 29, -4160
	.cfi_offset 30, -4152
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	add	x2, x29, 64
	sub	x2, x2, #36
	str	w0, [x2]
	add	x0, x29, 64
	sub	x0, x0, #48
	str	x1, [x0]
	str	xzr, [x29,4152]
	add	x0, x29, 64
	sub	x0, x0, #36
	ldr	w0, [x0]
	cmp	w0, 3
	beq	.L17
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	add	x0, x29, 64
	sub	x0, x0, #48
	ldr	x0, [x0]
	ldr	x2, [x0]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L21
.L17:
	add	x0, x29, 64
	sub	x0, x0, #48
	ldr	x0, [x0]
	ldr	x0, [x0,8]
	str	x0, [x29,4144]
	add	x0, x29, 64
	sub	x0, x0, #48
	ldr	x0, [x0]
	ldr	x0, [x0,16]
	str	x0, [x29,4136]
	b	.L19
.L20:
	add	x0, x29, 64
	sub	x0, x0, #24
	ldr	x1, [x29,4144]
	ldr	x2, [x29,4136]
	bl	replaceAndWrite
	ldr	x1, [x29,4152]
	add	x0, x1, x0
	str	x0, [x29,4152]
.L19:
	adrp	x0, stdin
	add	x0, x0, :lo12:stdin
	ldr	x2, [x0]
	add	x0, x29, 64
	sub	x0, x0, #24
	mov	w1, 4096
	bl	fgets
	cmp	x0, xzr
	bne	.L20
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x0, [x0]
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x2, [x29,4152]
	bl	fprintf
	mov	w0, 0
	bl	exit
.L21:
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 4144
	add	sp, sp, 48
	.cfi_def_cfa_offset 4096
	add	sp, sp, 4096
	.cfi_def_cfa_offset 4080
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.2451, %object
	.size	__PRETTY_FUNCTION__.2451, 16
__PRETTY_FUNCTION__.2451:
	.string	"replaceAndWrite"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",%progbits
