; Divide an 8-bit Number by Another 8-bit Number with a 16-bit Fractional Quotient 

MVI B, 20H      ; Load first operand (dividend, e.g., 20) into register B
MVI C, 03H      ; Load second operand (divisor, e.g., 3) into register C
MVI H, 00H      ; Initialize high byte of quotient
MVI L, 00H      ; Initialize low byte of quotient

DIV_LOOP:
MOV A, B        ; Move dividend to accumulator
SUB C           ; Subtract divisor from dividend
MOV B, A        ; Store remainder in B
INX H           ; Increment quotient in L
DCR L           ; Adjust for fractional part
DCR B           ; Decrement counter
JNZ DIV_LOOP    ; Continue until done

HLT

; Shubham Sharma
; 2021-22BCSE046
