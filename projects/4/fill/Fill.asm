// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.


(LOOP)

    @SCREEN
    D=A

    @addr
    M=D


    (SLOOP)

        @addr
        D=M

        @24576 //my approximate screen memory address given the hack screen size
        D=D-A
        @LOOP
        D;JEQ

        @KBD
        D=M
        @BLACK
        D;JGT
        @WHITE
        D;JEQ

        (BLACK)
        @addr
        A=M
        M=-1
        @CONT
        0;JMP

        (WHITE)
        @addr
        A=M
        M=0
        @CONT
        0;JMP

        (CONT)
        @addr
        M=M+1

    @SLOOP
    0;JMP

@LOOP
0;JMP
