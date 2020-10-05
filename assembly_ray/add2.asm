; This program adds two integers a and b
;
; inputs: a, b, c qnd d
;
; it continues adding up until the sum is lef in one register
; 
 	segment .data
 a	dq	0xAF
 b	dq	4097
 c      dq	-175
 d	dq	-4097

	segment .text
	global  main
main:
	mov	rax, [a]	; move a to rax
	mov 	rbx, [b]	; move b to rbx
	mov 	rcx, [c]	; move c to rcx
	mov	rdx, [d]	; move d to rcx
	add	rax, rbx	; add rbx to rax
	add     rax, rcx	; add rcx to rax
	add	rax, rdx	; add rdx to rax
	xor	rax, rax
	ret
