; This program calculates the squared distance between two points given as coors
;
; The two coordinates are stored in memory as ax, ay, bx and by
;
; The result is stored in memory, in variable sd
;
; Inputs: ax, ay, bx, by
;
; Outputs: sd
;
 	segment	.data
 xa	dq	7
 xb	dq	3
 ya	dq	5
 yb	dq	3
 sd	dq	0

	segment	.text
	global	main
 main:	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rbx, [xa]		; move xa into rbx
	sub 	rbx, [xb]		; subtract xb from xa, leave result in rbx
	imul	rbx, rbx		; square xa - xb
	mov	rax, rbx		; move rbx into rax
	mov	rcx, [ya]		; move ya into rcx
	sub	rcx, [yb]		; subtract yb from ya, leave result in rcx
	imul	rcx, rcx		; square the ya - yb
	add	rax, rcx		; add the sqared distance
	mov	[sd], rax		; store d sqaured distance in sd variable
	mov	rax, 0			; return of func is stored in eax (rax)
	leave
	ret	
