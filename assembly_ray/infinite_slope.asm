; This program moves 1 to rax if slope is infinite and 0 to rax if not
;
; Solpe is infinite if xa - xb = 0 (i.e. the denominator in slope formula)
;
; The two coordinates are stored in memory as ax, ay, bx and by
;
; Inputs: ax, ay, bx, by
;
; Outputs: None
;
 	segment	.data
 xa	dq	7
 xb	dq	7
 ya	dq	5
 yb	dq	3

	segment	.text
	global	main
 main:	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, [xa]		; move xa into rax
	sub 	rax, [xb]		; subtract xb from xa, leave result in rax
	mov	rbx, 1			; set rbx to 1
	cmovz	rax, rbx		; move 1 to rax if rax is zero (inf slope)
	mov	rcx, 0			; set rcx to 0
	cmovnz	rax, rcx		; move 0 to rax if rax is nt zero
	leave
	ret	
