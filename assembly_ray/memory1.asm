; This is the code for the exercise in Ray's Intro to 64bit AL
; programming on Linux
;
; No input
;
; No output
;
 	segment .data
 a	times	10 dq 0
 b	dw      -1, 3, -7, 8, 9 
 c 	db	"string terminated by zero", 0
	
	segment .bss
 d	resq 	10
 e 	resw 	5
 f	resb	100

	segment .text
	global  main		; Let the linker know about main
 main:
	push    rbp
	mov 	rbp, rsp
	sub	rsp, 16
	
	xor	eax, eax
	leave
	ret
