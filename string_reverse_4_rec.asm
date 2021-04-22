; Code that reverses a string recursively
; Subject: Arquitetura de Computadores
; Autor: Fellype Siqueira Barroso


	JMP main

string: DB "UFOPA0" 	; Variable + char terminator

main:
	MOV A, string		; Point for var
	MOV D, 232		; Point for output
	MOV B, 48		; 0 == 48 (ASCII)
	CALL .invert
	HLT

.invert:
	INC A			; walker on the vector
	CMP B, [A]
	JNZ .invert

.print:
	DEC A
	MOV C, [A]		
	MOV [D], C		; print char
	MOV [A], B		; update char
	INC D
	CMP A, string
	JZ .end
	MOV A, string		; Point reboot
	CALL .invert	
.end:
	RET
