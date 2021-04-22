JMP start

string: DB 0
	DB "UFOPA"
	DB 0

start: 
	MOV C, string
	MOV D, 232
	CALL print
	HLT

print:
	PUSH A
	PUSH B
	MOV B, 0
.end:	
	INC C
	INC A
	CMP B, [C]
	JNZ .end
	DEC C
	
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
