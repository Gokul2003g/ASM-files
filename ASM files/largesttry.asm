; 20CYS112    - Computer Organization and Architecture
; Lab 2       - Introduction to 8085 Microprocessor
; Date        - 11.04.2022
; Description - Largest of Numbers

jmp start                 ; Jump to the place where the label "start"

;code
start: nop                ; <LABEL:> Instruction Operands 


lxi h, 0001H 	; Load the memory address where the list starts
mov b,m      	; move the content from the memory to B register
mvi d,5      	; Number of value to compare

loop: mov a,m 	; Move the content to accumulator
      cmp b   	; compare the value in accumulator with B Register
      jnc skip 	; skip if smaller
      mov b,a 	; if smaller move to B

skip: inx h   	; Increment the memory 
      dcr d   	; Decrement the counter
      jnz loop 	; Check again 
inx h
mov a,b
mov m,a

hlt