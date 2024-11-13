; Add First N Natural Numbers and Store Result in Memory Location X 

MVI B, 05H      ; Load the number of terms (N = 5)
MVI C, 01H      ; Start from 1
MVI H, 00H      ; Initialize sum to 0 (high byte)
MVI L, 00H      ; Initialize sum to 0 (low byte)

ADD_LOOP:
ADD C           ; Add current number (C) to sum
MOV L, A        ; Store the sum in L
INX H           ; Update the sum in H for higher byte
INR C           ; Increment the counter (C)
DCR B           ; Decrement the number of terms
JNZ ADD_LOOP    ; Repeat until B is 0

SHLD 5000H      
HLT

; Shubham Sharma
; 2021-22BCSE046
