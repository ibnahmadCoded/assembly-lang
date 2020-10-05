; this program calculates the cost of electricity in a home
;
; formula is $5.00+cost per kilowatt hours9(cpkh)+(kilowatt hours(kh) / 1000)
;
; if kh/1000 is negative, set kh/1000 to zero
;
; store the dollars value in memory and the pennies in memory. 1$ = 100p
;
; cpkh = pennies (integer), kh = hours (integer); both in memory
;

 	segment	.data
 cpkh	dq	50
 kh	dq	5000
 d	dq	0			; dollars
 p	dq	0			; pennies

	segment	.text
	global	main
main:
	push 	rbp
	mov  	rbp, rsp
	sub  	rsp, 16
	mov  	rax, [kh]		; set rax to kh
	mov	rdx, 0			; clear out rdx, so rdx:rax=rax
	mov     rcx, 1000		; set rcx to 1000 for kh/1000
	idiv	rcx			; divide by rcx (kh/1000)
	mov	rbx, 0			; set rbx to zero
	cmovl	rax, rbx		; set rax to 0 if kh/1000 is -ve
	mov 	rbx, rax		; save d value of rax (kh/1000) into rbx
	mov	rax, 5			; move 5.00 into rax
	add	rax, [cpkh]		; add cpkh to rax
	imul	rax, rbx		; multiply rax by rbx (kh/1000) to get cost
	mov	rdx, 0			; clear out rdx again, for division
	mov	rcx, 100		; set rcx to 100. since, $1 = 100p
	idiv	rcx			; divide cost by 100
	mov	[d], rax		; move the dollars into memory
	mov	[p], rdx		; move the pennies into memory
	mov	rax, 0
	leave
	ret
