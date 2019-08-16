	.file	"processed.f08"
	.text
.Ltext0:
	.globl	__function_module_MOD_f
	.type	__function_module_MOD_f, @function
__function_module_MOD_f:
.LFB0:
	.file 1 "processed.f08"
	.loc 1 69 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB2:
	.loc 1 20 0
	movl	8(%ebp), %eax
	flds	(%eax)
	subl	$8, %esp
	flds	.LC0@GOTOFF(%ebx)
	leal	-4(%esp), %esp
	fstps	(%esp)
	leal	-4(%esp), %esp
	fstps	(%esp)
	call	powf@PLT
	addl	$16, %esp
	fchs
	subl	$12, %esp
	leal	-4(%esp), %esp
	fstps	(%esp)
	call	expf@PLT
	addl	$16, %esp
	fstps	-12(%ebp)
.LBE2:
	.loc 1 21 0
	flds	-12(%ebp)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	__function_module_MOD_f, .-__function_module_MOD_f
	.globl	__integral_module_MOD_integral
	.type	__integral_module_MOD_integral, @function
__integral_module_MOD_integral:
.LFB1:
	.loc 1 33 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 50 0
	movl	16(%ebp), %eax
	flds	(%eax)
	movl	12(%ebp), %eax
	flds	(%eax)
	fsubrp	%st, %st(1)
	fstps	-16(%ebp)
	.loc 1 51 0
	movl	12(%ebp), %eax
	flds	(%eax)
	movl	16(%ebp), %eax
	flds	(%eax)
	faddp	%st, %st(1)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-36(%ebp)
	.loc 1 52 0
	subl	$12, %esp
	pushl	12(%ebp)
	movl	8(%ebp), %eax
	call	*%eax
.LVL0:
	addl	$16, %esp
	fstps	-60(%ebp)
	subl	$12, %esp
	pushl	16(%ebp)
	movl	8(%ebp), %eax
	call	*%eax
.LVL1:
	addl	$16, %esp
	fadds	-60(%ebp)
	fmuls	-16(%ebp)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-20(%ebp)
	.loc 1 54 0
	flds	-16(%ebp)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-60(%ebp)
	subl	$12, %esp
	pushl	12(%ebp)
	movl	8(%ebp), %eax
	call	*%eax
