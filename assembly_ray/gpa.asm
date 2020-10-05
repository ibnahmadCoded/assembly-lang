; This program calculates the average of four grades
;
; We store the average and the remainder of the division in memory
;
; The grades are stored in a, b, c and d
;
; Inputs: a, b, c, d
;
; Outputs: avr, rem
;
 	segment	.data
 a	dq	75
 b	dq	10
 c	dq	53
 d	dq	36
 n	dq	4			; n = 4 (total number of grades)
 avr	dq	0
 rem	dq	0

	segment	.text
	global	main
 main:	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, [a]		; move a into rax
	add 	rax, [b]		; add b to rax
	add 	rax, [c]		; add c to rax
	add	rax, [d]		; add d to rax
	mov	rdx, 0			; zero out rdx, so that rdx:rax == rax
	mov	rcx, [n]		; move the divisor into rcx
	idiv	rcx			; divide rax by 4
	mov	[avr], rax		; move the quotient to average
	mov	[rem], rdx		; move the remainder to rdx
	mov 	rax, 0	
	leave
	ret	
