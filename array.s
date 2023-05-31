	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #20]
	add	x0, sp, #24
	adrp	x1, l___const.main.array@PAGE
	add	x1, x1, l___const.main.array@PAGEOFF
	mov	x2, #80
	bl	_memcpy
	str	xzr, [sp, #8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	mov	x9, #51200
	movk	x9, #43031, lsl #16
	movk	x9, #4, lsl #32
	subs	x8, x8, x9
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	mov	x10, #10
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x9, x8, x9
	add	x8, sp, #24
	ldr	x8, [x8, x9, lsl #3]
	blr	x8
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB0_1
LBB0_4:
	ldr	w8, [sp, #20]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ne	LBB0_6
	b	LBB0_5
LBB0_5:
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB0_6:
	bl	___stack_chk_fail
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__const
	.p2align	3                               ; @__const.main.array
l___const.main.array:
	.quad	_zero
	.quad	_one
	.quad	_two
	.quad	_three
	.quad	_four
	.quad	_five
	.quad	_six
	.quad	_seven
	.quad	_eight
	.quad	_nine

.subsections_via_symbols
