// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(start)
@KBD
D=M //D IS SET THE VALUE IN REGISTER
@start
D;JEQ // INFINITE LOOP UNTIL SOME KEY IS PRESSED

@SCREEN
D = A
@R0
M = D // VALUE OF ADRESS OF SCREEN IN R0
@6913
D =A //SET D THE VALUE WHICH HAS TO COVER ALL THE SCREEN
@SCREENBLACKVALUE
M = D //SET SCREENBLACKVALUE TO 6913
@0
D = A
@I
M = D //SET I


(LOOPING)
//IF I = SCREENBLACKVALUE GO END
@I
D = M
@SCREENBLACKVALUE
D = D - M

@END

D; JEQ


//RAM[R0+I] = -1
@R0
D = M 
@I

A = D + M
M = -1
//I++
@I
M = M + 1
@LOOPING
0;JMP

(END)
@END 
0;JEQ














