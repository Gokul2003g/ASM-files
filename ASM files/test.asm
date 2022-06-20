
;<Program title>

jmp start

;data


;code
start: nop
mvi a,00

mvi b,3

mvi c,3

loop: add c

dcr b

jnz loop

sta 0000h

hlt