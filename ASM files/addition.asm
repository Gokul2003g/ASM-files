
;<Program title>

jmp start

;data


;code
start: nop


MVI	C, 0000H	
LDA	0001h
MOV	B, A	
LDA	0002H	
ADD 	B		
DAA
JNC FWD
INR 	C
FWD:	STA 0003H
	MOV A,C
	STA 0004H
HLT