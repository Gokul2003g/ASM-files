jmp start

;data


;code
start: nop
MVI A, 06H
MVI H, 09H
MVI L, 01H

CMP H
JNC Loop1
JC Loop2
Loop1: MOV A,H
Loop2: CMP L
       JNC LOOP3

STA 0000H
HLT
LOOP3: MOV A,L
STA 0000H

hlt