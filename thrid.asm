; add two 16-bit numbers

MOV A, M
INX B
MOV B, M

LXI H, 2000H
ADD M
MOV L, A
INX H
MOV A, B
ADC M
MOV H, A

LXI D, 2002H
MOV A, L
MOV M, A
INX D
MOV A, H
MOV M, A

HLT


; Shubham Sharma
; 2021-22BCSE046
