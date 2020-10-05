; This program adds two integers a and b
;
; inputs: a and b
;
; output(s): a + b
; 
 	segment .data
 a	dq	175
 b	dq	4097

	segment .text
	global  main
main:
	mov	rax, [a]	; move a to rax
	add	rax, [b]	; add b to rax
	xor	rax, rax
	ret
