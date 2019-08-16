	.arch armv8-a
	.file	"Example 1_16_factorial_recursion.f08"
	.text
	.align	2
	.global	__factorial_module_MOD_factorial
	.type	__factorial_module_MOD_factorial, %function
__factorial_module_MOD_factorial:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	cmp	w0, 0
	bgt	.L2
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L3
.L2:
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	w19, [x0]
	add	x0, sp, 56
	bl	__factorial_module_MOD_factorial
	mul	w0, w19, w0
	str	w0, [sp, 60]
.L3:
	ldr	w0, [sp, 60]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	__factorial_module_MOD_factorial, .-__factorial_module_MOD_factorial
	.section	.rodata
	.align	3
.LC0:
	.string	"Example 1_16_factorial_recursion.f08"
	.align	3
.LC1:
	.ascii	"(a, i10)"
	.align	3
.LC2:
	.ascii	"12! = "
	.align	2
.LC3:
	.word	12
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #560
	.cfi_def_cfa_offset 560
	stp	x29, x30, [sp]
	.cfi_offset 29, -560
	.cfi_offset 30, -552
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 32]
	mov	w0, 27
	str	w0, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 104]
	mov	x0, 8
	str	x0, [sp, 112]
	mov	w0, 4096
	str	w0, [sp, 24]
	mov	w0, 6
	str	w0, [sp, 28]
	add	x0, sp, 24
	bl	_gfortran_st_write
	add	x3, sp, 24
	mov	x2, 6
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x3
	bl	_gfortran_transfer_character_write
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__factorial_module_MOD_factorial
	str	w0, [sp, 556]
	add	x1, sp, 556
	add	x0, sp, 24
	mov	w2, 4
	bl	_gfortran_transfer_integer_write
	add	x0, sp, 24
	bl	_gfortran_st_write_done
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 560
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	MAIN__, .-MAIN__
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 28]
	bl	_gfortran_set_args
	adrp	x0, options.1.2632
	add	x1, x0, :lo12:options.1.2632
	mov	w0, 7
	bl	_gfortran_set_options
	bl	MAIN__
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	options.1.2632, %object
	.size	options.1.2632, 28
options.1.2632:
	.word	68
	.word	8191
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.ident	"GCC: (Debian 8.1.0-12) 8.1.0"
	.section	.note.GNU-stack,"",@progbits
