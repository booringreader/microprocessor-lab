; Multiply Two Positive Floating-Point Numbers
MVI B, 02H      ; Load first mantissa (2) into B
MVI C, 03H      ; Load second mantissa (3) into C
MVI H, 00H      ; Initialize high byte for the result
MVI L, 00H      ; Initialize low byte for the result

MOV A, B        ; Multiply mantissas
MOV D, A        ; Store result temporarily in D

MOV A, C        ; Multiply second mantissa
ADD D           ; Add intermediate result
MOV L, A        ; Store result in L (low byte)

; Floating-point adjustments (exponent handling) omitted

; Shubham Sharma
; 2021-22BCSE046
