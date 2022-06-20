
;<Program title>

jmp start

;data


;code
start: nop
lxi h,000h
mov b,m
inx h
mvi a,99
sub m
inr a
add b
daa
inx h 
mov m,a
sta 0002h
hlt