; Code that iteratively reverse a string
; Subject: Arquitetura de Computadores
; Autor: Fellype Siqueira Barroso

	JMP start

string:	DB 0
	DB "UFOPA"

tam: DB 5

start: 	
	MOV C, string
	ADD C, [qtd]
	MOV D, 232
	CALL print
	HLT

print:
	PUSH A
	PUSH B
	MOV B, 0
.loop:	
	MOV A, [C]
	MOV [D], A
	DEC C
	INC D
	CMP B, [C]
	JNZ .loop

	POP B
	POP A
	RET
