
;<Program title>

jmp start

;data


;code
start: nop

lhld 0001h
xchg 
lhld 0006h
dad d
mvi a, 16
jnc load

load: add h
mov h,a
shld 0009h 
hlt