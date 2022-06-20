
;<Program title>

jmp start                 ; Jump to the place where the label "start"

 

;code
start: nop                ; <LABEL:> Instruction Operands 

 


lxi h, 0000H ; Load the memory address where the list starts
mov b,m      ; move the content from the memory to B register
mvi d,3      ; Number of value to compare

 

loop: mov a,m ; Move the content to accumulator
      cmp b   ; compare the value in accumulator with B Register
      jc skip ; skip if not greater
      mov b,a ; if greater move to B

 

skip: inx h   ; Increment the memory 
      dcr d   ; Decrement the counter
      jnz loop ; Check again 

 

hlt
 