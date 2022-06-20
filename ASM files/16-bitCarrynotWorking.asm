
;<Program title>

;not working


jmp start

;data


;code
start: nop

LHLD 0001H
XCHG
LHLD 0006H
DAD D
JNC skip
skip:

MVI C, OOO9H
INR C
STA 000EH
SHLD 0010H

 


hlt