; multiply two unsigned 8-bit numbers to get a 16-bit product

MVI B, 05H      ; Load first operand (05H) in B
MVI C, 04H      ; Load second operand (04H) in C
MVI H, 00H      ; Initialize higher byte of result to 0
MVI L, 00H      ; Initialize lower byte of result to 0

MUL_LOOP:
MOV A, C        ; Load C (second operand) into A
ADD L           ; Add to lower byte of result
MOV L, A        ; Store result back in L
JNC NO_CARRY    ; Check for carry

INX H           ; Increment higher byte if there was a carry

NO_CARRY:
DCR B           ; Decrement count in B
JNZ MUL_LOOP    ; Repeat if B is not zero

HLT
; Result is in H (high byte) and L (low byte)

; Shubham Sharma
; 2021-22BCSE046
