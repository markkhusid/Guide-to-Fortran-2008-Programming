	.arch armv8-a
	.file	"processed.f08"
	.text
.Ltext0:
	.align	2
	.global	__function_module_MOD_f
	.type	__function_module_MOD_f, %function
__function_module_MOD_f:
.LFB0:
	.file 1 "processed.f08"
	.loc 1 69 0
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
.LBB2:
	.loc 1 20 0
	ldr	x0, [sp, 24]
	ldr	s0, [x0]
	fmov	s1, 2.0e+0
	bl	powf
	fneg	s0, s0
	bl	expf
	str	s0, [sp, 44]
.LBE2:
	.loc 1 21 0
	ldr	w0, [sp, 44]
	fmov	s0, w0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	__function_module_MOD_f, .-__function_module_MOD_f
	.align	2
	.global	__integral_module_MOD_integral
	.type	__integral_module_MOD_integral, %function
__integral_module_MOD_integral:
.LFB1:
	.loc 1 33 0
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	d8, d9, [sp, 16]
	str	d10, [sp, 32]
	.cfi_offset 72, -112
	.cfi_offset 73, -104
	.cfi_offset 74, -96
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	x2, [sp, 56]
	str	x3, [sp, 48]
	.loc 1 50 0
	ldr	x0, [sp, 56]
	ldr	s1, [x0]
	ldr	x0, [sp, 64]
	ldr	s0, [x0]
	fsub	s0, s1, s0
	str	s0, [sp, 120]
	.loc 1 51 0
	ldr	x0, [sp, 64]
	ldr	s1, [x0]
	ldr	x0, [sp, 56]
	ldr	s0, [x0]
	fadd	s0, s1, s0
	fmov	s1, s0
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	str	s0, [sp, 100]
	.loc 1 52 0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	blr	x1
.LVL0:
	fmov	s8, s0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	blr	x1
.LVL1:
	fadd	s0, s8, s0
	fmov	s1, s0
	ldr	s0, [sp, 120]
	fmul	s1, s1, s0
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	str	s0, [sp, 116]
	.loc 1 54 0
	fmov	s0, 2.0e+0
	ldr	s1, [sp, 120]
	fdiv	s8, s1, s0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 64]
	blr	x1
.LVL2:
	fmov	s9, s0
	add	x0, sp, 100
	ldr	x1, [sp, 72]
	blr	x1
.LVL3:
	fadd	s0, s9, s0
	fmul	s1, s8, s0
	fmov	s0, 2.0e+0
	fdiv	s8, s1, s0
	fmov	s0, 2.0e+0
	ldr	s1, [sp, 120]
	fdiv	s9, s1, s0
	add	x0, sp, 100
	ldr	x1, [sp, 72]
	blr	x1
.LVL4:
	fmov	s10, s0
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 56]
	blr	x1
.LVL5:
	fadd	s0, s10, s0
	fmul	s1, s9, s0
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	fadd	s0, s8, s0
	str	s0, [sp, 112]
	.loc 1 55 0
	ldr	s1, [sp, 116]
	ldr	s0, [sp, 112]
	fsub	s0, s1, s0
	fabs	s1, s0
	ldr	x0, [sp, 48]
	ldr	s2, [x0]
	fmov	s0, 3.0e+0
	fmul	s0, s2, s0
	fcmpe	s1, s0
	bpl	.L9
	.loc 1 56 0
	ldr	w0, [sp, 112]
	str	w0, [sp, 124]
	b	.L6
.L9:
.LBB3:
	.loc 1 58 0
	ldr	x0, [sp, 48]
	ldr	s1, [x0]
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	str	s0, [sp, 96]
	add	x1, sp, 96
	add	x0, sp, 100
	mov	x3, x1
	mov	x2, x0
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 72]
	bl	__integral_module_MOD_integral
	str	s0, [sp, 108]
.LBE3:
.LBB4:
	.loc 1 59 0
	ldr	x0, [sp, 48]
	ldr	s1, [x0]
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	str	s0, [sp, 92]
	add	x1, sp, 92
	add	x0, sp, 100
	mov	x3, x1
	ldr	x2, [sp, 56]
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	__integral_module_MOD_integral
	str	s0, [sp, 104]
.LBE4:
	.loc 1 60 0
	ldr	s1, [sp, 108]
	ldr	s0, [sp, 104]
	fadd	s0, s1, s0
	str	s0, [sp, 124]
.L6:
	.loc 1 63 0
	ldr	w0, [sp, 124]
	fmov	s0, w0
	ldp	d8, d9, [sp, 16]
	ldr	d10, [sp, 32]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 74
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	__integral_module_MOD_integral, .-__integral_module_MOD_integral
	.section	.rodata
	.align	2
