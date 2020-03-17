// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R0
D = M
@R3
M = D //r3=r0
@R1
D = M
@R4
M = D //R4=R1
@0
D = A
@R2
M = D //R2 IS INITIALIZED TO 0
(start)
@R4
D = M //D =R4
@INF
D ;JLE //if r4 ie r1 = 0 jump to0
@R3
D=M
@INF
D ;JLE //if r3 ie r0 = 0 jump to0
@R4
D = M //d=r4
@R2
M = M + D  
@R3
M = M - 1  
D = M
@start
D; JGT
(INF)
@INF
0 ; JMP



