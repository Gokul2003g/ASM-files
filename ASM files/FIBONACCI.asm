;<Program title>

jmp start

;data


;code
start: nop

lxi h, 0003H 		;load the memory address in hl register pair
mov b,m			;move the value in the memory to b register
mov c,b			;move b to c
dcr b			;decrement b it acts as counter for the loop to perform multiplication

loop1: mov d,b		;move b to d which will act as counter for adding number to accumulator in multiplication
mvi a,00		;empty accumulator after each loop

loop2: add c		;add c to accumulator
dcr d			;decrement d 
jnz loop2		;if d is not zero then jumps to loop2
mov c,a			;move value in accumulator to c
dcr b			;decrement b
jnz loop1		;if b is not zero then jump to loop1

hlt