.LC0:
	.word	1008981770
	.align	3
.LC1:
	.string	"case_study_3_17.f08"
	.align	3
.LC2:
	.ascii	"(a, f11.6)"
	.align	3
.LC3:
	.ascii	"The integral is approximately "
	.align	3
.LC4:
	.ascii	"The exact answer is "
	.align	2
.LC5:
	.word	1071833028
	.text
	.align	2
	.type	MAIN__, %function
MAIN__:
.LFB2:
	.loc 1 67 0
	.cfi_startproc
	sub	sp, sp, #560
	.cfi_def_cfa_offset 560
	stp	x29, x30, [sp]
	.cfi_offset 29, -560
	.cfi_offset 30, -552
	mov	x29, sp
	.loc 1 77 0
	fmov	s0, -4.0e+0
	str	s0, [sp, 548]
	.loc 1 78 0
	fmov	s0, 4.0e+0
	str	s0, [sp, 552]
.LBB5:
	.loc 1 79 0
	add	x2, sp, 552
	add	x1, sp, 548
	adrp	x0, .LC0
	add	x3, x0, :lo12:.LC0
	adrp	x0, __function_module_MOD_f
	add	x0, x0, :lo12:__function_module_MOD_f
	bl	__integral_module_MOD_integral
	str	s0, [sp, 556]
.LBE5:
.LBB6:
	.loc 1 80 0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 24]
	mov	w0, 80
	str	w0, [sp, 32]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	str	x0, [sp, 96]
	mov	x0, 10
	str	x0, [sp, 104]
	mov	w0, 4096
	str	w0, [sp, 16]
	mov	w0, 6
	str	w0, [sp, 20]
	add	x0, sp, 16
	bl	_gfortran_st_write
	add	x3, sp, 16
	mov	x2, 30
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x3
	bl	_gfortran_transfer_character_write
	add	x1, sp, 556
	add	x0, sp, 16
	mov	w2, 4
	bl	_gfortran_transfer_real_write
	add	x0, sp, 16
	bl	_gfortran_st_write_done
.LBE6:
.LBB7:
	.loc 1 81 0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 24]
	mov	w0, 81
	str	w0, [sp, 32]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	str	x0, [sp, 96]
	mov	x0, 10
	str	x0, [sp, 104]
	mov	w0, 4096
	str	w0, [sp, 16]
	mov	w0, 6
	str	w0, [sp, 20]
	add	x0, sp, 16
	bl	_gfortran_st_write
	add	x3, sp, 16
	mov	x2, 20
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x3
	bl	_gfortran_transfer_character_write
.LBB8:
	add	x3, sp, 16
	mov	w2, 4
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x3
	bl	_gfortran_transfer_real_write
.LBE8:
	add	x0, sp, 16
	bl	_gfortran_st_write_done
.LBE7:
	.loc 1 83 0
	nop
	ldp	x29, x30, [sp]
	add	sp, sp, 560
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	MAIN__, .-MAIN__
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.loc 1 69 0
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	.loc 1 69 0
	ldr	x1, [sp, 16]
	ldr	w0, [sp, 28]
	bl	_gfortran_set_args
	adrp	x0, options.2.2656
	add	x1, x0, :lo12:options.2.2656
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
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	options.2.2656, %object
	.size	options.2.2656, 28
