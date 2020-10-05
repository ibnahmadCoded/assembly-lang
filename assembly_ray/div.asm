; testing division in assembly
;

 	segment	.data
 x	dq	100
 y	dq	5	; divisor
 q	dq	0 	; quotient
 r	dq	0	; remainder

	segment	.text
	global	main
 main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, [x]
	mov	rdx, 0
	mov	rcx, [y]
	idiv	rcx
	mov	[q], rax
	mov	[r], rdx
	mov	rax, 0
	leave
	ret
