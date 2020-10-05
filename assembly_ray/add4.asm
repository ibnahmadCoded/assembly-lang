; This program adds numbers a&b with other values
;
; and stores the output in memory 
;
; the result of the sum is stored in variable 'sum'
;
; Inputs: a and b
;
; Outputs: sum
;
 	segment	.data
 a	dq	151
 b	dq	310
 sum	dq	0

	segment	.text
	global	main
 main:
	push	rbp		; push rbp into stack
	mov	rbp, rsp	; set rbp to rsp 
	sub	rsp, 16		; reserve 16 bytes for local variables
	mov	rax, 9		; set rax to 9
	add	[a], rax	; add rax to a
	mov	rax, [b]	; get b into rax
	add	rax, 10		; add 10 to rax
	add 	rax, [a]	; add a to rax
	mov	[sum], rax	; save the sum in 'sum'
	mov 	rax, 0		; set rax to 0
	leave			; undo all stack manipulations
	ret