.LVL2:
	addl	$16, %esp
	fstps	-64(%ebp)
	subl	$12, %esp
	leal	-36(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	call	*%eax
.LVL3:
	addl	$16, %esp
	fadds	-64(%ebp)
	flds	-60(%ebp)
	fmulp	%st, %st(1)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-60(%ebp)
	flds	-16(%ebp)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-64(%ebp)
	subl	$12, %esp
	leal	-36(%ebp), %eax
	pushl	%eax
	movl	8(%ebp), %eax
	call	*%eax
.LVL4:
	addl	$16, %esp
	fstps	-68(%ebp)
	subl	$12, %esp
	pushl	16(%ebp)
	movl	8(%ebp), %eax
	call	*%eax
.LVL5:
	addl	$16, %esp
	fadds	-68(%ebp)
	flds	-64(%ebp)
	fmulp	%st, %st(1)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fadds	-60(%ebp)
	fstps	-24(%ebp)
	.loc 1 55 0
	flds	-20(%ebp)
	fsubs	-24(%ebp)
	fabs
	movl	20(%ebp), %eax
	flds	(%eax)
	flds	.LC1@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L9
	.loc 1 56 0
	flds	-24(%ebp)
	fstps	-12(%ebp)
	jmp	.L6
.L9:
.LBB3:
	.loc 1 58 0
	movl	20(%ebp), %eax
	flds	(%eax)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-40(%ebp)
	leal	-40(%ebp), %eax
	pushl	%eax
	leal	-36(%ebp), %eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	__integral_module_MOD_integral
	addl	$16, %esp
	fstps	-28(%ebp)
.LBE3:
.LBB4:
	.loc 1 59 0
	movl	20(%ebp), %eax
	flds	(%eax)
	flds	.LC0@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstps	-44(%ebp)
	leal	-44(%ebp), %eax
	pushl	%eax
	pushl	16(%ebp)
	leal	-36(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	__integral_module_MOD_integral
	addl	$16, %esp
	fstps	-32(%ebp)
.LBE4:
	.loc 1 60 0
	flds	-28(%ebp)
	fadds	-32(%ebp)
	fstps	-12(%ebp)
.L6:
	.loc 1 63 0
	flds	-12(%ebp)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	__integral_module_MOD_integral, .-__integral_module_MOD_integral
	.section	.rodata
	.align 4
.LC4:
	.long	1008981770
.LC5:
	.string	"case_study_3_17.f08"
.LC6:
	.ascii	"(a, f11.6)"
.LC7:
	.ascii	"The integral is approximately "
.LC8:
	.ascii	"The exact answer is "
	.align 4
.LC9:
	.long	1071833028
	.text
	.type	MAIN__, @function
MAIN__:
.LFB2:
	.loc 1 67 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$356, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 77 0
	flds	.LC2@GOTOFF(%ebx)
	fstps	-20(%ebp)
	.loc 1 78 0
	flds	.LC3@GOTOFF(%ebx)
	fstps	-16(%ebp)
.LBB5:
	.loc 1 79 0
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	%eax
	leal	-20(%ebp), %eax
	pushl	%eax
	leal	__function_module_MOD_f@GOTOFF(%ebx), %eax
	pushl	%eax
	call	__integral_module_MOD_integral
	addl	$16, %esp
	fstps	-12(%ebp)
.LBE5:
.LBB6:
	.loc 1 80 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -352(%ebp)
	movl	$80, -348(%ebp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -312(%ebp)
	movl	$10, -308(%ebp)
	movl	$4096, -360(%ebp)
	movl	$6, -356(%ebp)
	subl	$12, %esp
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	$30
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_character_write@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	$4
	leal	-12(%ebp), %eax
	pushl	%eax
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_real_write@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write_done@PLT
	addl	$16, %esp
.LBE6:
.LBB7:
	.loc 1 81 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -352(%ebp)
	movl	$81, -348(%ebp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, -312(%ebp)
	movl	$10, -308(%ebp)
	movl	$4096, -360(%ebp)
	movl	$6, -356(%ebp)
	subl	$12, %esp
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write@PLT
	addl	$16, %esp
	subl	$4, %esp
	pushl	$20
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_character_write@PLT
	addl	$16, %esp
.LBB8:
	subl	$4, %esp
	pushl	$4
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_transfer_real_write@PLT
	addl	$16, %esp
.LBE8:
	subl	$12, %esp
	leal	-360(%ebp), %eax
	pushl	%eax
	call	_gfortran_st_write_done@PLT
	addl	$16, %esp
.LBE7:
	.loc 1 83 0
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB3:
	.loc 1 69 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%ecx, %eax
	.loc 1 69 0
	subl	$8, %esp
	pushl	4(%eax)
	pushl	(%eax)
	call	_gfortran_set_args@PLT
	addl	$16, %esp
	subl	$8, %esp
	leal	options.2.3724@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$7
	call	_gfortran_set_options@PLT
	addl	$16, %esp
	call	MAIN__
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 4
	.type	options.2.3724, @object
	.size	options.2.3724, 28
options.2.3724:
	.long	68
	.long	8191
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1073741824
	.align 4
.LC1:
	.long	1077936128
	.align 4
.LC2:
	.long	3229614080
	.align 4
.LC3:
	.long	1082130432
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB4:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE4:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF56
	.byte	0xe
	.byte	0x2
	.long	.LASF57
	.long	.LASF58
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x1
	.byte	0x1
	.long	0x63
	.uleb128 0x3
	.string	"e"
	.byte	0x1
	.byte	0x5
	.long	0x6a
	.byte	0x4
	.byte	0x54
	.byte	0xf8
	.byte	0x2d
	.byte	0x40
	.uleb128 0x4
	.long	.LASF35
	.byte	0x1
	.byte	0x6
	.long	0x6a
	.byte	0x4
	.byte	0x67
	.byte	0xc4
	.byte	0x13
	.byte	0x3f
	.uleb128 0x3
	.string	"pi"
	.byte	0x1
	.byte	0x4
	.long	0x6a
	.byte	0x4
	.byte	0xda
	.byte	0xf
	.byte	0x49
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0x6
	.long	0x63
	.uleb128 0x7
	.long	.LASF59
	.byte	0x1
	.byte	0x43
	.byte	0x2
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf3
	.uleb128 0x8
	.byte	0x1
	.byte	0x46
	.long	0xf3
	.uleb128 0x8
	.byte	0x1
	.byte	0x45
	.long	0x1c0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x1
	.byte	0x4b
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0x4a
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0x4a
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LBB5
	.long	.LBE5-.LBB5
	.long	0xd0
	.uleb128 0xb
	.long	0x6a
	.byte	0
	.uleb128 0xc
	.long	.LBB6
	.long	.LBE6-.LBB6
	.uleb128 0xd
	.long	.LBB7
	.long	.LBE7-.LBB7
	.uleb128 0xd
	.long	.LBB8
	.long	.LBE8-.LBB8
	.uleb128 0xb
	.long	0x6a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x1
	.byte	0x19
	.long	0x1c0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.byte	0x21
	.long	.LASF60
	.long	0x63
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"f"
	.byte	0x1
	.byte	0x21
	.long	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"a"
	.byte	0x1
	.byte	0x21
	.long	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x21
	.long	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.byte	0x21
	.long	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x11
	.string	"h"
	.byte	0x1
	.byte	0x2e
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF42
	.byte	0x1
	.byte	0x21
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF43
	.byte	0x1
	.byte	0x30
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"mid"
	.byte	0x1
	.byte	0x2e
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.long	.LASF44
	.byte	0x1
	.byte	0x2f
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.long	.LASF45
	.byte	0x1
	.byte	0x30
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF46
	.byte	0x1
	.byte	0x2f
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LBB3
	.long	.LBE3-.LBB3
	.uleb128 0xc
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x1
	.byte	0x9
	.long	0x208
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x45
	.long	.LASF61
	.long	0x63
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.byte	0x10
	.long	0x63
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x9
	.long	.LASF49
	.byte	0x1
	.byte	0x10
	.long	0x63
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LBB2
	.long	.LBE2-.LBB2
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF50
	.byte	0x1
	.byte	0x45
	.long	0x23f
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x45
	.long	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0x45
	.long	0x24b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.long	.LASF54
	.uleb128 0x6
	.long	0x23f
	.uleb128 0x14
	.byte	0x4
	.long	0x251
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF55
	.uleb128 0x15
	.long	0x63
	.long	0x267
	.uleb128 0x16
	.long	0x26d
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.long	0x63
	.uleb128 0x18
	.long	0x267
	.uleb128 0x14
	.byte	0x4
	.long	0x258
	.uleb128 0x6
	.long	0x272
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF3
	.byte	0x5
	.uleb128 0x5
	.long	.LASF4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF5
	.byte	0x5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.uleb128 0x8
	.long	.LASF7
	.byte	0x5
	.uleb128 0x9
	.long	.LASF8
	.byte	0x5
	.uleb128 0xa
	.long	.LASF9
	.byte	0x5
	.uleb128 0xb
	.long	.LASF10
	.byte	0x5
	.uleb128 0xc
	.long	.LASF11
	.byte	0x5
	.uleb128 0xd
	.long	.LASF12
	.byte	0x5
	.uleb128 0xe
	.long	.LASF13
	.byte	0x5
	.uleb128 0xf
	.long	.LASF14
	.byte	0x5
	.uleb128 0x10
	.long	.LASF15
	.byte	0x5
	.uleb128 0x11
	.long	.LASF16
	.byte	0x5
	.uleb128 0x12
	.long	.LASF17
	.byte	0x5
	.uleb128 0x13
	.long	.LASF18
	.byte	0x5
	.uleb128 0x14
	.long	.LASF19
	.byte	0x5
	.uleb128 0x15
	.long	.LASF20
	.byte	0x5
	.uleb128 0x16
	.long	.LASF21
	.byte	0x5
	.uleb128 0x17
	.long	.LASF22
	.byte	0x5
	.uleb128 0x18
	.long	.LASF23
	.byte	0x5
	.uleb128 0x19
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x5
	.uleb128 0x20
	.long	.LASF31
	.byte	0x5
	.uleb128 0x21
	.long	.LASF32
	.byte	0x5
	.uleb128 0x22
	.long	.LASF33
	.byte	0x5
	.uleb128 0x23
	.long	.LASF34
	.byte	0x4
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__VERSION__ \"8.1.0\""
.LASF56:
	.string	"GNU Fortran2008 8.1.0 -m32 -mtune=generic -march=i686 -ggdb3 -fintrinsic-modules-path /usr/lib/gcc-cross/x86_64-linux-gnu/8/finclude"
.LASF48:
	.string	"integral"
.LASF37:
	.string	"x_max"
.LASF52:
	.string	"argv"
.LASF55:
	.string	"character(kind=1)"
.LASF27:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF11:
	.string	"__pic__ 2"
.LASF32:
	.string	"__SIZEOF_POINTER__ 4"
.LASF38:
	.string	"x_min"
.LASF49:
	.string	"f_result"
.LASF1:
	.string	"__GNUC__ 8"
.LASF5:
	.string	"__ATOMIC_RELAXED 0"
.LASF17:
	.string	"__SIZEOF_INT__ 4"
.LASF46:
	.string	"two_trapezoid_area"
.LASF60:
	.string	"__integral_module_MOD_integral"
.LASF25:
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
.LASF30:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF20:
	.string	"__SIZEOF_SHORT__ 2"
.LASF36:
	.string	"answer"
.LASF47:
	.string	"function_module"
.LASF40:
	.string	"integral_module"
.LASF61:
	.string	"__function_module_MOD_f"
.LASF50:
	.string	"main"
.LASF12:
	.string	"__PIC__ 2"
.LASF33:
	.string	"__GFORTRAN__ 1"
.LASF43:
	.string	"left_area"
.LASF59:
	.string	"integrate"
.LASF22:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF24:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF29:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF35:
	.string	"gamma"
.LASF54:
	.string	"integer(kind=4)"
.LASF18:
	.string	"__SIZEOF_LONG__ 4"
.LASF51:
	.string	"argc"
.LASF19:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF10:
	.string	"__ATOMIC_CONSUME 1"
.LASF2:
	.string	"__GNUC_MINOR__ 1"
.LASF41:
	.string	"tolerance"
.LASF53:
	.string	"real(kind=4)"
.LASF13:
	.string	"__pie__ 2"
.LASF44:
	.string	"one_trapezoid_area"
.LASF58:
	.string	"/home/haxor/Engineering/Programming/Guide to Fortran 2008 Programing/Chapter 3/Case_study_3_17/i386"
.LASF3:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF57:
	.string	"processed.f08"
.LASF26:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF42:
	.string	"integral_result"
.LASF31:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF28:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF6:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF34:
	.string	"_LANGUAGE_FORTRAN 1"
.LASF21:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF23:
	.string	"__SIZEOF_LONG_DOUBLE__ 12"
.LASF45:
	.string	"right_area"
.LASF16:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF39:
	.string	"math_module"
.LASF14:
	.string	"__PIE__ 2"
	.ident	"GCC: (Debian 8.1.0-12) 8.1.0"
	.section	.note.GNU-stack,"",@progbits
