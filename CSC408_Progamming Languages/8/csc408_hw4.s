	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	__Z18distanceFromOrigin5Point   ; -- Begin function _Z18distanceFromOrigin5Point
	.p2align	2
__Z18distanceFromOrigin5Point:          ; @_Z18distanceFromOrigin5Point
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #8]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	add	w0, w8, w9
	bl	__Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_ ; -- Begin function _Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	.globl	__Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	.weak_definition	__Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	.p2align	2
__Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_: ; @_Z4sqrtB7v160006IiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	s1, [sp, #12]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	fsqrt	d0, d0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12linearSearchP5PointiS_     ; -- Begin function _Z12linearSearchP5PointiS_
	.p2align	2
__Z12linearSearchP5PointiS_:            ; @_Z12linearSearchP5PointiS_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stur	x2, [sp, #20]
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	wzr, [sp]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB2_7
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	lsl	x9, x9, #3
	ldr	w8, [x8, x9]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB2_5
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	add	x8, x8, x9, lsl #3
	ldr	w8, [x8, #4]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB2_5
	b	LBB2_4
LBB2_4:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	LBB2_8
LBB2_5:                                 ;   in Loop: Header=BB2_1 Depth=1
	b	LBB2_6
LBB2_6:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	LBB2_1
LBB2_7:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #31]
	b	LBB2_8
LBB2_8:
	ldrb	w8, [sp, #31]
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z10bubbleSortP5Pointi         ; -- Begin function _Z10bubbleSortP5Pointi
	.p2align	2
__Z10bubbleSortP5Pointi:                ; @_Z10bubbleSortP5Pointi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	wzr, [x29, #-16]
	b	LBB3_1
LBB3_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_3 Depth 2
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB3_10
	b	LBB3_2
LBB3_2:                                 ;   in Loop: Header=BB3_1 Depth=1
	stur	wzr, [x29, #-20]
	b	LBB3_3
LBB3_3:                                 ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-16]
	subs	w9, w9, w10
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB3_8
	b	LBB3_4
LBB3_4:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-20]
	ldr	x8, [x8, x9, lsl  #3]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__Z18distanceFromOrigin5Point
	str	d0, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-20]
	add	w9, w9, #1
	ldr	x8, [x8, w9, sxtw  #3]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Z18distanceFromOrigin5Point
	fmov	d1, d0
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	fcmp	d0, d1
	cset	w8, pl
	tbnz	w8, #0, LBB3_6
	b	LBB3_5
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-20]
	add	x0, x8, x9, lsl #3
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-20]
	add	w9, w9, #1
	add	x1, x8, w9, sxtw #3
	bl	__ZNSt3__14swapB7v160006I5PointEEvRT_S3_
	b	LBB3_6
LBB3_6:                                 ;   in Loop: Header=BB3_3 Depth=2
	b	LBB3_7
LBB3_7:                                 ;   in Loop: Header=BB3_3 Depth=2
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	LBB3_3
LBB3_8:                                 ;   in Loop: Header=BB3_1 Depth=1
	b	LBB3_9
LBB3_9:                                 ;   in Loop: Header=BB3_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	LBB3_1
LBB3_10:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB7v160006I5PointEEvRT_S3_ ; -- Begin function _ZNSt3__14swapB7v160006I5PointEEvRT_S3_
	.globl	__ZNSt3__14swapB7v160006I5PointEEvRT_S3_
	.weak_definition	__ZNSt3__14swapB7v160006I5PointEEvRT_S3_
	.p2align	2
__ZNSt3__14swapB7v160006I5PointEEvRT_S3_: ; @_ZNSt3__14swapB7v160006I5PointEEvRT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x8]
	str	x8, [x9]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z21binarySearchIterativePPKciS0_ ; -- Begin function _Z21binarySearchIterativePPKciS0_
	.p2align	2
__Z21binarySearchIterativePPKciS0_:     ; @_Z21binarySearchIterativePPKciS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #16]
	str	wzr, [sp, #12]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB5_8
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	subs	w9, w9, w10
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #4]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl  #3]
	ldr	x1, [sp, #16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB5_4
	b	LBB5_3
LBB5_3:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	LBB5_9
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl  #3]
	ldr	x1, [sp, #16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB5_6
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB5_7
LBB5_6:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB5_7
LBB5_7:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_1
LBB5_8:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB5_9
LBB5_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z21binarySearchRecursivePPKciiS0_ ; -- Begin function _Z21binarySearchRecursivePPKciiS0_
	.p2align	2
__Z21binarySearchRecursivePPKciiS0_:    ; @_Z21binarySearchRecursivePPKciiS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	x3, [sp, #16]
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB6_7
LBB6_2:
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #24]
	ldur	w10, [x29, #-20]
	subs	w9, w9, w10
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl  #3]
	ldr	x1, [sp, #16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB6_4
	b	LBB6_3
LBB6_3:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB6_7
LBB6_4:
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl  #3]
	ldr	x1, [sp, #16]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB6_6
	b	LBB6_5
LBB6_5:
	ldur	x0, [x29, #-16]
	ldr	w8, [sp, #12]
	add	w1, w8, #1
	ldr	w2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__Z21binarySearchRecursivePPKciiS0_
	stur	w0, [x29, #-4]
	b	LBB6_7
LBB6_6:
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	ldr	w8, [sp, #12]
	subs	w2, w8, #1
	ldr	x3, [sp, #16]
	bl	__Z21binarySearchRecursivePPKciiS0_
	stur	w0, [x29, #-4]
	b	LBB6_7
LBB6_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z18postOrderIterativeP4Node   ; -- Begin function _Z18postOrderIterativeP4Node
	.p2align	2
__Z18postOrderIterativeP4Node:          ; @_Z18postOrderIterativeP4Node
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	b	LBB7_22
LBB7_2:
	add	x0, sp, #56
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #48]
	b	LBB7_3
LBB7_3:                                 ; =>This Inner Loop Header: Depth=1
Ltmp3:
	add	x0, sp, #56
	bl	__ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
Ltmp4:
	b	LBB7_4
LBB7_4:                                 ;   in Loop: Header=BB7_3 Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	mov	w9, #1
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	tbz	w8, #0, LBB7_6
	b	LBB7_5
LBB7_5:                                 ;   in Loop: Header=BB7_3 Depth=1
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	w8, ne
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB7_6
LBB7_6:                                 ;   in Loop: Header=BB7_3 Depth=1
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB7_21
	b	LBB7_7
LBB7_7:                                 ;   in Loop: Header=BB7_3 Depth=1
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB7_11
	b	LBB7_8
LBB7_8:                                 ;   in Loop: Header=BB7_3 Depth=1
Ltmp13:
	add	x0, sp, #56
	sub	x1, x29, #8
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
Ltmp14:
	b	LBB7_9
LBB7_9:                                 ;   in Loop: Header=BB7_3 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-8]
	b	LBB7_20
LBB7_10:
Ltmp15:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
Ltmp16:
	add	x0, sp, #56
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
Ltmp17:
	b	LBB7_23
LBB7_11:                                ;   in Loop: Header=BB7_3 Depth=1
Ltmp5:
	add	x0, sp, #56
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp6:
	b	LBB7_12
LBB7_12:                                ;   in Loop: Header=BB7_3 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB7_15
	b	LBB7_13
LBB7_13:                                ;   in Loop: Header=BB7_3 Depth=1
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB7_15
	b	LBB7_14
LBB7_14:                                ;   in Loop: Header=BB7_3 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-8]
	b	LBB7_19
LBB7_15:                                ;   in Loop: Header=BB7_3 Depth=1
	ldr	x8, [sp, #24]
	ldr	w1, [x8]
Ltmp7:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp8:
	b	LBB7_16
LBB7_16:                                ;   in Loop: Header=BB7_3 Depth=1
Ltmp9:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp10:
	b	LBB7_17
LBB7_17:                                ;   in Loop: Header=BB7_3 Depth=1
	ldr	x8, [sp, #24]
	str	x8, [sp, #48]
Ltmp11:
	add	x0, sp, #56
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
Ltmp12:
	b	LBB7_18
LBB7_18:                                ;   in Loop: Header=BB7_3 Depth=1
	b	LBB7_19
LBB7_19:                                ;   in Loop: Header=BB7_3 Depth=1
	b	LBB7_20
LBB7_20:                                ;   in Loop: Header=BB7_3 Depth=1
	b	LBB7_3
LBB7_21:
	add	x0, sp, #56
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	b	LBB7_22
LBB7_22:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB7_23:
	b	LBB7_24
LBB7_24:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
LBB7_25:
Ltmp18:
	bl	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp3-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp14-Ltmp3                   ;   Call between Ltmp3 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp12-Ltmp5                   ;   Call between Ltmp5 and Ltmp12
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp12              ;   Call between Ltmp12 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev ; -- Begin function _ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.globl	__ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.weak_definition	__ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.p2align	2
__ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev: ; @_ZNKSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev
	and	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_ ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.weak_definition	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev
	.weak_definition	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3topB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthEPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.weak_definition	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.globl	__Z10levelOrderP4Node           ; -- Begin function _Z10levelOrderP4Node
	.p2align	2
__Z10levelOrderP4Node:                  ; @_Z10levelOrderP4Node
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB16_2
	b	LBB16_1
LBB16_1:
	b	LBB16_19
LBB16_2:
	add	x0, sp, #56
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp19:
	sub	x1, x29, #8
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
Ltmp20:
	b	LBB16_3
LBB16_3:
	b	LBB16_4
LBB16_4:                                ; =>This Inner Loop Header: Depth=1
Ltmp21:
	add	x0, sp, #56
	bl	__ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
Ltmp22:
	b	LBB16_5
LBB16_5:                                ;   in Loop: Header=BB16_4 Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB16_18
	b	LBB16_6
LBB16_6:                                ;   in Loop: Header=BB16_4 Depth=1
Ltmp23:
	add	x0, sp, #56
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp24:
	b	LBB16_7
LBB16_7:                                ;   in Loop: Header=BB16_4 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #32]
Ltmp25:
	add	x0, sp, #56
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
Ltmp26:
	b	LBB16_8
LBB16_8:                                ;   in Loop: Header=BB16_4 Depth=1
	ldr	x8, [sp, #32]
	ldr	w1, [x8]
Ltmp27:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp28:
	b	LBB16_9
LBB16_9:                                ;   in Loop: Header=BB16_4 Depth=1
Ltmp29:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp30:
	b	LBB16_10
LBB16_10:                               ;   in Loop: Header=BB16_4 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB16_14
	b	LBB16_11
LBB16_11:                               ;   in Loop: Header=BB16_4 Depth=1
	ldr	x8, [sp, #32]
	add	x1, x8, #8
Ltmp31:
	add	x0, sp, #56
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
Ltmp32:
	b	LBB16_12
LBB16_12:                               ;   in Loop: Header=BB16_4 Depth=1
	b	LBB16_14
LBB16_13:
Ltmp35:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
Ltmp36:
	add	x0, sp, #56
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
Ltmp37:
	b	LBB16_20
LBB16_14:                               ;   in Loop: Header=BB16_4 Depth=1
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB16_17
	b	LBB16_15
LBB16_15:                               ;   in Loop: Header=BB16_4 Depth=1
	ldr	x8, [sp, #32]
	add	x1, x8, #16
Ltmp33:
	add	x0, sp, #56
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
Ltmp34:
	b	LBB16_16
LBB16_16:                               ;   in Loop: Header=BB16_4 Depth=1
	b	LBB16_17
LBB16_17:                               ;   in Loop: Header=BB16_4 Depth=1
	b	LBB16_4
LBB16_18:
	add	x0, sp, #56
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	b	LBB16_19
LBB16_19:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB16_20:
	b	LBB16_21
LBB16_21:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
LBB16_22:
Ltmp38:
	bl	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp19-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp32-Ltmp19                  ;   Call between Ltmp19 and Ltmp32
	.uleb128 Ltmp35-Lfunc_begin1            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin1            ;     jumps to Ltmp38
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp33-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin1            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Lfunc_end1-Ltmp34              ;   Call between Ltmp34 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_ ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.weak_definition	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE4pushB7v160006ERKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev ; -- Begin function _ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.globl	__ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.weak_definition	__ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.p2align	2
__ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev: ; @_ZNKSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5emptyB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev
	and	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev
	.weak_definition	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE5frontB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.weak_definition	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEE3popB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z8problem1v                   ; -- Begin function _Z8problem1v
	.p2align	2
__Z8problem1v:                          ; @_Z8problem1v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	add	x8, sp, #136
	add	x9, x8, #160
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB23_1
LBB23_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZN5PointC1Ev
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x9, x9, #8
	subs	x8, x9, x8
	cset	w8, ne
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	tbnz	w8, #0, LBB23_1
	b	LBB23_2
LBB23_2:
	str	wzr, [sp, #132]
	b	LBB23_3
LBB23_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #132]
	subs	w8, w8, #20
	cset	w8, ge
	tbnz	w8, #0, LBB23_6
	b	LBB23_4
LBB23_4:                                ;   in Loop: Header=BB23_3 Depth=1
	bl	_rand
	mov	w9, #10
	str	w9, [sp, #32]                   ; 4-byte Folded Spill
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	add	w8, w8, #1
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	bl	_rand
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w1, [sp, #36]                   ; 4-byte Folded Reload
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	add	w2, w8, #1
	add	x0, sp, #124
	bl	__ZN5PointC1Eii
	ldrsw	x10, [sp, #132]
	add	x9, sp, #136
	ldur	x8, [sp, #124]
	str	x8, [x9, x10, lsl  #3]
	b	LBB23_5
LBB23_5:                                ;   in Loop: Header=BB23_3 Depth=1
	ldr	w8, [sp, #132]
	add	w8, w8, #1
	str	w8, [sp, #132]
	b	LBB23_3
LBB23_6:
	bl	_rand
	mov	w9, #10
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	add	w8, w8, #1
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	bl	_rand
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w1, [sp, #8]                    ; 4-byte Folded Reload
	sdiv	w8, w0, w9
	mul	w8, w8, w9
	subs	w8, w0, w8
	add	w2, w8, #1
	add	x0, sp, #116
	bl	__ZN5PointC1Eii
	ldur	x8, [sp, #116]
	str	x8, [sp, #104]
	ldr	x2, [sp, #104]
	add	x0, sp, #136
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	w1, #20
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	__Z12linearSearchP5PointiS_
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	mov	w9, #1
	and	w8, w8, w9
	strb	w8, [sp, #115]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #116]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #120]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldrb	w8, [sp, #115]
	and	w10, w8, #0x1
	adrp	x9, l_.str.5@PAGE
	add	x9, x9, l_.str.5@PAGEOFF
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	ands	w10, w10, #0x1
	csel	x1, x8, x9, ne
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__Z10bubbleSortP5Pointi
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	ldr	x8, [sp, #96]
	str	x8, [sp, #88]
	ldr	x8, [sp, #96]
	add	x8, x8, #160
	str	x8, [sp, #80]
	b	LBB23_7
LBB23_7:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #88]
	ldr	x9, [sp, #80]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB23_10
	b	LBB23_8
LBB23_8:                                ;   in Loop: Header=BB23_7 Depth=1
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #88]
	str	x8, [sp, #72]
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #72]
	ldr	w1, [x8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #72]
	ldr	w1, [x8, #4]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	b	LBB23_9
LBB23_9:                                ;   in Loop: Header=BB23_7 Depth=1
	ldr	x8, [sp, #88]
	add	x8, x8, #8
	str	x8, [sp, #88]
	b	LBB23_7
LBB23_10:
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB23_12
	b	LBB23_11
LBB23_11:
	bl	___stack_chk_fail
LBB23_12:
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5PointC1Ev                  ; -- Begin function _ZN5PointC1Ev
	.weak_def_can_be_hidden	__ZN5PointC1Ev
	.p2align	2
__ZN5PointC1Ev:                         ; @_ZN5PointC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5PointC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5PointC1Eii                 ; -- Begin function _ZN5PointC1Eii
	.weak_def_can_be_hidden	__ZN5PointC1Eii
	.p2align	2
__ZN5PointC1Eii:                        ; @_ZN5PointC1Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	ldr	w2, [sp, #16]
	bl	__ZN5PointC2Eii
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sxtb	w1, w8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	ldr	x0, [sp, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z8problem2v                   ; -- Begin function _Z8problem2v
	.p2align	2
__Z8problem2v:                          ; @_Z8problem2v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	add	x0, sp, #56
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x1, l___const._Z8problem2v.names@PAGE
	add	x1, x1, l___const._Z8problem2v.names@PAGEOFF
	mov	x2, #80
	bl	_memcpy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x9, l_.str.12@PAGE
	add	x9, x9, l_.str.12@PAGEOFF
	str	x9, [sp, #48]
	mov	x0, x8
	add	x1, x8, #80
	bl	__ZNSt3__14sortB7v160006IPPKcEEvT_S4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #48]
	mov	w1, #10
	bl	__Z21binarySearchIterativePPKciS0_
	str	w0, [sp, #44]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #48]
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #44]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x3, [sp, #48]
	mov	w1, #0
	mov	w2, #9
	bl	__Z21binarySearchRecursivePPKciiS0_
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	w8, [sp, #40]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #48]
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	w1, [sp, #40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB28_2
	b	LBB28_1
LBB28_1:
	bl	___stack_chk_fail
LBB28_2:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14sortB7v160006IPPKcEEvT_S4_ ; -- Begin function _ZNSt3__14sortB7v160006IPPKcEEvT_S4_
	.globl	__ZNSt3__14sortB7v160006IPPKcEEvT_S4_
	.weak_definition	__ZNSt3__14sortB7v160006IPPKcEEvT_S4_
	.p2align	2
__ZNSt3__14sortB7v160006IPPKcEEvT_S4_:  ; @_ZNSt3__14sortB7v160006IPPKcEEvT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z8problem3v                   ; -- Begin function _Z8problem3v
	.p2align	2
__Z8problem3v:                          ; @_Z8problem3v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	b	LBB31_1
LBB31_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x0, __ZNSt3__13cinE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__13cinE@GOTPAGEOFF]
	sub	x1, x29, #8
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #3
	cset	w8, hi
	tbnz	w8, #0, LBB31_7
; %bb.2:                                ;   in Loop: Header=BB31_1 Depth=1
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI31_0@PAGE
	add	x10, x10, lJTI31_0@PAGEOFF
Ltmp39:
	adr	x8, Ltmp39
	ldrsw	x9, [x10, x11, lsl  #2]
	add	x8, x8, x9
	br	x8
LBB31_3:                                ;   in Loop: Header=BB31_1 Depth=1
	bl	__Z8problem1v
	b	LBB31_8
LBB31_4:                                ;   in Loop: Header=BB31_1 Depth=1
	bl	__Z8problem2v
	b	LBB31_8
LBB31_5:                                ;   in Loop: Header=BB31_1 Depth=1
	bl	__Z8problem3v
	b	LBB31_8
LBB31_6:                                ;   in Loop: Header=BB31_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	b	LBB31_8
LBB31_7:                                ;   in Loop: Header=BB31_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	b	LBB31_8
LBB31_8:                                ;   in Loop: Header=BB31_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	b	LBB31_9
LBB31_9:                                ;   in Loop: Header=BB31_1 Depth=1
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB31_1
	b	LBB31_10
LBB31_10:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
	.p2align	2
lJTI31_0:
	.long	LBB31_6-Ltmp39
	.long	LBB31_3-Ltmp39
	.long	LBB31_4-Ltmp39
	.long	LBB31_5-Ltmp39
                                        ; -- End function
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #24]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev
	str	x0, [sp, #16]
	b	LBB34_1
LBB34_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB34_4
	b	LBB34_2
LBB34_2:                                ;   in Loop: Header=BB34_1 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #24]
	ldr	x1, [x8]
	mov	x2, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	b	LBB34_3
LBB34_3:                                ;   in Loop: Header=BB34_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	b	LBB34_1
LBB34_4:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5clearEv
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-16]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	stur	x1, [x29, #-24]
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	b	LBB35_1
LBB35_1:                                ; =>This Inner Loop Header: Depth=1
Ltmp40:
	sub	x0, x29, #32
	sub	x1, x29, #48
	bl	__ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	str	w0, [sp, #52]                   ; 4-byte Folded Spill
Ltmp41:
	b	LBB35_2
LBB35_2:                                ;   in Loop: Header=BB35_1 Depth=1
	ldr	w8, [sp, #52]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB35_10
	b	LBB35_3
LBB35_3:                                ;   in Loop: Header=BB35_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Ltmp50:
	sub	x0, x29, #32
	bl	__ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp51:
	b	LBB35_4
LBB35_4:                                ;   in Loop: Header=BB35_1 Depth=1
Ltmp52:
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_
Ltmp53:
	b	LBB35_5
LBB35_5:                                ;   in Loop: Header=BB35_1 Depth=1
	b	LBB35_6
LBB35_6:                                ;   in Loop: Header=BB35_1 Depth=1
Ltmp54:
	sub	x0, x29, #32
	bl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev
Ltmp55:
	b	LBB35_7
LBB35_7:                                ;   in Loop: Header=BB35_1 Depth=1
	b	LBB35_1
LBB35_8:
Ltmp56:
	stur	x0, [x29, #-56]
	mov	x8, x1
	stur	w8, [x29, #-60]
	b	LBB35_9
LBB35_9:
	ldur	x0, [x29, #-56]
	bl	___cxa_call_unexpected
LBB35_10:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	str	xzr, [x0]
	b	LBB35_11
LBB35_11:                               ; =>This Inner Loop Header: Depth=1
Ltmp42:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp43:
	b	LBB35_12
LBB35_12:                               ;   in Loop: Header=BB35_11 Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, #2
	cset	w8, ls
	tbnz	w8, #0, LBB35_16
	b	LBB35_13
LBB35_13:                               ;   in Loop: Header=BB35_11 Depth=1
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp46:
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp47:
	b	LBB35_14
LBB35_14:                               ;   in Loop: Header=BB35_11 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	mov	x2, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
Ltmp48:
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
Ltmp49:
	b	LBB35_15
LBB35_15:                               ;   in Loop: Header=BB35_11 Depth=1
	b	LBB35_11
LBB35_16:
Ltmp44:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp45:
	b	LBB35_17
LBB35_17:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB35_19
	b	LBB35_18
LBB35_18:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB35_20
	b	LBB35_21
LBB35_19:
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	mov	x8, #256
	str	x8, [x9, #32]
	b	LBB35_21
LBB35_20:
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	mov	x8, #512
	str	x8, [x9, #32]
	b	LBB35_21
LBB35_21:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table35:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp40-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp55-Ltmp40                  ;   Call between Ltmp40 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin2            ;     jumps to Ltmp56
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp55-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp42-Ltmp55                  ;   Call between Ltmp55 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp45-Ltmp42                  ;   Call between Ltmp42 and Ltmp45
	.uleb128 Ltmp56-Lfunc_begin2            ;     jumps to Ltmp56
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase2:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #40
	bl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5beginB7v160006Ev
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0, #32]
	mov	x10, #512
	udiv	x9, x9, x10
	add	x8, x8, x9, lsl #3
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
Ltmp59:
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev
	str	w0, [sp, #32]                   ; 4-byte Folded Spill
Ltmp60:
	b	LBB41_1
LBB41_1:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB41_3
	b	LBB41_2
LBB41_2:
	mov	x8, #0
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB41_4
LBB41_3:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	ldr	x9, [x9, #32]
	mov	x11, #512
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB41_4
LBB41_4:
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #16
	bl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB41_5:
Ltmp61:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	b	LBB41_6
LBB41_6:
	ldr	x0, [sp, #40]
	bl	___cxa_call_unexpected
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table41:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp59-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin3            ;     jumps to Ltmp61
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp60-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Lfunc_end3-Ltmp60              ;   Call between Ltmp60 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase3:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x0, #32]
	add	x8, x8, x9
	str	x8, [sp, #32]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #32]
	mov	x10, #512
	udiv	x9, x9, x10
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev
	tbz	w0, #0, LBB42_2
	b	LBB42_1
LBB42_1:
	mov	x8, #0
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB42_3
LBB42_2:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldr	x9, [sp, #32]
	mov	x11, #512
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x8, x8, x9, lsl #3
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB42_3
LBB42_3:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	sub	x0, x29, #16
	bl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_ ; -- Begin function _ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.globl	__ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.weak_definition	__ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.p2align	2
__ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_: ; @_ZNSt3__1neB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	eor	w8, w0, #0x1
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev ; -- Begin function _ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev
	.globl	__ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev
	.weak_definition	__ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev
	.p2align	2
__ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev: ; @_ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev ; -- Begin function _ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev
	.globl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev
	.weak_definition	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev
	.p2align	2
__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev: ; @_ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEppB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	add	x8, x8, #8
	mov	x10, x8
	str	x10, [x9, #8]
	ldr	x9, [x9]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	subs	x8, x8, #512
	cset	w8, ne
	tbnz	w8, #0, LBB46_2
	b	LBB46_1
LBB46_1:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9]
	add	x8, x8, #8
	str	x8, [x9]
	ldr	x8, [x9]
	ldr	x8, [x8]
	str	x8, [x9, #8]
	b	LBB46_2
LBB46_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #40
	bl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	add	x1, x8, #8
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5emptyB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_ ; -- Begin function _ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_
	.globl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_
	.weak_def_can_be_hidden	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_
	.p2align	2
__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_: ; @_ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC1B7v160006ES5_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_ ; -- Begin function _ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_
	.globl	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_
	.weak_def_can_be_hidden	__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_
	.p2align	2
__ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_: ; @_ZNSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEC2B7v160006ES5_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #40
	bl	__ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_ ; -- Begin function _ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.globl	__ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.weak_definition	__ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.p2align	2
__ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_: ; @_ZNSt3__1eqB7v160006ERKNS_16__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEES8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_ ; -- Begin function _ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_
	.globl	__ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_
	.weak_definition	__ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_
	.p2align	2
__ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_: ; @_ZNSt3__19allocatorIP4NodeE7destroyB7v160006EPS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginB7v160006EPS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE19__destruct_at_beginEPS3_NS_17integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [x9, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m ; -- Begin function _ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m
	.globl	__ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m
	.weak_definition	__ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m
	.p2align	2
__ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m: ; @_ZNSt3__19allocatorIP4NodeE10deallocateB7v160006EPS2_m
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB64_2
	b	LBB64_1
LBB64_1:
	ldur	x0, [x29, #-16]
	bl	__ZdlPv
	b	LBB64_6
LBB64_2:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	lsl	x1, x8, #3
Ltmp73:
	mov	x2, #8
	bl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
Ltmp74:
	b	LBB64_3
LBB64_3:
	b	LBB64_6
LBB64_4:
Ltmp75:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB64_5
LBB64_5:
	ldr	x0, [sp, #16]
	bl	___cxa_call_unexpected
LBB64_6:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table64:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp73-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp74-Ltmp73                  ;   Call between Ltmp73 and Ltmp74
	.uleb128 Ltmp75-Lfunc_begin4            ;     jumps to Ltmp75
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp74-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Lfunc_end4-Ltmp74              ;   Call between Ltmp74 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase4:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev ; -- Begin function _ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	.globl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	.weak_definition	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	.p2align	2
__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev: ; @_ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	.cfi_startproc
; %bb.0:
	mov	w8, #0
	and	w0, w8, #0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm ; -- Begin function _ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.globl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB7v160006EPvmm: ; @_ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB71_2
	b	LBB71_1
LBB71_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m
	b	LBB71_2
LBB71_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5clearB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB77_1
LBB77_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB77_6
	b	LBB77_2
LBB77_2:                                ;   in Loop: Header=BB77_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp77:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_
Ltmp78:
	b	LBB77_3
LBB77_3:                                ;   in Loop: Header=BB77_1 Depth=1
	b	LBB77_1
LBB77_4:
Ltmp79:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	b	LBB77_5
LBB77_5:
	ldr	x0, [sp, #32]
	bl	___cxa_call_unexpected
LBB77_6:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table77:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp77-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp78-Ltmp77                  ;   Call between Ltmp77 and Ltmp78
	.uleb128 Ltmp79-Lfunc_begin5            ;     jumps to Ltmp79
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp78-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Lfunc_end5-Ltmp78              ;   Call between Ltmp78 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase5:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	.globl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_: ; @_ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_ ; -- Begin function _ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_
	.globl	__ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_
	.weak_definition	__ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_
	.p2align	2
__ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_: ; @_ZNSt3__19allocatorIPP4NodeE7destroyB7v160006EPS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m ; -- Begin function _ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m
	.globl	__ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m
	.weak_definition	__ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m
	.p2align	2
__ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m: ; @_ZNSt3__19allocatorIPP4NodeE10deallocateB7v160006EPS3_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB81_2
	b	LBB81_1
LBB81_1:
	ldur	x0, [x29, #-16]
	bl	__ZdlPv
	b	LBB81_6
LBB81_2:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	lsl	x1, x8, #3
Ltmp82:
	mov	x2, #8
	bl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
Ltmp83:
	b	LBB81_3
LBB81_3:
	b	LBB81_6
LBB81_4:
Ltmp84:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB81_5
LBB81_5:
	ldr	x0, [sp, #16]
	bl	___cxa_call_unexpected
LBB81_6:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table81:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp82-Lfunc_begin6            ; >> Call Site 1 <<
	.uleb128 Ltmp83-Ltmp82                  ;   Call between Ltmp82 and Ltmp83
	.uleb128 Ltmp84-Lfunc_begin6            ;     jumps to Ltmp84
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp83-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Lfunc_end6-Ltmp83              ;   Call between Ltmp83 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase6:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEED1B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5PointC2Ev                  ; -- Begin function _ZN5PointC2Ev
	.weak_def_can_be_hidden	__ZN5PointC2Ev
	.p2align	2
__ZN5PointC2Ev:                         ; @_ZN5PointC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	wzr, [x0]
	str	wzr, [x0, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5PointC2Eii                 ; -- Begin function _ZN5PointC2Eii
	.weak_def_can_be_hidden	__ZN5PointC2Eii
	.p2align	2
__ZN5PointC2Eii:                        ; @_ZN5PointC2Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	ldr	w8, [sp]
	str	w8, [x0, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev ; -- Begin function _ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.globl	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev: ; @_ZNSt3__15stackIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC2B7v160006Ev
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	xzr, [x8, #32]
	sub	x1, x29, #12
	stur	wzr, [x29, #-12]
Ltmp89:
	add	x0, x8, #40
	sub	x2, x29, #13
	bl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC1B7v160006IiNS_18__default_init_tagEEEOT_OT0_
Ltmp90:
	b	LBB92_1
LBB92_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB92_2:
Ltmp91:
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
Ltmp92:
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEED1Ev
Ltmp93:
	b	LBB92_3
LBB92_3:
	b	LBB92_4
LBB92_4:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
LBB92_5:
Ltmp94:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table92:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp89-Lfunc_begin7            ;   Call between Lfunc_begin7 and Ltmp89
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin7            ; >> Call Site 2 <<
	.uleb128 Ltmp90-Ltmp89                  ;   Call between Ltmp89 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin7            ;     jumps to Ltmp91
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp92-Lfunc_begin7            ; >> Call Site 3 <<
	.uleb128 Ltmp93-Ltmp92                  ;   Call between Ltmp92 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin7            ;     jumps to Ltmp94
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp93-Lfunc_begin7            ; >> Call Site 4 <<
	.uleb128 Lfunc_end7-Ltmp93              ;   Call between Ltmp93 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC1B7v160006IiNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC1B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC1B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC1B7v160006IiNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC1B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC2B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	add	x1, sp, #16
	str	xzr, [sp, #16]
	add	x0, x8, #24
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev ; -- Begin function _ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev
	.globl	__ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev
	.p2align	2
__ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev: ; @_ZNSt3__19allocatorIPP4NodeEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPP4NodeEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC2B7v160006IiNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC2B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC2B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC2B7v160006IiNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairImNS_9allocatorIP4NodeEEEC2B7v160006IiNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B7v160006IivEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B7v160006IivEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B7v160006IivEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B7v160006IivEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B7v160006IivEEOT_: ; @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B7v160006IivEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldrsw	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIP4NodeEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIP4NodeEC2B7v160006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP4NodeEC2B7v160006Ev ; -- Begin function _ZNSt3__19allocatorIP4NodeEC2B7v160006Ev
	.globl	__ZNSt3__19allocatorIP4NodeEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIP4NodeEC2B7v160006Ev
	.p2align	2
__ZNSt3__19allocatorIP4NodeEC2B7v160006Ev: ; @_ZNSt3__19allocatorIP4NodeEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIP4NodeEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5emptyB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	subs	x8, x0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_ ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9push_backERKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB108_2
	b	LBB108_1
LBB108_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv
	b	LBB108_2
LBB108_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE3endB7v160006Ev
	mov	x8, x0
	add	x0, sp, #24
	str	x8, [sp, #24]
	str	x1, [sp, #32]
	bl	__ZNKSt3__116__deque_iteratorIP4NodePS2_RS2_PS3_lLl512EEdeB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	ldr	x8, [x0]
	add	x8, x8, #1
	str	x8, [x0]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x0, #32]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, x9
	subs	x0, x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	stp	x28, x27, [sp, #272]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #288]            ; 16-byte Folded Spill
	add	x29, sp, #288
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev
	subs	x8, x0, #512
	cset	w8, lo
	tbnz	w8, #0, LBB110_2
	b	LBB110_1
LBB110_1:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #32]
	subs	x8, x8, #512
	str	x8, [x0, #32]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	sub	x9, x29, #40
	str	x9, [sp, #80]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-40]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_
	b	LBB110_25
LBB110_2:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, hs
	tbnz	w8, #0, LBB110_7
	b	LBB110_3
LBB110_3:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB110_5
	b	LBB110_4
LBB110_4:
	ldur	x0, [x29, #-32]
	mov	x1, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	sub	x1, x29, #48
	stur	x8, [x29, #-48]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_
	b	LBB110_6
LBB110_5:
	ldur	x0, [x29, #-32]
	mov	x1, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	sub	x1, x29, #56
	stur	x8, [x29, #-56]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	sub	x9, x29, #64
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-64]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_
	b	LBB110_6
LBB110_6:
	b	LBB110_24
LBB110_7:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8capacityB7v160006Ev
	mov	x8, #2
	mul	x8, x8, x0
	sub	x0, x29, #112
	stur	x8, [x29, #-112]
	sub	x1, x29, #120
	mov	x8, #1
	stur	x8, [x29, #-120]
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	mov	x8, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	str	x1, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #48]                   ; 8-byte Folded Reload
	mov	x3, x0
	sub	x0, x29, #104
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	ldur	x0, [x29, #-32]
Ltmp99:
	mov	x1, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp100:
	b	LBB110_8
LBB110_8:
	ldur	x1, [x29, #-32]
	add	x0, sp, #112
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x2, #512
	bl	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, sp, #144
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev
	add	x1, sp, #104
	str	x0, [sp, #104]
Ltmp101:
	sub	x0, x29, #104
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_
Ltmp102:
	b	LBB110_9
LBB110_9:
	add	x0, sp, #144
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE3endB7v160006Ev
	str	x0, [sp, #96]
	b	LBB110_10
LBB110_10:                              ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #96]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, eq
	tbnz	w8, #0, LBB110_15
	b	LBB110_11
LBB110_11:                              ;   in Loop: Header=BB110_10 Depth=1
	ldr	x8, [sp, #96]
	subs	x1, x8, #8
	str	x1, [sp, #96]
Ltmp114:
	sub	x0, x29, #104
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_
Ltmp115:
	b	LBB110_12
LBB110_12:                              ;   in Loop: Header=BB110_10 Depth=1
	b	LBB110_10
LBB110_13:
Ltmp113:
	str	x0, [sp, #136]
	mov	x8, x1
	str	w8, [sp, #132]
	b	LBB110_22
LBB110_14:
Ltmp116:
	str	x0, [sp, #136]
	mov	x8, x1
	str	w8, [sp, #132]
Ltmp117:
	add	x0, sp, #144
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev
Ltmp118:
	b	LBB110_21
LBB110_15:
Ltmp103:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	sub	x1, x29, #104
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp104:
	b	LBB110_16
LBB110_16:
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	sub	x8, x29, #104
	add	x1, x8, #8
Ltmp105:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp106:
	b	LBB110_17
LBB110_17:
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	sub	x8, x29, #104
	add	x1, x8, #16
Ltmp107:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp108:
	b	LBB110_18
LBB110_18:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #104
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp109:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp110:
	b	LBB110_19
LBB110_19:
Ltmp111:
	add	x0, sp, #144
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev
Ltmp112:
	b	LBB110_20
LBB110_20:
	sub	x0, x29, #104
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	b	LBB110_24
LBB110_21:
	b	LBB110_22
LBB110_22:
Ltmp119:
	sub	x0, x29, #104
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
Ltmp120:
	b	LBB110_23
LBB110_23:
	b	LBB110_26
LBB110_24:
	b	LBB110_25
LBB110_25:
	ldp	x29, x30, [sp, #288]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #304
	ret
LBB110_26:
	ldr	x0, [sp, #136]
	bl	__Unwind_Resume
LBB110_27:
Ltmp121:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table110:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp99-Lfunc_begin8            ;   Call between Lfunc_begin8 and Ltmp99
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin8            ; >> Call Site 2 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp113-Lfunc_begin8           ;     jumps to Ltmp113
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp115-Ltmp101                ;   Call between Ltmp101 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin8           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Ltmp118-Ltmp117                ;   Call between Ltmp117 and Ltmp118
	.uleb128 Ltmp121-Lfunc_begin8           ;     jumps to Ltmp121
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp103-Lfunc_begin8           ; >> Call Site 5 <<
	.uleb128 Ltmp110-Ltmp103                ;   Call between Ltmp103 and Ltmp110
	.uleb128 Ltmp116-Lfunc_begin8           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp111-Lfunc_begin8           ; >> Call Site 6 <<
	.uleb128 Ltmp112-Ltmp111                ;   Call between Ltmp111 and Ltmp112
	.uleb128 Ltmp113-Lfunc_begin8           ;     jumps to Ltmp113
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp112-Lfunc_begin8           ; >> Call Site 7 <<
	.uleb128 Ltmp119-Ltmp112                ;   Call between Ltmp112 and Ltmp119
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin8           ; >> Call Site 8 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin8           ;     jumps to Ltmp121
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp120-Lfunc_begin8           ; >> Call Site 9 <<
	.uleb128 Lfunc_end8-Ltmp120             ;   Call between Ltmp120 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIP4NodeE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE10__capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB112_2
	b	LBB112_1
LBB112_1:
	mov	x8, #0
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB112_3
LBB112_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4sizeB7v160006Ev
	lsl	x8, x0, #9
	subs	x8, x8, #1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB112_3
LBB112_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backB7v160006ERKS3_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldr	x8, [x0, #16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB114_14
	b	LBB114_1
LBB114_1:
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB114_3
	b	LBB114_2
LBB114_2:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	x10, [x8]
	subs	x9, x9, x10
	mov	x10, #8
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldur	x9, [x29, #-24]
	add	x9, x9, #1
	mov	x10, #2
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldr	x0, [x8, #8]
	ldr	x1, [x8, #16]
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-24]
	mov	x9, #0
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	subs	x9, x9, x10
	add	x2, x8, x9, lsl #3
	bl	__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [x9, #16]
	ldur	x11, [x29, #-24]
	ldr	x8, [x9, #8]
	subs	x10, x10, x11
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #8]
	b	LBB114_13
LBB114_3:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x9, x8, x9
	mov	x8, #2
	mul	x8, x8, x9
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	sub	x1, x29, #48
	mov	x8, #1
	stur	x8, [x29, #-48]
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	mov	x9, #4
	udiv	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp123:
	add	x0, sp, #80
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp124:
	b	LBB114_4
LBB114_4:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #16]
Ltmp125:
	add	x0, sp, #56
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp126:
	b	LBB114_5
LBB114_5:
	ldr	x1, [sp, #80]
	ldr	x2, [sp, #56]
Ltmp127:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
Ltmp128:
	b	LBB114_6
LBB114_6:
Ltmp129:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	add	x1, sp, #88
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp130:
	b	LBB114_7
LBB114_7:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	add	x8, sp, #88
	add	x1, x8, #8
Ltmp131:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp132:
	b	LBB114_8
LBB114_8:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	add	x8, sp, #88
	add	x1, x8, #16
Ltmp133:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp134:
	b	LBB114_9
LBB114_9:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp135:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp136:
	b	LBB114_10
LBB114_10:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	b	LBB114_13
LBB114_11:
Ltmp137:
	str	x0, [sp, #72]
	mov	x8, x1
	str	w8, [sp, #68]
Ltmp138:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
Ltmp139:
	b	LBB114_12
LBB114_12:
	b	LBB114_15
LBB114_13:
	b	LBB114_14
LBB114_14:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #16]
	add	x8, x8, #8
	str	x8, [x9, #16]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB114_15:
	ldr	x0, [sp, #72]
	bl	__Unwind_Resume
LBB114_16:
Ltmp140:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table114:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ; >> Call Site 1 <<
	.uleb128 Ltmp123-Lfunc_begin9           ;   Call between Lfunc_begin9 and Ltmp123
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp136-Ltmp123                ;   Call between Ltmp123 and Ltmp136
	.uleb128 Ltmp137-Lfunc_begin9           ;     jumps to Ltmp137
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp136-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Ltmp138-Ltmp136                ;   Call between Ltmp136 and Ltmp138
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin9           ; >> Call Site 4 <<
	.uleb128 Ltmp139-Ltmp138                ;   Call between Ltmp138 and Ltmp139
	.uleb128 Ltmp140-Lfunc_begin9           ;     jumps to Ltmp140
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp139-Lfunc_begin9           ; >> Call Site 5 <<
	.uleb128 Lfunc_end9-Ltmp139             ;   Call between Ltmp139 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE12__back_spareB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldr	x8, [x0, #16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB116_14
	b	LBB116_1
LBB116_1:
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB116_3
	b	LBB116_2
LBB116_2:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	x10, [x8]
	subs	x9, x9, x10
	mov	x10, #8
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldur	x9, [x29, #-24]
	add	x9, x9, #1
	mov	x10, #2
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldr	x0, [x8, #8]
	ldr	x1, [x8, #16]
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-24]
	mov	x9, #0
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	subs	x9, x9, x10
	add	x2, x8, x9, lsl #3
	bl	__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [x9, #16]
	ldur	x11, [x29, #-24]
	ldr	x8, [x9, #8]
	subs	x10, x10, x11
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #8]
	b	LBB116_13
LBB116_3:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x9, x8, x9
	mov	x8, #2
	mul	x8, x8, x9
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	sub	x1, x29, #48
	mov	x8, #1
	stur	x8, [x29, #-48]
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	mov	x9, #4
	udiv	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp141:
	add	x0, sp, #80
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp142:
	b	LBB116_4
LBB116_4:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #16]
Ltmp143:
	add	x0, sp, #56
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp144:
	b	LBB116_5
LBB116_5:
	ldr	x1, [sp, #80]
	ldr	x2, [sp, #56]
Ltmp145:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
Ltmp146:
	b	LBB116_6
LBB116_6:
Ltmp147:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	add	x1, sp, #88
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp148:
	b	LBB116_7
LBB116_7:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	add	x8, sp, #88
	add	x1, x8, #8
Ltmp149:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp150:
	b	LBB116_8
LBB116_8:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	add	x8, sp, #88
	add	x1, x8, #16
Ltmp151:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp152:
	b	LBB116_9
LBB116_9:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp153:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp154:
	b	LBB116_10
LBB116_10:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	b	LBB116_13
LBB116_11:
Ltmp155:
	str	x0, [sp, #72]
	mov	x8, x1
	str	w8, [sp, #68]
Ltmp156:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
Ltmp157:
	b	LBB116_12
LBB116_12:
	b	LBB116_15
LBB116_13:
	b	LBB116_14
LBB116_14:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #16]
	add	x8, x8, #8
	str	x8, [x9, #16]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB116_15:
	ldr	x0, [sp, #72]
	bl	__Unwind_Resume
LBB116_16:
Ltmp158:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table116:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp141-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp141
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp154-Ltmp141                ;   Call between Ltmp141 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin10          ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Ltmp156-Ltmp154                ;   Call between Ltmp154 and Ltmp156
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp156-Lfunc_begin10          ; >> Call Site 4 <<
	.uleb128 Ltmp157-Ltmp156                ;   Call between Ltmp156 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin10          ;     jumps to Ltmp158
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp157-Lfunc_begin10          ; >> Call Site 5 <<
	.uleb128 Lfunc_end10-Ltmp157            ;   Call between Ltmp157 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8allocateB7v160006ERS4_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB118_14
	b	LBB118_1
LBB118_1:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB118_3
	b	LBB118_2
LBB118_2:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	ldr	x10, [x8, #16]
	subs	x9, x9, x10
	mov	x10, #8
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldur	x9, [x29, #-24]
	add	x9, x9, #1
	mov	x10, #2
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldr	x0, [x8, #8]
	ldr	x1, [x8, #16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-24]
	add	x2, x8, x9, lsl #3
	bl	__ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	str	x0, [x9, #8]
	ldur	x10, [x29, #-24]
	ldr	x8, [x9, #16]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	b	LBB118_13
LBB118_3:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x9, x8, x9
	mov	x8, #2
	mul	x8, x8, x9
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	sub	x1, x29, #48
	mov	x8, #1
	stur	x8, [x29, #-48]
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	add	x8, x8, #3
	mov	x9, #4
	udiv	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp159:
	add	x0, sp, #80
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp160:
	b	LBB118_4
LBB118_4:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #16]
Ltmp161:
	add	x0, sp, #56
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp162:
	b	LBB118_5
LBB118_5:
	ldr	x1, [sp, #80]
	ldr	x2, [sp, #56]
Ltmp163:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
Ltmp164:
	b	LBB118_6
LBB118_6:
Ltmp165:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	add	x1, sp, #88
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp166:
	b	LBB118_7
LBB118_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	add	x8, sp, #88
	add	x1, x8, #8
Ltmp167:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp168:
	b	LBB118_8
LBB118_8:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	add	x8, sp, #88
	add	x1, x8, #16
Ltmp169:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp170:
	b	LBB118_9
LBB118_9:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
Ltmp171:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp172:
	b	LBB118_10
LBB118_10:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	b	LBB118_13
LBB118_11:
Ltmp173:
	str	x0, [sp, #72]
	mov	x8, x1
	str	w8, [sp, #68]
Ltmp174:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
Ltmp175:
	b	LBB118_12
LBB118_12:
	b	LBB118_15
LBB118_13:
	b	LBB118_14
LBB118_14:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	subs	x0, x8, #8
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #8]
	subs	x8, x8, #8
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB118_15:
	ldr	x0, [sp, #72]
	bl	__Unwind_Resume
LBB118_16:
Ltmp176:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp159-Lfunc_begin11          ;   Call between Lfunc_begin11 and Ltmp159
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Ltmp172-Ltmp159                ;   Call between Ltmp159 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin11          ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin11          ; >> Call Site 3 <<
	.uleb128 Ltmp174-Ltmp172                ;   Call between Ltmp172 and Ltmp174
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin11          ; >> Call Site 4 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin11          ;     jumps to Ltmp176
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp175-Lfunc_begin11          ; >> Call Site 5 <<
	.uleb128 Lfunc_end11-Ltmp175            ;   Call between Ltmp175 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB7v160006ImEERKT_S3_S3_:  ; @_ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m ; -- Begin function _ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m
	.globl	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m
	.weak_def_can_be_hidden	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m
	.p2align	2
__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m: ; @_ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC1B7v160006ERS4_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE ; -- Begin function _ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	.p2align	2
__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE: ; @_ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9push_backEOS3_
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldr	x8, [x0, #16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB123_14
	b	LBB123_1
LBB123_1:
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB123_3
	b	LBB123_2
LBB123_2:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	x10, [x8]
	subs	x9, x9, x10
	mov	x10, #8
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldur	x9, [x29, #-24]
	add	x9, x9, #1
	mov	x10, #2
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldr	x0, [x8, #8]
	ldr	x1, [x8, #16]
	ldr	x8, [x8, #8]
	ldur	x10, [x29, #-24]
	mov	x9, #0
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	subs	x9, x9, x10
	add	x2, x8, x9, lsl #3
	bl	__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [x9, #16]
	ldur	x11, [x29, #-24]
	ldr	x8, [x9, #8]
	subs	x10, x10, x11
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #8]
	b	LBB123_13
LBB123_3:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x9, x8, x9
	mov	x8, #2
	mul	x8, x8, x9
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	sub	x1, x29, #48
	mov	x8, #1
	stur	x8, [x29, #-48]
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	mov	x8, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	mov	x9, #4
	udiv	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp177:
	add	x0, sp, #80
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp178:
	b	LBB123_4
LBB123_4:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #16]
Ltmp179:
	add	x0, sp, #56
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp180:
	b	LBB123_5
LBB123_5:
	ldr	x1, [sp, #80]
	ldr	x2, [sp, #56]
Ltmp181:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
Ltmp182:
	b	LBB123_6
LBB123_6:
Ltmp183:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	add	x1, sp, #88
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp184:
	b	LBB123_7
LBB123_7:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	add	x8, sp, #88
	add	x1, x8, #8
Ltmp185:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp186:
	b	LBB123_8
LBB123_8:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	add	x8, sp, #88
	add	x1, x8, #16
Ltmp187:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp188:
	b	LBB123_9
LBB123_9:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp189:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp190:
	b	LBB123_10
LBB123_10:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	b	LBB123_13
LBB123_11:
Ltmp191:
	str	x0, [sp, #72]
	mov	x8, x1
	str	w8, [sp, #68]
Ltmp192:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
Ltmp193:
	b	LBB123_12
LBB123_12:
	b	LBB123_15
LBB123_13:
	b	LBB123_14
LBB123_14:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #16]
	add	x8, x8, #8
	str	x8, [x9, #16]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB123_15:
	ldr	x0, [sp, #72]
	bl	__Unwind_Resume
LBB123_16:
Ltmp194:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table123:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp177-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp177
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp190-Ltmp177                ;   Call between Ltmp177 and Ltmp190
	.uleb128 Ltmp191-Lfunc_begin12          ;     jumps to Ltmp191
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp190-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp192-Ltmp190                ;   Call between Ltmp190 and Ltmp192
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp192-Lfunc_begin12          ; >> Call Site 4 <<
	.uleb128 Ltmp193-Ltmp192                ;   Call between Ltmp192 and Ltmp193
	.uleb128 Ltmp194-Lfunc_begin12          ;     jumps to Ltmp194
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp193-Lfunc_begin12          ; >> Call Site 5 <<
	.uleb128 Lfunc_end12-Ltmp193            ;   Call between Ltmp193 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev ; -- Begin function _ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev
	.globl	__ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev
	.weak_definition	__ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev
	.p2align	2
__ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev: ; @_ZNKSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE3getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev ; -- Begin function _ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev
	.globl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev
	.weak_definition	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev
	.p2align	2
__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev: ; @_ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE7releaseB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #16]
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE10push_frontERKS3_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB126_14
	b	LBB126_1
LBB126_1:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x0, #16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB126_3
	b	LBB126_2
LBB126_2:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	ldr	x10, [x8, #16]
	subs	x9, x9, x10
	mov	x10, #8
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldur	x9, [x29, #-24]
	add	x9, x9, #1
	mov	x10, #2
	sdiv	x9, x9, x10
	stur	x9, [x29, #-24]
	ldr	x0, [x8, #8]
	ldr	x1, [x8, #16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-24]
	add	x2, x8, x9, lsl #3
	bl	__ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	str	x0, [x9, #8]
	ldur	x10, [x29, #-24]
	ldr	x8, [x9, #16]
	add	x8, x8, x10, lsl #3
	str	x8, [x9, #16]
	b	LBB126_13
LBB126_3:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x9, x8, x9
	mov	x8, #2
	mul	x8, x8, x9
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	sub	x1, x29, #48
	mov	x8, #1
	stur	x8, [x29, #-48]
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	add	x8, x8, #3
	mov	x9, #4
	udiv	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC1EmmS6_
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
Ltmp195:
	add	x0, sp, #80
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp196:
	b	LBB126_4
LBB126_4:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #16]
Ltmp197:
	add	x0, sp, #56
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
Ltmp198:
	b	LBB126_5
LBB126_5:
	ldr	x1, [sp, #80]
	ldr	x2, [sp, #56]
Ltmp199:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
Ltmp200:
	b	LBB126_6
LBB126_6:
Ltmp201:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	add	x1, sp, #88
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp202:
	b	LBB126_7
LBB126_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	add	x8, sp, #88
	add	x1, x8, #8
Ltmp203:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp204:
	b	LBB126_8
LBB126_8:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	add	x8, sp, #88
	add	x1, x8, #16
Ltmp205:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp206:
	b	LBB126_9
LBB126_9:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
Ltmp207:
	bl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
Ltmp208:
	b	LBB126_10
LBB126_10:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	b	LBB126_13
LBB126_11:
Ltmp209:
	str	x0, [sp, #72]
	mov	x8, x1
	str	w8, [sp, #68]
Ltmp210:
	add	x0, sp, #88
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
Ltmp211:
	b	LBB126_12
LBB126_12:
	b	LBB126_15
LBB126_13:
	b	LBB126_14
LBB126_14:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	subs	x0, x8, #8
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #8]
	subs	x8, x8, #8
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB126_15:
	ldr	x0, [sp, #72]
	bl	__Unwind_Resume
LBB126_16:
Ltmp212:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table126:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp195-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp195
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp195-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp208-Ltmp195                ;   Call between Ltmp195 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin13          ;     jumps to Ltmp209
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp208-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Ltmp210-Ltmp208                ;   Call between Ltmp208 and Ltmp210
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin13          ; >> Call Site 4 <<
	.uleb128 Ltmp211-Ltmp210                ;   Call between Ltmp210 and Ltmp211
	.uleb128 Ltmp212-Lfunc_begin13          ;     jumps to Ltmp212
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp211-Lfunc_begin13          ; >> Call Site 5 <<
	.uleb128 Lfunc_end13-Ltmp211            ;   Call between Ltmp211 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_ ; -- Begin function _ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
	.globl	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
	.weak_definition	__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
	.p2align	2
__ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_: ; @_ZNSt3__14swapB7v160006IPPP4NodeEEvRT_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev ; -- Begin function _ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev
	.globl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev
	.p2align	2
__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev: ; @_ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_ ; -- Begin function _ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.globl	__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.weak_definition	__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.p2align	2
__ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_: ; @_ZNSt3__14moveB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE18__construct_at_endINS_13move_iteratorIPS3_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESD_SD_
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-16]
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	str	x8, [sp, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #48]
	bl	__ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x2, x0
	sub	x0, x29, #48
	add	x1, x8, #16
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m
	b	LBB133_1
LBB133_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB133_8
	b	LBB133_2
LBB133_2:                               ;   in Loop: Header=BB133_1 Depth=1
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-48]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp214:
	sub	x0, x29, #8
	bl	__ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp215:
	b	LBB133_3
LBB133_3:                               ;   in Loop: Header=BB133_1 Depth=1
Ltmp216:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
Ltmp217:
	b	LBB133_4
LBB133_4:                               ;   in Loop: Header=BB133_1 Depth=1
	b	LBB133_5
LBB133_5:                               ;   in Loop: Header=BB133_1 Depth=1
	ldur	x8, [x29, #-48]
	add	x8, x8, #8
	stur	x8, [x29, #-48]
Ltmp218:
	sub	x0, x29, #8
	bl	__ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev
Ltmp219:
	b	LBB133_6
LBB133_6:                               ;   in Loop: Header=BB133_1 Depth=1
	b	LBB133_1
LBB133_7:
Ltmp220:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
Ltmp221:
	sub	x0, x29, #48
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev
Ltmp222:
	b	LBB133_9
LBB133_8:
	sub	x0, x29, #48
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB133_9:
	b	LBB133_10
LBB133_10:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
LBB133_11:
Ltmp223:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table133:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14    ; >> Call Site 1 <<
	.uleb128 Ltmp214-Lfunc_begin14          ;   Call between Lfunc_begin14 and Ltmp214
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp214-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Ltmp219-Ltmp214                ;   Call between Ltmp214 and Ltmp219
	.uleb128 Ltmp220-Lfunc_begin14          ;     jumps to Ltmp220
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp221-Lfunc_begin14          ; >> Call Site 3 <<
	.uleb128 Ltmp222-Ltmp221                ;   Call between Ltmp221 and Ltmp222
	.uleb128 Ltmp223-Lfunc_begin14          ;     jumps to Ltmp223
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp222-Lfunc_begin14          ; >> Call Site 4 <<
	.uleb128 Lfunc_end14-Ltmp222            ;   Call between Ltmp222 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_ ; -- Begin function _ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
	.globl	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
	.weak_def_can_be_hidden	__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
	.p2align	2
__ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_: ; @_ZNSt3__113move_iteratorIPPP4NodeEC1B7v160006ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JRKS4_EvEEvRS5_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JRKS3_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_ ; -- Begin function _ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.globl	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.weak_definition	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.p2align	2
__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: ; @_ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_: ; @_ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB137_2
	b	LBB137_1
LBB137_1:
	b	LBB137_2
LBB137_2:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.globl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_: ; @_ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_ ; -- Begin function _ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_
	.globl	__ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_
	.weak_definition	__ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_
	.p2align	2
__ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_: ; @_ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_ ; -- Begin function _ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.globl	__ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.weak_definition	__ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.p2align	2
__ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_: ; @_ZNKSt3__114__move_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_ ; -- Begin function _ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.globl	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.weak_definition	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.p2align	2
__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_: ; @_ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_ ; -- Begin function _ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.globl	__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.weak_definition	__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.p2align	2
__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_: ; @_ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_ ; -- Begin function _ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_
	.globl	__ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_
	.weak_definition	__ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_
	.p2align	2
__ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_: ; @_ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
	.globl	__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_: ; @_ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
Ltmp224:
	bl	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp225:
	b	LBB144_1
LBB144_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB144_2:
Ltmp226:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	b	LBB144_3
LBB144_3:
	ldr	x0, [sp, #24]
	bl	___cxa_call_unexpected
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table144:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp224-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp225-Ltmp224                ;   Call between Ltmp224 and Ltmp225
	.uleb128 Ltmp226-Lfunc_begin15          ;     jumps to Ltmp226
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp225-Lfunc_begin15          ; >> Call Site 2 <<
	.uleb128 Lfunc_end15-Ltmp225            ;   Call between Ltmp225 and Lfunc_end15
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end15:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase15:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_ ; -- Begin function _ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.globl	__ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.weak_definition	__ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.p2align	2
__ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_: ; @_ZNSt3__119__copy_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x8, [sp, #16]
	lsl	x2, x8, #3
	bl	_memmove
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_ ; -- Begin function _ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.globl	__ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.weak_definition	__ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.p2align	2
__ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_: ; @_ZNSt3__19make_pairB7v160006IRPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_ ; -- Begin function _ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	.globl	__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	.p2align	2
__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_: ; @_ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_ ; -- Begin function _ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_
	.globl	__ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_
	.p2align	2
__ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_: ; @_ZNSt3__14pairIPPP4NodeS4_EC2B7v160006ERKS4_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_
	.globl	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_: ; @_ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__unwrapB7v160006ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_
	.globl	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_: ; @_ZNSt3__118__unwrap_iter_implIPPP4NodeLb1EE8__rewrapB7v160006ES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_ ; -- Begin function _ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.globl	__ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.weak_definition	__ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.p2align	2
__ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_: ; @_ZNSt3__18distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC1B7v160006EPPS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE9constructB7v160006IS4_JS4_EvEEvRS5_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JS3_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev ; -- Begin function _ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev
	.globl	__ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev
	.weak_definition	__ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev
	.p2align	2
__ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev: ; @_ZNKSt3__113move_iteratorIPPP4NodeEdeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev ; -- Begin function _ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev
	.globl	__ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev
	.weak_definition	__ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev
	.p2align	2
__ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev: ; @_ZNSt3__113move_iteratorIPPP4NodeEppB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #8
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE ; -- Begin function _ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE
	.globl	__ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE
	.weak_definition	__ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE
	.p2align	2
__ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE: ; @_ZNSt3__110__distanceB7v160006INS_13move_iteratorIPPP4NodeEEEENS_15iterator_traitsIT_E15difference_typeES8_S8_NS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	sub	x1, x29, #8
	stur	x0, [x29, #-8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE ; -- Begin function _ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE
	.globl	__ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE
	.weak_definition	__ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE
	.p2align	2
__ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE: ; @_ZNSt3__1miB7v160006IPPP4NodeS4_EENS_13move_iteratorIT_E15difference_typeERKS7_RKNS5_IT0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	mov	x9, #8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev ; -- Begin function _ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev
	.globl	__ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev
	.weak_definition	__ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev
	.p2align	2
__ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev: ; @_ZNKSt3__113move_iteratorIPPP4NodeE4baseB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionC2B7v160006EPPS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JS3_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JS3_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JS3_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JS3_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JS3_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE21_ConstructTransactionD2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	ldr	x9, [x0, #16]
	str	x8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_ ; -- Begin function _ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_
	.globl	__ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_
	.weak_def_can_be_hidden	__ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_
	.p2align	2
__ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_: ; @_ZNSt3__113move_iteratorIPPP4NodeEC2B7v160006ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JRKS3_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JRKS3_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JRKS3_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JRKS3_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIPP4NodeE9constructB7v160006IS3_JRKS3_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em ; -- Begin function _ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em
	.globl	__ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em
	.weak_definition	__ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em
	.p2align	2
__ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em: ; @_ZNSt3__19allocatorIP4NodeE8allocateB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8max_sizeB7v160006IS4_vEEmRKS4_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB168_2
	b	LBB168_1
LBB168_1:
	bl	__ZSt28__throw_bad_array_new_lengthB7v160006v
LBB168_2:
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB168_4
	b	LBB168_3
LBB168_3:
	ldr	x8, [sp, #8]
	lsl	x0, x8, #3
	bl	__Znwm
	stur	x0, [x29, #-8]
	b	LBB168_5
LBB168_4:
	ldr	x8, [sp, #8]
	lsl	x0, x8, #3
	mov	x1, #8
	bl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	stur	x0, [x29, #-8]
	b	LBB168_5
LBB168_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8max_sizeB7v160006IS4_vEEmRKS4_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8max_sizeB7v160006IS4_vEEmRKS4_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8max_sizeB7v160006IS4_vEEmRKS4_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8max_sizeB7v160006IS4_vEEmRKS4_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE8max_sizeB7v160006IS4_vEEmRKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB7v160006v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB7v160006v
	.globl	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB7v160006v: ; @_ZSt28__throw_bad_array_new_lengthB7v160006v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB7v160006Emm ; -- Begin function _ZNSt3__117__libcpp_allocateB7v160006Emm
	.globl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	.weak_definition	__ZNSt3__117__libcpp_allocateB7v160006Emm
	.p2align	2
__ZNSt3__117__libcpp_allocateB7v160006Emm: ; @_ZNSt3__117__libcpp_allocateB7v160006Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev ; -- Begin function _ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev
	.globl	__ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev
	.weak_definition	__ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev
	.p2align	2
__ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev: ; @_ZNKSt3__19allocatorIP4NodeE8max_sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #2305843009213693951
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_ ; -- Begin function _ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.globl	__ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.weak_definition	__ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.p2align	2
__ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_: ; @_ZNSt3__113move_backwardB7v160006IPPP4NodeS4_EET0_T_S6_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_ ; -- Begin function _ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.globl	__ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.weak_definition	__ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.p2align	2
__ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: ; @_ZNSt3__115__move_backwardB7v160006INS_17_ClassicAlgPolicyEPPP4NodeS5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_: ; @_ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPPP4NodeS8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB176_2
	b	LBB176_1
LBB176_1:
	b	LBB176_2
LBB176_2:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.globl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_: ; @_ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPPP4NodeSA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB7v160006IPPP4NodeS4_EENS_4pairIT0_S6_EET_S8_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPPP4NodeNS_18__unwrap_iter_implIS4_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB7v160006IPPP4NodeS4_EET_S5_T0_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB7v160006IPPP4NodeS4_NS_18__unwrap_iter_implIS4_Lb1EEEEET_S7_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB7v160006IPPP4NodeS4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_ ; -- Begin function _ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.globl	__ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.weak_definition	__ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.p2align	2
__ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_: ; @_ZNKSt3__123__move_backward_trivialclB7v160006IPP4NodeS4_Li0EEENS_4pairIPT_PT0_EES7_S7_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_ ; -- Begin function _ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.globl	__ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.weak_definition	__ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.p2align	2
__ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_: ; @_ZNSt3__128__copy_backward_trivial_implB7v160006IPP4NodeS3_EENS_4pairIPT_PT0_EES6_S6_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x10, [sp, #16]
	ldr	x8, [sp, #24]
	mov	x9, #0
	subs	x9, x9, x10
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x8, [sp, #16]
	lsl	x2, x8, #3
	bl	_memmove
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_ ; -- Begin function _ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.globl	__ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.weak_definition	__ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.p2align	2
__ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_: ; @_ZNSt3__19make_pairB7v160006IRPPP4NodeS5_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS7_IT0_E4typeEEEOS8_OSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPPP4NodeS4_EC1B7v160006ERKS4_S7_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	tbz	w0, #0, LBB181_2
	b	LBB181_1
LBB181_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB181_3
LBB181_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB181_3
LBB181_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_ ; -- Begin function _ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.globl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.weak_definition	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.p2align	2
__ZNKSt3__16__lessImmEclB7v160006ERKmS3_: ; @_ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEEC2EmmS6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x1, sp, #32
                                        ; kill: def $x9 killed $xzr
	str	xzr, [sp, #32]
	ldr	x2, [sp, #40]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC1B7v160006IDnS7_EEOT_OT0_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB183_2
	b	LBB183_1
LBB183_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB183_3
LBB183_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB183_3
LBB183_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #3
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC1B7v160006IDnS7_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC1B7v160006IDnS7_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC1B7v160006IDnS7_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC1B7v160006IDnS7_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC1B7v160006IDnS7_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC2B7v160006IDnS7_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m ; -- Begin function _ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m
	.globl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m: ; @_ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIPP4NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC2B7v160006IDnS7_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC2B7v160006IDnS7_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC2B7v160006IDnS7_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC2B7v160006IDnS7_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEEC2B7v160006IDnS7_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EEC2B7v160006IDnvEEOT_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EEC2B7v160006IS6_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EEC2B7v160006IS6_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EEC2B7v160006IS6_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EEC2B7v160006IS6_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EEC2B7v160006IS6_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPP4NodeEELi1ELb0EEC2B7v160006IS6_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em ; -- Begin function _ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em
	.globl	__ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em
	.weak_definition	__ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em
	.p2align	2
__ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em: ; @_ZNSt3__19allocatorIPP4NodeE8allocateB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE8max_sizeB7v160006IS5_vEEmRKS5_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB188_2
	b	LBB188_1
LBB188_1:
	bl	__ZSt28__throw_bad_array_new_lengthB7v160006v
LBB188_2:
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB188_4
	b	LBB188_3
LBB188_3:
	ldr	x8, [sp, #8]
	lsl	x0, x8, #3
	bl	__Znwm
	stur	x0, [x29, #-8]
	b	LBB188_5
LBB188_4:
	ldr	x8, [sp, #8]
	lsl	x0, x8, #3
	mov	x1, #8
	bl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	stur	x0, [x29, #-8]
	b	LBB188_5
LBB188_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE8max_sizeB7v160006IS5_vEEmRKS5_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE8max_sizeB7v160006IS5_vEEmRKS5_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE8max_sizeB7v160006IS5_vEEmRKS5_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE8max_sizeB7v160006IS5_vEEmRKS5_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE8max_sizeB7v160006IS5_vEEmRKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev ; -- Begin function _ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev
	.globl	__ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev
	.weak_definition	__ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev
	.p2align	2
__ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev: ; @_ZNKSt3__19allocatorIPP4NodeE8max_sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #2305843009213693951
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m ; -- Begin function _ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m
	.globl	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m
	.weak_def_can_be_hidden	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m
	.p2align	2
__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m: ; @_ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEC2B7v160006ERS4_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE ; -- Begin function _ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
	.p2align	2
__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE: ; @_ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006ILb1EvEES3_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS7_EEXT_EE20__good_rval_ref_typeE
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	stur	x0, [x29, #-8]
	sub	x1, x29, #16
	stur	x8, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x2, [sp, #24]
Ltmp242:
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006IRS3_S7_EEOT_OT0_
Ltmp243:
	b	LBB192_1
LBB192_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB192_2:
Ltmp244:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB192_3
LBB192_3:
	ldr	x0, [sp, #16]
	bl	___cxa_call_unexpected
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table192:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp242-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp243-Ltmp242                ;   Call between Ltmp242 and Ltmp243
	.uleb128 Ltmp244-Lfunc_begin16          ;     jumps to Ltmp244
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp243-Lfunc_begin16          ; >> Call Site 2 <<
	.uleb128 Lfunc_end16-Ltmp243            ;   Call between Ltmp243 and Lfunc_end16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end16:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase16:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006IRS3_S7_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006IRS3_S7_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006IRS3_S7_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006IRS3_S7_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC1B7v160006IRS3_S7_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006IRS3_S7_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006IRS3_S7_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006IRS3_S7_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006IRS3_S7_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006IRS3_S7_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEEC2B7v160006IRS3_S7_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EEC2B7v160006IRS3_vEEOT_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EEC2B7v160006IS6_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EEC2B7v160006IRS3_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EEC2B7v160006IRS3_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EEC2B7v160006IRS3_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EEC2B7v160006IRS3_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EEC2B7v160006IRS3_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EEC2B7v160006IS6_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EEC2B7v160006IS6_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EEC2B7v160006IS6_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EEC2B7v160006IS6_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EEC2B7v160006IS6_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	q0, [x8]
	str	q0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIPP4NodeLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPPP4NodeNS_9allocatorIS3_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev ; -- Begin function _ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev
	.globl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev
	.p2align	2
__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev: ; @_ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEED2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_ ; -- Begin function _ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_
	.globl	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_
	.weak_definition	__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_
	.p2align	2
__ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_: ; @_ZNSt3__110unique_ptrIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5resetB7v160006ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE5firstB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB205_2
	b	LBB205_1
LBB205_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev
	ldr	x1, [sp, #24]
	bl	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_
	b	LBB205_2
LBB205_2:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPP4NodeNS_22__allocator_destructorINS_9allocatorIS2_EEEEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_ ; -- Begin function _ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_
	.globl	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_
	.weak_definition	__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_
	.p2align	2
__ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_: ; @_ZNSt3__122__allocator_destructorINS_9allocatorIP4NodeEEEclB7v160006EPS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x1, [sp]
	ldr	x2, [x8, #8]
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIP4NodeEEEELi1ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEED2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB209_2
	b	LBB209_1
LBB209_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE10deallocateB7v160006ERS5_PS4_m
	b	LBB209_2
LBB209_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE5clearB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE8capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_ ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_NS_17integral_constantIbLb0EEE
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB213_1
LBB213_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB213_6
	b	LBB213_2
LBB213_2:                               ;   in Loop: Header=BB213_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006IPP4NodeEEPT_S5_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp251:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPP4NodeEEE7destroyB7v160006IS4_vEEvRS5_PT_
Ltmp252:
	b	LBB213_3
LBB213_3:                               ;   in Loop: Header=BB213_1 Depth=1
	b	LBB213_1
LBB213_4:
Ltmp253:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	b	LBB213_5
LBB213_5:
	ldr	x0, [sp, #32]
	bl	___cxa_call_unexpected
LBB213_6:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table213:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase17-Lttbaseref17
Lttbaseref17:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp251-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp252-Ltmp251                ;   Call between Ltmp251 and Ltmp252
	.uleb128 Ltmp253-Lfunc_begin17          ;     jumps to Ltmp253
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp252-Lfunc_begin17          ; >> Call Site 2 <<
	.uleb128 Lfunc_end17-Ltmp252            ;   Call between Ltmp252 and Lfunc_end17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end17:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase17:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev: ; @_ZNKSt3__114__split_bufferIPP4NodeRNS_9allocatorIS3_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPPP4NodeRNS_9allocatorIS3_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPPP4NodeLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorIP4NodeE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorIP4NodeE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorIP4NodeE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorIP4NodeE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorIP4NodeE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x0, #32]
	add	x8, x8, x9
	subs	x8, x8, #1
	str	x8, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	ldr	x8, [sp, #16]
	mov	x11, #512
	udiv	x8, x8, x11
	ldr	x8, [x0, x8, lsl  #3]
	ldr	x9, [sp, #16]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp255:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp256:
	b	LBB218_1
LBB218_1:
Ltmp257:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp258:
	b	LBB218_2
LBB218_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB218_15
	b	LBB218_3
LBB218_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp259:
	bl	__ZNKSt3__18ios_base5flagsB7v160006Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp260:
	b	LBB218_4
LBB218_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176
	and	w8, w8, w9
	subs	w8, w8, #32
	cset	w8, ne
	tbnz	w8, #0, LBB218_6
	b	LBB218_5
LBB218_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB218_7
LBB218_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB218_7
LBB218_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp261:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp262:
	b	LBB218_8
LBB218_8:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp263:
	sxtb	w5, w8
	bl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp264:
	b	LBB218_9
LBB218_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	tbz	w0, #0, LBB218_14
	b	LBB218_10
LBB218_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp265:
	mov	w1, #5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
Ltmp266:
	b	LBB218_11
LBB218_11:
	b	LBB218_14
LBB218_12:
Ltmp272:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB218_18
LBB218_13:
Ltmp267:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp268:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp269:
	b	LBB218_17
LBB218_14:
	b	LBB218_15
LBB218_15:
Ltmp270:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp271:
	b	LBB218_16
LBB218_16:
	b	LBB218_20
LBB218_17:
	b	LBB218_18
LBB218_18:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp273:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp274:
	b	LBB218_19
LBB218_19:
	bl	___cxa_end_catch
	b	LBB218_20
LBB218_20:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB218_21:
Ltmp275:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp276:
	bl	___cxa_end_catch
Ltmp277:
	b	LBB218_22
LBB218_22:
	b	LBB218_23
LBB218_23:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB218_24:
Ltmp278:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table218:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase18-Lttbaseref18
Lttbaseref18:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp255-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp256-Ltmp255                ;   Call between Ltmp255 and Ltmp256
	.uleb128 Ltmp272-Lfunc_begin18          ;     jumps to Ltmp272
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp257-Lfunc_begin18          ; >> Call Site 2 <<
	.uleb128 Ltmp266-Ltmp257                ;   Call between Ltmp257 and Ltmp266
	.uleb128 Ltmp267-Lfunc_begin18          ;     jumps to Ltmp267
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp268-Lfunc_begin18          ; >> Call Site 3 <<
	.uleb128 Ltmp269-Ltmp268                ;   Call between Ltmp268 and Ltmp269
	.uleb128 Ltmp278-Lfunc_begin18          ;     jumps to Ltmp278
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp270-Lfunc_begin18          ; >> Call Site 4 <<
	.uleb128 Ltmp271-Ltmp270                ;   Call between Ltmp270 and Ltmp271
	.uleb128 Ltmp272-Lfunc_begin18          ;     jumps to Ltmp272
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp271-Lfunc_begin18          ; >> Call Site 5 <<
	.uleb128 Ltmp273-Ltmp271                ;   Call between Ltmp271 and Ltmp273
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp273-Lfunc_begin18          ; >> Call Site 6 <<
	.uleb128 Ltmp274-Ltmp273                ;   Call between Ltmp273 and Ltmp274
	.uleb128 Ltmp275-Lfunc_begin18          ;     jumps to Ltmp275
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp274-Lfunc_begin18          ; >> Call Site 7 <<
	.uleb128 Ltmp276-Ltmp274                ;   Call between Ltmp274 and Ltmp276
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp276-Lfunc_begin18          ; >> Call Site 8 <<
	.uleb128 Ltmp277-Ltmp276                ;   Call between Ltmp276 and Ltmp277
	.uleb128 Ltmp278-Lfunc_begin18          ;     jumps to Ltmp278
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp277-Lfunc_begin18          ; >> Call Site 9 <<
	.uleb128 Lfunc_end18-Ltmp277            ;   Call between Ltmp277 and Lfunc_end18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase18:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthEPKc:  ; @_ZNSt3__111char_traitsIcE6lengthEPKc
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
Ltmp279:
	bl	__ZNSt3__118__constexpr_strlenB7v160006EPKc
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp280:
	b	LBB219_1
LBB219_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB219_2:
Ltmp281:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB219_3
LBB219_3:
	ldr	x0, [sp, #16]
	bl	___cxa_call_unexpected
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table219:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase19-Lttbaseref19
Lttbaseref19:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp279-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp280-Ltmp279                ;   Call between Ltmp279 and Ltmp280
	.uleb128 Ltmp281-Lfunc_begin19          ;     jumps to Ltmp281
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp280-Lfunc_begin19          ; >> Call Site 2 <<
	.uleb128 Lfunc_end19-Ltmp280            ;   Call between Ltmp280 and Lfunc_end19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end19:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase19:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB221_2
	b	LBB221_1
LBB221_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_24
LBB221_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB7v160006Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB221_4
	b	LBB221_3
LBB221_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB221_5
LBB221_4:
	str	xzr, [sp, #72]
	b	LBB221_5
LBB221_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB221_9
	b	LBB221_6
LBB221_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB221_8
	b	LBB221_7
LBB221_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_24
LBB221_8:
	b	LBB221_9
LBB221_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB221_19
	b	LBB221_10
LBB221_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp283:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp284:
	b	LBB221_11
LBB221_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB221_14
	b	LBB221_12
LBB221_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB221_15
LBB221_13:
Ltmp285:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
Ltmp286:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp287:
	b	LBB221_18
LBB221_14:
	str	wzr, [sp, #24]
	b	LBB221_15
LBB221_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB221_17
	b	LBB221_16
LBB221_16:
	b	LBB221_24
LBB221_17:
	b	LBB221_19
LBB221_18:
	b	LBB221_25
LBB221_19:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB221_23
	b	LBB221_20
LBB221_20:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB221_22
	b	LBB221_21
LBB221_21:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_24
LBB221_22:
	b	LBB221_23
LBB221_23:
	ldur	x0, [x29, #-48]
	mov	x1, #0
	bl	__ZNSt3__18ios_base5widthB7v160006El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB221_24
LBB221_24:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB221_25:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
LBB221_26:
Ltmp288:
	bl	___clang_call_terminate
; %bb.27:
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table221:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase20-Lttbaseref20
Lttbaseref20:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20    ; >> Call Site 1 <<
	.uleb128 Ltmp283-Lfunc_begin20          ;   Call between Lfunc_begin20 and Ltmp283
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp283-Lfunc_begin20          ; >> Call Site 2 <<
	.uleb128 Ltmp284-Ltmp283                ;   Call between Ltmp283 and Ltmp284
	.uleb128 Ltmp285-Lfunc_begin20          ;     jumps to Ltmp285
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp286-Lfunc_begin20          ; >> Call Site 3 <<
	.uleb128 Ltmp287-Ltmp286                ;   Call between Ltmp286 and Ltmp287
	.uleb128 Ltmp288-Lfunc_begin20          ;     jumps to Ltmp288
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp287-Lfunc_begin20          ; >> Call Site 4 <<
	.uleb128 Lfunc_end20-Ltmp287            ;   Call between Ltmp287 and Lfunc_end20
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase20:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB7v160006Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB7v160006Ev
	.globl	__ZNKSt3__18ios_base5flagsB7v160006Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB7v160006Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB7v160006Ev:  ; @_ZNKSt3__18ios_base5flagsB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofEv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	tbz	w0, #0, LBB224_2
	b	LBB224_1
LBB224_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	sxtb	w8, w0
	str	w8, [x9, #144]
	b	LBB224_2
LBB224_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #144]
	sxtb	w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB7v160006Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB7v160006Ev ; -- Begin function _ZNKSt3__18ios_base5widthB7v160006Ev
	.globl	__ZNKSt3__18ios_base5widthB7v160006Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB7v160006Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB7v160006Ev:  ; @_ZNKSt3__18ios_base5widthB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	bl	__ZNSt3__112__to_addressB7v160006IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB7v160006El ; -- Begin function _ZNSt3__18ios_base5widthB7v160006El
	.globl	__ZNSt3__18ios_base5widthB7v160006El
	.weak_definition	__ZNSt3__18ios_base5widthB7v160006El
	.p2align	2
__ZNSt3__18ios_base5widthB7v160006El:   ; @_ZNSt3__18ios_base5widthB7v160006El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x1, sp, #14
	add	x2, sp, #13
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_ ; -- Begin function _ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.globl	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.weak_definition	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.p2align	2
__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_: ; @_ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B7v160006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B7v160006Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B7v160006Ev
	.globl	__ZNSt3__19allocatorIcEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B7v160006Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B7v160006Ev:   ; @_ZNSt3__19allocatorIcEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB7v160006IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB7v160006IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	tbz	w0, #0, LBB241_2
	b	LBB241_1
LBB241_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB241_3
LBB241_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB241_3
LBB241_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB242_2
	b	LBB242_1
LBB242_1:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB242_3
LBB242_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	ldrb	w8, [x0, #23]
	lsr	w8, w8, #7
	ands	w8, w8, #0xff
	cset	w8, ne
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB242_3
LBB242_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB7v160006ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp299:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp300:
	b	LBB248_1
LBB248_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB248_2:
Ltmp301:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	b	LBB248_3
LBB248_3:
	ldr	x0, [sp, #24]
	bl	___cxa_call_unexpected
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table248:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase21-Lttbaseref21
Lttbaseref21:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Ltmp299-Lfunc_begin21          ; >> Call Site 1 <<
	.uleb128 Ltmp300-Ltmp299                ;   Call between Ltmp299 and Ltmp300
	.uleb128 Ltmp301-Lfunc_begin21          ;     jumps to Ltmp301
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp300-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Lfunc_end21-Ltmp300            ;   Call between Ltmp300 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.byte	127                             ; >> Action Record 1 <<
                                        ;   Filter TypeInfo -1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
Lttbase21:
                                        ; >> Filter TypeInfos <<
	.byte	0
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB7v160006Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB7v160006Ev
	.globl	__ZNKSt3__18ios_base5rdbufB7v160006Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB7v160006Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB7v160006Ev:  ; @_ZNKSt3__18ios_base5rdbufB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ; -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	2
__ZNSt3__111char_traitsIcE3eofEv:       ; @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
; %bb.0:
	mov	w0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp304:
	bl	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp305:
	b	LBB253_1
LBB253_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp306:
	bl	__ZNKSt3__15ctypeIcE5widenB7v160006Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp307:
	b	LBB253_2
LBB253_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w0, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB253_3:
Ltmp308:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
Ltmp309:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
Ltmp310:
	b	LBB253_4
LBB253_4:
	b	LBB253_5
LBB253_5:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
LBB253_6:
Ltmp311:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table253:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase22-Lttbaseref22
Lttbaseref22:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Lfunc_begin22-Lfunc_begin22    ; >> Call Site 1 <<
	.uleb128 Ltmp304-Lfunc_begin22          ;   Call between Lfunc_begin22 and Ltmp304
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp304-Lfunc_begin22          ; >> Call Site 2 <<
	.uleb128 Ltmp307-Ltmp304                ;   Call between Ltmp304 and Ltmp307
	.uleb128 Ltmp308-Lfunc_begin22          ;     jumps to Ltmp308
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp307-Lfunc_begin22          ; >> Call Site 3 <<
	.uleb128 Ltmp309-Ltmp307                ;   Call between Ltmp307 and Ltmp309
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp309-Lfunc_begin22          ; >> Call Site 4 <<
	.uleb128 Ltmp310-Ltmp309                ;   Call between Ltmp309 and Ltmp310
	.uleb128 Ltmp311-Lfunc_begin22          ;     jumps to Ltmp311
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp310-Lfunc_begin22          ; >> Call Site 5 <<
	.uleb128 Lfunc_end22-Ltmp310            ;   Call between Ltmp310 and Lfunc_end22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase22:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB7v160006Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB7v160006Ec:  ; @_ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB7v160006Ej ; -- Begin function _ZNSt3__18ios_base8setstateB7v160006Ej
	.globl	__ZNSt3__18ios_base8setstateB7v160006Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB7v160006Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB7v160006Ej: ; @_ZNSt3__18ios_base8setstateB7v160006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB7v160006EPKc ; -- Begin function _ZNSt3__118__constexpr_strlenB7v160006EPKc
	.globl	__ZNSt3__118__constexpr_strlenB7v160006EPKc
	.weak_definition	__ZNSt3__118__constexpr_strlenB7v160006EPKc
	.p2align	2
__ZNSt3__118__constexpr_strlenB7v160006EPKc: ; @_ZNSt3__118__constexpr_strlenB7v160006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE8pop_backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-16]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0, #32]
	add	x8, x8, x9
	subs	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	ldr	x8, [sp, #24]
	mov	x11, #512
	udiv	x8, x8, x11
	ldr	x8, [x0, x8, lsl  #3]
	ldr	x9, [sp, #24]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #3
	bl	__ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	mov	w8, #1
	and	w1, w8, #0x1
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_
	.globl	__ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_: ; @_ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE25__maybe_remove_back_spareB7v160006Eb
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	mov	w8, #1
	and	w8, w1, w8
	sturb	w8, [x29, #-17]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev
	subs	x8, x0, #2
	cset	w8, hs
	tbnz	w8, #0, LBB260_3
	b	LBB260_1
LBB260_1:
	ldurb	w8, [x29, #-17]
	tbnz	w8, #0, LBB260_4
	b	LBB260_2
LBB260_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB260_4
	b	LBB260_3
LBB260_3:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [x8]
	mov	x2, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB260_5
LBB260_4:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB260_5
LBB260_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__back_spare_blocksB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE12__back_spareB7v160006Ev
	mov	x8, #512
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE4backB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	subs	x0, x8, #8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev: ; @_ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE8pop_backB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #16]
	subs	x1, x8, #8
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE17__destruct_at_endB7v160006EPS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev ; -- Begin function _ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.globl	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev: ; @_ZNSt3__15queueIP4NodeNS_5dequeIS2_NS_9allocatorIS2_EEEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEEC1B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE5frontEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x9, #32]
	mov	x11, #512
	udiv	x8, x8, x11
	ldr	x8, [x0, x8, lsl  #3]
	ldr	x9, [x9, #32]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE9pop_frontEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5beginB7v160006Ev
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x9, #32]
	mov	x11, #512
	udiv	x8, x8, x11
	ldr	x8, [x0, x8, lsl  #3]
	ldr	x9, [x9, #32]
	udiv	x10, x9, x11
	mul	x10, x10, x11
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #3
	bl	__ZNSt3__112__to_addressB7v160006IP4NodeEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE7destroyB7v160006IS3_vEEvRS4_PT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE6__sizeB7v160006Ev
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	ldr	x8, [x0, #32]
	add	x8, x8, #1
	str	x8, [x0, #32]
	mov	w8, #1
	and	w1, w8, #0x1
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb ; -- Begin function _ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb
	.globl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb
	.weak_definition	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb
	.p2align	2
__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb: ; @_ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE26__maybe_remove_front_spareB7v160006Eb
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	mov	w8, #1
	and	w8, w1, w8
	sturb	w8, [x29, #-17]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev
	subs	x8, x0, #2
	cset	w8, hs
	tbnz	w8, #0, LBB267_3
	b	LBB267_1
LBB267_1:
	ldurb	w8, [x29, #-17]
	tbnz	w8, #0, LBB267_4
	b	LBB267_2
LBB267_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev
	subs	x8, x0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB267_4
	b	LBB267_3
LBB267_3:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE5frontB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [x8]
	mov	x2, #512
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIP4NodeEEE10deallocateB7v160006ERS4_PS3_m
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9pop_frontB7v160006Ev
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #32]
	subs	x8, x8, #512
	str	x8, [x9, #32]
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB267_5
LBB267_4:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB267_5
LBB267_5:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev ; -- Begin function _ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev
	.globl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev
	.weak_definition	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev
	.p2align	2
__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev: ; @_ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE20__front_spare_blocksB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__15dequeIP4NodeNS_9allocatorIS2_EEE13__front_spareB7v160006Ev
	mov	x8, #512
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_ ; -- Begin function _ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_
	.globl	__ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_
	.weak_definition	__ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_
	.p2align	2
__ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_: ; @_ZNSt3__14sortB7v160006IPPKcNS_6__lessIS2_S2_EEEEvT_S6_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	sub	x2, x29, #1
	bl	__ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_ ; -- Begin function _ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_
	.globl	__ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_
	.weak_definition	__ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_
	.p2align	2
__ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_: ; @_ZNSt3__111__sort_implB7v160006INS_17_ClassicAlgPolicyEPPKcNS_6__lessIS3_S3_EEEEvT0_S7_RT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	bl	__ZNSt3__130__libcpp_is_constant_evaluatedB7v160006Ev
	tbz	w0, #0, LBB270_2
	b	LBB270_1
LBB270_1:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	bl	__ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_
	b	LBB270_3
LBB270_2:
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE
	b	LBB270_3
LBB270_3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_ ; -- Begin function _ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	.globl	__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	.weak_definition	__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	.p2align	2
__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_: ; @_ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_ ; -- Begin function _ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_
	.globl	__ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_
	.weak_definition	__ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_
	.p2align	2
__ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_: ; @_ZNSt3__114__partial_sortB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_S6_EET1_S7_S7_T2_RT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB272_2
	b	LBB272_1
LBB272_1:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_
	stur	x0, [x29, #-8]
	b	LBB272_3
LBB272_2:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_
	str	x0, [sp]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__123__debug_randomize_rangeB7v160006INS_17_ClassicAlgPolicyEPPKcS4_EEvT0_T1_
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	LBB272_3
LBB272_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE ; -- Begin function _ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE
	.globl	__ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE
	.weak_definition	__ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE
	.p2align	2
__ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE: ; @_ZNSt3__16__sortB7v160006IRNS_6__lessIPKcS3_EES2_EEvPPT0_S8_RNS1_IS7_S7_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	add	x2, sp, #7
	bl	__ZNSt3__16__sortIRNS_6__lessImmEEPmEEvT0_S5_T_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_ ; -- Begin function _ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.globl	__ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.weak_definition	__ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.p2align	2
__ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_: ; @_ZNSt3__113__unwrap_iterB7v160006IPPKcNS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_ ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_ ; -- Begin function _ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_
	.globl	__ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_
	.weak_definition	__ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_
	.p2align	2
__ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_: ; @_ZNSt3__119__partial_sort_implB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_S7_EET1_S8_S8_T2_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB276_2
	b	LBB276_1
LBB276_1:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE4nextB7v160006IPPKcEET_S7_S7_
	stur	x0, [x29, #-8]
	b	LBB276_9
LBB276_2:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]
	b	LBB276_3
LBB276_3:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB276_8
	b	LBB276_4
LBB276_4:                               ;   in Loop: Header=BB276_3 Depth=1
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	ldur	x2, [x29, #-16]
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB276_6
	b	LBB276_5
LBB276_5:                               ;   in Loop: Header=BB276_3 Depth=1
	add	x0, sp, #8
	sub	x1, x29, #16
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldur	x3, [x29, #-16]
	bl	__ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_
	b	LBB276_6
LBB276_6:                               ;   in Loop: Header=BB276_3 Depth=1
	b	LBB276_7
LBB276_7:                               ;   in Loop: Header=BB276_3 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	LBB276_3
LBB276_8:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB276_9
LBB276_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_ ; -- Begin function _ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.globl	__ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.weak_definition	__ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.p2align	2
__ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_: ; @_ZNSt3__111__make_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	cset	w8, le
	tbnz	w8, #0, LBB277_6
	b	LBB277_1
LBB277_1:
	ldr	x8, [sp, #8]
	mov	x9, #2
	subs	x8, x8, #2
	sdiv	x8, x8, x9
	str	x8, [sp]
	b	LBB277_2
LBB277_2:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB277_5
	b	LBB277_3
LBB277_3:                               ;   in Loop: Header=BB277_2 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	add	x3, x8, x9, lsl #3
	bl	__ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_
	b	LBB277_4
LBB277_4:                               ;   in Loop: Header=BB277_2 Depth=1
	ldr	x8, [sp]
	subs	x8, x8, #1
	str	x8, [sp]
	b	LBB277_2
LBB277_5:
	b	LBB277_6
LBB277_6:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_ ; -- Begin function _ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	.globl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	.weak_definition	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	.p2align	2
__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_: ; @_ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_ ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB7v160006IRPPKcS7_EEvOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldr	x8, [sp]
	ldr	x1, [x8]
	bl	__ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_ ; -- Begin function _ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_
	.globl	__ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_
	.weak_definition	__ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_
	.p2align	2
__ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_: ; @_ZNSt3__111__sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_OT0_NS_15iterator_traitsIS8_E15difference_typeES8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	subs	x8, x8, #2
	cset	w8, lt
	tbnz	w8, #0, LBB280_2
	b	LBB280_1
LBB280_1:
	ldur	x8, [x29, #-24]
	mov	x9, #2
	subs	x8, x8, #2
	sdiv	x8, x8, x9
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB280_3
	b	LBB280_2
LBB280_2:
	b	LBB280_17
LBB280_3:
	ldr	x9, [sp, #24]
	mov	x8, #2
	mul	x8, x8, x9
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB280_6
	b	LBB280_4
LBB280_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #16]
	add	x2, x8, #8
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB280_6
	b	LBB280_5
LBB280_5:
	ldr	x8, [sp, #16]
	add	x8, x8, #8
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB280_6
LBB280_6:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #32]
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB280_8
	b	LBB280_7
LBB280_7:
	b	LBB280_17
LBB280_8:
	add	x0, sp, #32
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	str	x8, [sp, #8]
	b	LBB280_9
LBB280_9:                               ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #16
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-24]
	mov	x9, #2
	subs	x8, x8, #2
	sdiv	x8, x8, x9
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB280_11
	b	LBB280_10
LBB280_10:
	b	LBB280_16
LBB280_11:                              ;   in Loop: Header=BB280_9 Depth=1
	ldr	x9, [sp, #24]
	mov	x8, #2
	mul	x8, x8, x9
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB280_14
	b	LBB280_12
LBB280_12:                              ;   in Loop: Header=BB280_9 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #16]
	add	x2, x8, #8
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB280_14
	b	LBB280_13
LBB280_13:                              ;   in Loop: Header=BB280_9 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #8
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB280_14
LBB280_14:                              ;   in Loop: Header=BB280_9 Depth=1
	b	LBB280_15
LBB280_15:                              ;   in Loop: Header=BB280_9 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	add	x2, sp, #8
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB280_9
	b	LBB280_16
LBB280_16:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	str	x8, [x9]
	b	LBB280_17
LBB280_17:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_ ; -- Begin function _ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.globl	__ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.weak_definition	__ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.p2align	2
__ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_: ; @_ZNSt3__111__sort_heapB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #8]
	b	LBB281_1
LBB281_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	cset	w8, le
	tbnz	w8, #0, LBB281_4
	b	LBB281_2
LBB281_2:                               ;   in Loop: Header=BB281_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE
	b	LBB281_3
LBB281_3:                               ;   in Loop: Header=BB281_1 Depth=1
	ldur	x8, [x29, #-16]
	subs	x8, x8, #8
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB281_1
LBB281_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_ ; -- Begin function _ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_
	.globl	__ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_
	.weak_definition	__ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_
	.p2align	2
__ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_: ; @_ZNSt3__19iter_swapB7v160006IPPKcS3_EEvT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__14swapB7v160006IPKcEEvRT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB7v160006IPKcEEvRT_S4_ ; -- Begin function _ZNSt3__14swapB7v160006IPKcEEvRT_S4_
	.globl	__ZNSt3__14swapB7v160006IPKcEEvRT_S4_
	.weak_definition	__ZNSt3__14swapB7v160006IPKcEEvRT_S4_
	.p2align	2
__ZNSt3__14swapB7v160006IPKcEEvRT_S4_:  ; @_ZNSt3__14swapB7v160006IPKcEEvRT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_ ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRPPKcEEvv
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE ; -- Begin function _ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE
	.globl	__ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE
	.weak_definition	__ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE
	.p2align	2
__ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE: ; @_ZNSt3__110__pop_heapB7v160006INS_17_ClassicAlgPolicyENS_6__lessIPKcS4_EEPS4_EEvT1_S7_RT0_NS_15iterator_traitsIS7_E15difference_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	cset	w8, le
	tbnz	w8, #0, LBB286_5
	b	LBB286_1
LBB286_1:
	sub	x0, x29, #8
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #32]
	bl	__ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	str	x0, [sp, #8]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #8
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB286_3
	b	LBB286_2
LBB286_2:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	LBB286_4
LBB286_3:
	sub	x0, x29, #16
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #24]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x3, x8, x9
	bl	__ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	b	LBB286_4
LBB286_4:
	b	LBB286_5
LBB286_5:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE ; -- Begin function _ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.globl	__ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.weak_definition	__ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.p2align	2
__ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE: ; @_ZNSt3__117__floyd_sift_downB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EET1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	str	xzr, [sp]
	b	LBB287_1
LBB287_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	add	x9, x8, #1
	ldr	x8, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]
	ldr	x9, [sp]
	mov	x8, #2
	mul	x8, x8, x9
	add	x8, x8, #1
	str	x8, [sp]
	ldr	x8, [sp]
	add	x8, x8, #1
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB287_4
	b	LBB287_2
LBB287_2:                               ;   in Loop: Header=BB287_1 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	ldr	x8, [sp, #8]
	add	x2, x8, #8
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB287_4
	b	LBB287_3
LBB287_3:                               ;   in Loop: Header=BB287_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	LBB287_4
LBB287_4:                               ;   in Loop: Header=BB287_1 Depth=1
	add	x0, sp, #8
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	str	x8, [sp, #16]
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	mov	x10, #2
	subs	x9, x9, #2
	sdiv	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB287_6
	b	LBB287_5
LBB287_5:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB287_6:                               ;   in Loop: Header=BB287_1 Depth=1
	b	LBB287_1
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE ; -- Begin function _ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.globl	__ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.weak_definition	__ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.p2align	2
__ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE: ; @_ZNSt3__19__sift_upB7v160006INS_17_ClassicAlgPolicyERNS_6__lessIPKcS4_EEPS4_EEvT1_S8_OT0_NS_15iterator_traitsIS8_E15difference_typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	cset	w8, le
	tbnz	w8, #0, LBB288_9
	b	LBB288_1
LBB288_1:
	ldr	x8, [sp, #16]
	mov	x9, #2
	subs	x8, x8, #2
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	ldur	x8, [x29, #-16]
	subs	x2, x8, #8
	stur	x2, [x29, #-16]
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbz	w0, #0, LBB288_8
	b	LBB288_2
LBB288_2:
	sub	x0, x29, #16
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	str	x8, [sp]
	b	LBB288_3
LBB288_3:                               ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #8
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRPPKcEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB288_5
	b	LBB288_4
LBB288_4:
	b	LBB288_7
LBB288_5:                               ;   in Loop: Header=BB288_3 Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	mov	x9, #2
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]
	b	LBB288_6
LBB288_6:                               ;   in Loop: Header=BB288_3 Depth=1
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	mov	x2, sp
	bl	__ZNKSt3__16__lessIPKcS2_EclB7v160006ERKS2_S5_
	tbnz	w0, #0, LBB288_3
	b	LBB288_7
LBB288_7:
	ldr	x8, [sp]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	LBB288_8
LBB288_8:
	b	LBB288_9
LBB288_9:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_
	.globl	__ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_: ; @_ZNSt3__118__unwrap_iter_implIPPKcLb1EE8__unwrapB7v160006ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_
	.globl	__ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_: ; @_ZNSt3__112__to_addressB7v160006IPKcEEPT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" "

l_.str.1:                               ; @.str.1
	.asciz	"Point A ("

l_.str.2:                               ; @.str.2
	.asciz	", "

l_.str.3:                               ; @.str.3
	.asciz	") found: "

l_.str.4:                               ; @.str.4
	.asciz	"Yes"

l_.str.5:                               ; @.str.5
	.asciz	"No"

l_.str.6:                               ; @.str.6
	.asciz	"Sorted points based on distance from origin:"

l_.str.7:                               ; @.str.7
	.asciz	"("

l_.str.8:                               ; @.str.8
	.asciz	")"

l_.str.9:                               ; @.str.9
	.asciz	"DEF"

l_.str.10:                              ; @.str.10
	.asciz	"BBB"

l_.str.11:                              ; @.str.11
	.asciz	"EE"

l_.str.12:                              ; @.str.12
	.asciz	"AA"

l_.str.13:                              ; @.str.13
	.asciz	"CAB"

l_.str.14:                              ; @.str.14
	.asciz	"AAA"

l_.str.15:                              ; @.str.15
	.asciz	"DDDD"

l_.str.16:                              ; @.str.16
	.asciz	"FFFF"

l_.str.17:                              ; @.str.17
	.asciz	"CCCC"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const._Z8problem2v.names
l___const._Z8problem2v.names:
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.10
	.quad	l_.str.16
	.quad	l_.str.17

	.section	__TEXT,__cstring,cstring_literals
l_.str.18:                              ; @.str.18
	.asciz	"Iterative search found "

l_.str.19:                              ; @.str.19
	.asciz	" at index: "

l_.str.20:                              ; @.str.20
	.asciz	"Recursive search found "

l_.str.21:                              ; @.str.21
	.asciz	"Problem 3: Binary tree traversal not implemented."

l_.str.22:                              ; @.str.22
	.asciz	"\nMenu:\n"

l_.str.23:                              ; @.str.23
	.asciz	"1. Run Problem 1\n"

l_.str.24:                              ; @.str.24
	.asciz	"2. Run Problem 2\n"

l_.str.25:                              ; @.str.25
	.asciz	"3. Run Problem 3\n"

l_.str.26:                              ; @.str.26
	.asciz	"0. Exit\n"

l_.str.27:                              ; @.str.27
	.asciz	"Enter your choice: "

l_.str.28:                              ; @.str.28
	.asciz	"Exiting program."

l_.str.29:                              ; @.str.29
	.asciz	"\033[31mInvalid choice. Please try again."

.subsections_via_symbols