options.2.2656:
	.word	68
	.word	8191
	.word	0
	.word	1
	.word	1
	.word	0
	.word	31
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2dc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xe
	.byte	0x2
	.4byte	.LASF59
	.4byte	.LASF60
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1
	.4byte	0x6b
	.uleb128 0x3
	.string	"e"
	.byte	0x1
	.byte	0x5
	.4byte	0x72
	.byte	0x4
	.byte	0x54
	.byte	0xf8
	.byte	0x2d
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6
	.4byte	0x72
	.byte	0x4
	.byte	0x67
	.byte	0xc4
	.byte	0x13
	.byte	0x3f
	.uleb128 0x3
	.string	"pi"
	.byte	0x1
	.byte	0x4
	.4byte	0x72
	.byte	0x4
	.byte	0xda
	.byte	0xf
	.byte	0x49
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF55
	.uleb128 0x6
	.4byte	0x6b
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x1
	.byte	0x43
	.byte	0x2
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x123
	.uleb128 0x8
	.byte	0x1
	.byte	0x46
	.4byte	0x123
	.uleb128 0x8
	.byte	0x1
	.byte	0x45
	.4byte	0x20a
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0xe8
	.uleb128 0xb
	.4byte	0x72
	.byte	0
	.uleb128 0xc
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.uleb128 0xd
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.uleb128 0xd
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.uleb128 0xb
	.4byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x1
	.byte	0x19
	.4byte	0x20a
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.byte	0x21
	.4byte	.LASF62
	.4byte	0x6b
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x21
	.4byte	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x11
	.string	"h"
	.byte	0x1
	.byte	0x2e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0x30
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"mid"
	.byte	0x1
	.byte	0x2e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1
	.byte	0x30
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0xc
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9
	.4byte	0x262
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x45
	.4byte	.LASF63
	.4byte	0x6b
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0x10
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1
	.byte	0x10
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xc
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.byte	0x45
	.4byte	0x2a1
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x45
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x45
	.4byte	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF56
	.uleb128 0x6
	.4byte	0x2a1
	.uleb128 0x14
	.byte	0x8
	.4byte	0x2b3
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF57
	.uleb128 0x15
	.4byte	0x6b
	.4byte	0x2c9
	.uleb128 0x16
	.4byte	0x2cf
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.4byte	0x6b
	.uleb128 0x18
	.4byte	0x2c9
	.uleb128 0x14
	.byte	0x8
	.4byte	0x2ba
	.uleb128 0x6
	.4byte	0x2d4
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x42
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x27
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6a
	.uleb128 0x19
	.uleb128 0x36
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x27
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x4
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__VERSION__ \"8.1.0\""
.LASF50:
	.string	"integral"
.LASF39:
	.string	"x_max"
.LASF54:
	.string	"argv"
.LASF57:
	.string	"character(kind=1)"
.LASF29:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF11:
	.string	"__pic__ 2"
.LASF40:
	.string	"x_min"
.LASF51:
	.string	"f_result"
.LASF1:
	.string	"__GNUC__ 8"
.LASF20:
	.string	"__SIZEOF_LONG__ 8"
.LASF5:
	.string	"__ATOMIC_RELAXED 0"
.LASF19:
	.string	"__SIZEOF_INT__ 4"
.LASF48:
	.string	"two_trapezoid_area"
.LASF62:
	.string	"__integral_module_MOD_integral"
.LASF27:
	.string	"__CHAR_BIT__ 8"
.LASF7:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF8:
	.string	"__ATOMIC_RELEASE 3"
.LASF9:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF15:
	.string	"__NO_MATH_ERRNO__ 1"
.LASF0:
	.string	"__STDC_HOSTED__ 0"
.LASF32:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF22:
	.string	"__SIZEOF_SHORT__ 2"
.LASF38:
	.string	"answer"
.LASF49:
	.string	"function_module"
.LASF42:
	.string	"integral_module"
.LASF35:
	.string	"__GFORTRAN__ 1"
.LASF63:
	.string	"__function_module_MOD_f"
.LASF52:
	.string	"main"
.LASF12:
	.string	"__PIC__ 2"
.LASF33:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF45:
	.string	"left_area"
.LASF61:
	.string	"integrate"
.LASF24:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF58:
	.string	"GNU Fortran2008 8.1.0 -mlittle-endian -mabi=lp64 -ggdb3 -fintrinsic-modules-path /usr/lib/gcc/aarch64-linux-gnu/8/finclude"
.LASF25:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF30:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF31:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF26:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF37:
	.string	"gamma"
.LASF56:
	.string	"integer(kind=4)"
.LASF53:
	.string	"argc"
.LASF21:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF10:
	.string	"__ATOMIC_CONSUME 1"
.LASF2:
	.string	"__GNUC_MINOR__ 1"
.LASF43:
	.string	"tolerance"
.LASF55:
	.string	"real(kind=4)"
.LASF13:
	.string	"__pie__ 2"
.LASF18:
	.string	"__LP64__ 1"
.LASF46:
	.string	"one_trapezoid_area"
.LASF3:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF59:
	.string	"processed.f08"
.LASF28:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF44:
	.string	"integral_result"
.LASF17:
	.string	"_LP64 1"
.LASF34:
	.string	"__SIZEOF_POINTER__ 8"
.LASF60:
	.string	"/home/haxor/Engineering/Programming/Guide to Fortran 2008 Programing/Chapter 3/Case_study_3_17"
.LASF6:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF36:
	.string	"_LANGUAGE_FORTRAN 1"
.LASF23:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF47:
	.string	"right_area"
.LASF16:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF41:
	.string	"math_module"
.LASF14:
	.string	"__PIE__ 2"
	.ident	"GCC: (Debian 8.1.0-12) 8.1.0"
	.section	.note.GNU-stack,"",@progbits
