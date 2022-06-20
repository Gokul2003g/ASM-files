jmp start                
start: nop
mvi c,19
lxi h, 0000h
mvi a, 0
mov m,a
inr a
inx h
loop1: mov m,a
	dcx h
	add m
	inx h
	inx h
	dcr c
	jnz loop1
hlt