
;<Program title>

jmp start

;data


;code
start: nop

lxi h, 0001h
mov b,m
lxi h, 0002h
mov c,m

loop1:	add b
	dcr c
	jnz loop1
sta 0008h
hlt