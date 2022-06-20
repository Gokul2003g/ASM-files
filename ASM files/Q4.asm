
;<Program title>

jmp start

;data


;code
start: nop

lxi h,0016h
mov a,m
inx h
mov b,m
add b
inx h
mov m,a
dcx h
dcx h
mov a,m
inx h
mov b,m
sub b
inx h
inx h
mov m,a
hlt

