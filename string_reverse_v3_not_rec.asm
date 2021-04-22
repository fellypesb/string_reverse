; Code that iteratively reverse a string
; Subject: Arquitetura de Computadores
; Autor: Fellype Siqueira Barroso


	JMP start

string: DB "UFOPA0" ; 0 == 48(ASCII)

start:
	MOV A, string
	MOV D, 232
	MOV B, 48
	CALL .function
	HLT

.function:
	
	PUSH A
	INC A
	CMP B, [A]
	JNZ .function
	
.print:
	POP A
	MOV C, [A]
	MOV [D], C
	INC D
	CMP SP, 230
	JNZ .print
	RET
	
