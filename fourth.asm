; assembly program for subtraction of two 16-bit numbers

LDA 2000H
MOV B, A

LDA 2002H
SUB B
MOV C, A

LDA 2001H
MOV B, A

LDA 2003H
SUB B
MOV D,A 

STA 2004H
MOV A, D
STA 2005H

HLT

;Shubham Sharma
; 2021-22BCSE046
