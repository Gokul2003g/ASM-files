
;<Program title>

jmp start

;data


;code


start: nop

lxi h,0016h
mov a,m

lxi h,0017h
mov b,m

add b

sta 0018h

lxi h,0016h
mov a,m

lxi h,0017h
mov b,m

sub b
sta 0019h

lxi h,0018h
mov a,m

lxi h,0019h
mov b,m

add b

sta 001Ah

 

hlt