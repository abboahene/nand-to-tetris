// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

// my pseudo code:
// from i = 1 to R1
// add i to R2 (make sure R2 is 0)

@i
M=0

@R2
M=0

(LOOP)
@R1
D=M

@i
D=M-D
@END
D;JEQ

@R0
D=M

@R2
M=M+D

@i
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP