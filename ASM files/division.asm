
;<Program title>

jmp start

;data


;code
start: nop

lxi h, 0001h
mov b, m
lxi h, 0002h
mov c, m
mvi d, 0
mov a, b
loop1:	inr d
	sub c
	jnz loop1

mov a,d
sta 0005h
hlt