 ; Divide a 4-byte Number by Another 4-byte Number 
  ; Dividend is in memory locations 4000H to 4003H
    ; Divisor is in memory locations 4004H to 4007H
    ; Result (quotient) will be stored in memory 4008H to 400BH

    LXI H, 4000H    ; Load address of dividend (4000H)
    LXI D, 4004H    ; Load address of divisor (4004H)
    LXI B, 4008H    ; Load address to store quotient (4008H)

    MVI C, 00H      ; Initialize quotient to 0 (byte-by-byte calculation)
    MVI E, 00H      ; Initialize remainder to 0 (E = remainder)

DIV_LOOP:
    MOV A, M        ; Move dividend (byte) to accumulator
    MOV D, M        ; Copy dividend to D for subtraction
    MOV A, M        ; Load the byte from memory
    MOV E, D        ; Move divisor byte into E
    
    ; Perform the subtraction or any byte-specific division logic
    ; Repeat the division step until all bytes are processed
    ; Adjust the quotient and remainder (E = result)
HLT

; Shubham Sharma
; 2021-22BCSE046
