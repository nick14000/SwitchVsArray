	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	str	xzr, [sp, #16]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	mov	x9, #51200
	movk	x9, #43031, lsl #16
	movk	x9, #4, lsl #32
	subs	x8, x8, x9
	b.ge	LBB0_16
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	mov	x10, #10
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	subs	x8, x8, #0
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #9
	b.hi	LBB0_14
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI0_0@PAGE
	add	x10, x10, lJTI0_0@PAGEOFF
Ltmp0:
	adr	x8, Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	_zero
	b	LBB0_14
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	_one
	b	LBB0_14
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	_two
	b	LBB0_14
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	_three
	b	LBB0_14
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	_four
	b	LBB0_14
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	_five
	b	LBB0_14
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	bl	_six
	b	LBB0_14
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	bl	_seven
	b	LBB0_14
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	bl	_eight
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	bl	_nine
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB0_1
LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
	.p2align	2
lJTI0_0:
	.long	LBB0_4-Ltmp0
	.long	LBB0_5-Ltmp0
	.long	LBB0_6-Ltmp0
	.long	LBB0_7-Ltmp0
	.long	LBB0_8-Ltmp0
	.long	LBB0_9-Ltmp0
	.long	LBB0_10-Ltmp0
	.long	LBB0_11-Ltmp0
	.long	LBB0_12-Ltmp0
	.long	LBB0_13-Ltmp0
                                        ; -- End function
.subsections_via_symbols
