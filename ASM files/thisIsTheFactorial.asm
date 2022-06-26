jmp start

;code
start: nop
    
lxi h, 0003H	; Load the memory address where the list starts
mov b,m		; move the content from the memory to B register
mov c,b		; move the content from the B to C register
dcr b		; decrement the B register

loop1: 	mov d,b		; move the content from the B to D register
	mvi a,00	; move the content from the B to C register

loop2: 	add c		; add the value in C to the accumulator 
	dcr d		; decrement the D register
	jnz loop2	; check again 
	mov c,a		; move the content from the A to C register
	dcr b		; decrement the B register
	jnz loop1	; jump to loop1

sta 0005h

hlt