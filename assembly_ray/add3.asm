; This program adds four integers a, b, c and d
;
; inputs: a, b, c qnd d
;
; it sums them up and puts the sum in memory location e
; 
 	segment .data
 a	dq	0xAF
 b	dq	4099
 c      dq	-175
 d	dq	-4097
 e	dq	0

	segment .text
	global  main
main:
	mov	rax, [a]	; move a to rax
	mov 	rbx, [b]	; move b to rbx
	mov 	rcx, [c]	; move c to rcx
	mov	rdx, [d]	; move d to rdx
	add	rax, rbx	; add rbx to rax
	add     rax, rcx	; add rcx to rax
	add	rax, rdx	; add rdx to rax
	mov 	[e], rax	; move rax to memory (e)
	xor	rax, rax
	ret
