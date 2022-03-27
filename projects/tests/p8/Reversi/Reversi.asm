// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Array.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Array.Sys.init$ret.0)

// Array.new 0
(Array.new)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEArray.0
D;JGT
@SP
A=M-1
M=0
@ENDArray.0
0;JMP
(TRUEArray.0)
@SP
A=M-1
M=-1
(ENDArray.0)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Array.new$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Array.new$IF_FALSE0
0;JMP

(Array.new$IF_TRUE0)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1

// push return_address
@Array.Sys.error$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.error
@Sys.error
0;JMP
(Array.Sys.error$ret.1)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Array.new$IF_FALSE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1

// push return_address
@Array.Memory.alloc$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.alloc
@Memory.alloc
0;JMP
(Array.Memory.alloc$ret.2)

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Array.dispose 0
(Array.dispose)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1

// push return_address
@Array.Memory.deAlloc$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Array.Memory.deAlloc$ret.3)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Board.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Board.Sys.init$ret.0)

// Board.new 3
(Board.new)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1

// push return_address
@Board.Memory.alloc$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.alloc
@Memory.alloc
0;JMP
(Board.Memory.alloc$ret.1)

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Board.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Board.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Board.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@Board.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 3
@Board.3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 4
@Board.4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 7
@Board.7
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 7
@Board.7
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@THIS
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 2
@THIS
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Board.Array.new$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Board.Array.new$ret.2)

// pop this 0
@THIS
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.new$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.0
D;JLT
@SP
A=M-1
M=0
@ENDBoard.0
0;JMP
(TRUEBoard.0)
@SP
A=M-1
M=-1
(ENDBoard.0)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.new$WHILE_END0
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Board.Array.new$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Board.Array.new$ret.3)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.new$WHILE_EXP1)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.1
D;JLT
@SP
A=M-1
M=0
@ENDBoard.1
0;JMP
(TRUEBoard.1)
@SP
A=M-1
M=-1
(ENDBoard.1)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.new$WHILE_END1
D;JNE

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 7
@Board.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.new$WHILE_EXP1
0;JMP

(Board.new$WHILE_END1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.new$WHILE_EXP0
0;JMP

(Board.new$WHILE_END0)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.setCell 1
(Board.setCell)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.2
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.2
0;JMP
(TRUEBoard.2)
@SP
A=M-1
M=-1
(ENDBoard.2)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.setCell$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.setCell$IF_FALSE0
0;JMP

(Board.setCell$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.4)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.5)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Board.Math.divide$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Board.Math.divide$ret.6)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.7)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Board.Math.divide$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Board.Math.divide$ret.8)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 4
@Board.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawCircle 3

// push return_address
@Board.Screen.drawCircle$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@8
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Board.Screen.drawCircle$ret.9)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.setCell$IF_FALSE0)

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.3
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.3
0;JMP
(TRUEBoard.3)
@SP
A=M-1
M=-1
(ENDBoard.3)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Board.setCell$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Board.setCell$IF_FALSE1
0;JMP

(Board.setCell$IF_TRUE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.10)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.11)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Board.Math.divide$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Board.Math.divide$ret.12)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.13)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Board.Math.divide$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Board.Math.divide$ret.14)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 4
@Board.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Screen.drawCircle 3

// push return_address
@Board.Screen.drawCircle$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@8
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Board.Screen.drawCircle$ret.15)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.setCell$IF_FALSE1)

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.initGrid 4
(Board.initGrid)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.16)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Board.Math.divide$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Board.Math.divide$ret.17)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.18)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.initGrid$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.4
D;JLT
@SP
A=M-1
M=0
@ENDBoard.4
0;JMP
(TRUEBoard.4)
@SP
A=M-1
M=-1
(ENDBoard.4)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.initGrid$WHILE_END0
D;JNE

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.19)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.20)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.21)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.22)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.23)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.24)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.initGrid$WHILE_EXP0
0;JMP

(Board.initGrid$WHILE_END0)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.25)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.26)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.27)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.28)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Board.drawSelected 2

// push return_address
@Board.Board.drawSelected$ret.29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.drawSelected
@Board.drawSelected
0;JMP
(Board.Board.drawSelected$ret.29)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.initGrid$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.initGrid$IF_FALSE0
0;JMP

(Board.initGrid$IF_TRUE0)

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.30)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Board.Math.divide$ret.31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Board.Math.divide$ret.31)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.32)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.initGrid$WHILE_EXP1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.5
D;JLT
@SP
A=M-1
M=0
@ENDBoard.5
0;JMP
(TRUEBoard.5)
@SP
A=M-1
M=-1
(ENDBoard.5)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.initGrid$WHILE_END1
D;JNE

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.33)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.34)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.35)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.36)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.37
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.37)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.38)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.initGrid$WHILE_EXP1
0;JMP

(Board.initGrid$WHILE_END1)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.39)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.40)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.41)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.42
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.42)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Board.drawSelected 2

// push return_address
@Board.Board.drawSelected$ret.43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.drawSelected
@Board.drawSelected
0;JMP
(Board.Board.drawSelected$ret.43)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.initGrid$IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.getSelectedRow 0
(Board.getSelectedRow)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.getSelectedCol 0
(Board.getSelectedCol)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.isEmpty 1
(Board.isEmpty)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 7
@Board.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.6
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.6
0;JMP
(TRUEBoard.6)
@SP
A=M-1
M=-1
(ENDBoard.6)

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.setConsts 0
(Board.setConsts)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop static 5
@Board.5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop static 6
@Board.6
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop static 8
@Board.8
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop static 9
@Board.9
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop static 11
@Board.11
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop static 10
@Board.10
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.reverseDir 7
(Board.reverseDir)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.reverseDir$WHILE_EXP0)

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.reverseDir$WHILE_END0
D;JNE

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.7
D;JLT
@SP
A=M-1
M=0
@ENDBoard.7
0;JMP
(TRUEBoard.7)
@SP
A=M-1
M=-1
(ENDBoard.7)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.8
D;JGT
@SP
A=M-1
M=0
@ENDBoard.8
0;JMP
(TRUEBoard.8)
@SP
A=M-1
M=-1
(ENDBoard.8)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.9
D;JLT
@SP
A=M-1
M=0
@ENDBoard.9
0;JMP
(TRUEBoard.9)
@SP
A=M-1
M=-1
(ENDBoard.9)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.10
D;JGT
@SP
A=M-1
M=0
@ENDBoard.10
0;JMP
(TRUEBoard.10)
@SP
A=M-1
M=-1
(ENDBoard.10)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.reverseDir$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.reverseDir$IF_FALSE0
0;JMP

(Board.reverseDir$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Board.reverseDir$IF_END0
0;JMP

(Board.reverseDir$IF_FALSE0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 6
@LCL
D=M
@6
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 7
@Board.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.11
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.11
0;JMP
(TRUEBoard.11)
@SP
A=M-1
M=-1
(ENDBoard.11)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Board.reverseDir$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Board.reverseDir$IF_FALSE1
0;JMP

(Board.reverseDir$IF_TRUE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Board.reverseDir$IF_END1
0;JMP

(Board.reverseDir$IF_FALSE1)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 6
@LCL
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.12
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.12
0;JMP
(TRUEBoard.12)
@SP
A=M-1
M=-1
(ENDBoard.12)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Board.reverseDir$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Board.reverseDir$IF_FALSE2
0;JMP

(Board.reverseDir$IF_TRUE2)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END2
@Board.reverseDir$IF_END2
0;JMP

(Board.reverseDir$IF_FALSE2)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.reverseDir$IF_END2)

(Board.reverseDir$IF_END1)

(Board.reverseDir$IF_END0)

// goto WHILE_EXP0
@Board.reverseDir$WHILE_EXP0
0;JMP

(Board.reverseDir$WHILE_END0)

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.13
D;JGT
@SP
A=M-1
M=0
@ENDBoard.13
0;JMP
(TRUEBoard.13)
@SP
A=M-1
M=-1
(ENDBoard.13)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Board.reverseDir$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Board.reverseDir$IF_FALSE3
0;JMP

(Board.reverseDir$IF_TRUE3)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.reverseDir$WHILE_EXP1)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.14
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.14
0;JMP
(TRUEBoard.14)
@SP
A=M-1
M=-1
(ENDBoard.14)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.15
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.15
0;JMP
(TRUEBoard.15)
@SP
A=M-1
M=-1
(ENDBoard.15)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.reverseDir$WHILE_END1
D;JNE

// push constant 150
@150
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Board.Sys.wait$ret.44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Board.Sys.wait$ret.44)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.45)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.reverseDir$WHILE_EXP1
0;JMP

(Board.reverseDir$WHILE_END1)

(Board.reverseDir$IF_FALSE3)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.reverse 2
(Board.reverse)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 7
@Board.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.16
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.16
0;JMP
(TRUEBoard.16)
@SP
A=M-1
M=-1
(ENDBoard.16)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.reverse$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.reverse$IF_FALSE0
0;JMP

(Board.reverse$IF_TRUE0)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.46
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.46)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.47
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.47)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.48)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.49)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.50)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.51)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.52)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.53)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Board.reverse$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Board.reverse$IF_FALSE1
0;JMP

(Board.reverse$IF_TRUE1)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.54)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.55)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.56)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.57)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.58
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.58)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.59)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.60)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// call Board.reverseDir 7

// push return_address
@Board.Board.reverseDir$ret.61
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverseDir
@Board.reverseDir
0;JMP
(Board.Board.reverseDir$ret.61)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.reverse$IF_FALSE1)

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.17
D;JGT
@SP
A=M-1
M=0
@ENDBoard.17
0;JMP
(TRUEBoard.17)
@SP
A=M-1
M=-1
(ENDBoard.17)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Board.reverse$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Board.reverse$IF_FALSE2
0;JMP

(Board.reverse$IF_TRUE2)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setCell 4

// push return_address
@Board.Board.setCell$ret.62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setCell
@Board.setCell
0;JMP
(Board.Board.setCell$ret.62)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.reverse$IF_FALSE2)

// goto IF_END0
@Board.reverse$IF_END0
0;JMP

(Board.reverse$IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.reverse$IF_END0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.isGameOver 4
(Board.isGameOver)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.isGameOver$WHILE_EXP0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.18
D;JLT
@SP
A=M-1
M=0
@ENDBoard.18
0;JMP
(TRUEBoard.18)
@SP
A=M-1
M=-1
(ENDBoard.18)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.isGameOver$WHILE_END0
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.isGameOver$WHILE_EXP1)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.19
D;JLT
@SP
A=M-1
M=0
@ENDBoard.19
0;JMP
(TRUEBoard.19)
@SP
A=M-1
M=-1
(ENDBoard.19)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.isGameOver$WHILE_END1
D;JNE

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverse 5

// push return_address
@Board.Board.reverse$ret.63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@10
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverse
@Board.reverse
0;JMP
(Board.Board.reverse$ret.63)

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.20
D;JGT
@SP
A=M-1
M=0
@ENDBoard.20
0;JMP
(TRUEBoard.20)
@SP
A=M-1
M=-1
(ENDBoard.20)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.isGameOver$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.isGameOver$IF_FALSE0
0;JMP

(Board.isGameOver$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.isGameOver$IF_FALSE0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.isGameOver$WHILE_EXP1
0;JMP

(Board.isGameOver$WHILE_END1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.isGameOver$WHILE_EXP0
0;JMP

(Board.isGameOver$WHILE_END0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.getWinner 6
(Board.getWinner)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 7
@Board.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.getWinner$WHILE_EXP0)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.21
D;JLT
@SP
A=M-1
M=0
@ENDBoard.21
0;JMP
(TRUEBoard.21)
@SP
A=M-1
M=-1
(ENDBoard.21)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.getWinner$WHILE_END0
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.getWinner$WHILE_EXP1)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.22
D;JLT
@SP
A=M-1
M=0
@ENDBoard.22
0;JMP
(TRUEBoard.22)
@SP
A=M-1
M=-1
(ENDBoard.22)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.getWinner$WHILE_END1
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.23
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.23
0;JMP
(TRUEBoard.23)
@SP
A=M-1
M=-1
(ENDBoard.23)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.getWinner$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.getWinner$IF_FALSE0
0;JMP

(Board.getWinner$IF_TRUE0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Board.getWinner$IF_END0
0;JMP

(Board.getWinner$IF_FALSE0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.24
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.24
0;JMP
(TRUEBoard.24)
@SP
A=M-1
M=-1
(ENDBoard.24)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Board.getWinner$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Board.getWinner$IF_FALSE1
0;JMP

(Board.getWinner$IF_TRUE1)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.getWinner$IF_FALSE1)

(Board.getWinner$IF_END0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.getWinner$WHILE_EXP1
0;JMP

(Board.getWinner$WHILE_END1)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.getWinner$WHILE_EXP0
0;JMP

(Board.getWinner$WHILE_END0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.25
D;JGT
@SP
A=M-1
M=0
@ENDBoard.25
0;JMP
(TRUEBoard.25)
@SP
A=M-1
M=-1
(ENDBoard.25)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Board.getWinner$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Board.getWinner$IF_FALSE2
0;JMP

(Board.getWinner$IF_TRUE2)

// push static 5
@Board.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END2
@Board.getWinner$IF_END2
0;JMP

(Board.getWinner$IF_FALSE2)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.26
D;JLT
@SP
A=M-1
M=0
@ENDBoard.26
0;JMP
(TRUEBoard.26)
@SP
A=M-1
M=-1
(ENDBoard.26)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Board.getWinner$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Board.getWinner$IF_FALSE3
0;JMP

(Board.getWinner$IF_TRUE3)

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.getWinner$IF_FALSE3)

(Board.getWinner$IF_END2)

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.drawSelected 3
(Board.drawSelected)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Board.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.64)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 3
@Board.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.65)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Board.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.66)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.67)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.68)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.69)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.70)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.moveSelected 0
(Board.moveSelected)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.drawSelected 2

// push return_address
@Board.Board.drawSelected$ret.71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.drawSelected
@Board.drawSelected
0;JMP
(Board.Board.drawSelected$ret.71)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 8
@Board.8
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.27
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.27
0;JMP
(TRUEBoard.27)
@SP
A=M-1
M=-1
(ENDBoard.27)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.28
D;JGT
@SP
A=M-1
M=0
@ENDBoard.28
0;JMP
(TRUEBoard.28)
@SP
A=M-1
M=-1
(ENDBoard.28)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.moveSelected$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.moveSelected$IF_FALSE0
0;JMP

(Board.moveSelected$IF_TRUE0)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop this 1
@THIS
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.moveSelected$IF_FALSE0)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 9
@Board.9
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.29
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.29
0;JMP
(TRUEBoard.29)
@SP
A=M-1
M=-1
(ENDBoard.29)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.30
D;JLT
@SP
A=M-1
M=0
@ENDBoard.30
0;JMP
(TRUEBoard.30)
@SP
A=M-1
M=-1
(ENDBoard.30)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Board.moveSelected$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Board.moveSelected$IF_FALSE1
0;JMP

(Board.moveSelected$IF_TRUE1)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop this 1
@THIS
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.moveSelected$IF_FALSE1)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 10
@Board.10
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.31
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.31
0;JMP
(TRUEBoard.31)
@SP
A=M-1
M=-1
(ENDBoard.31)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.32
D;JGT
@SP
A=M-1
M=0
@ENDBoard.32
0;JMP
(TRUEBoard.32)
@SP
A=M-1
M=-1
(ENDBoard.32)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Board.moveSelected$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Board.moveSelected$IF_FALSE2
0;JMP

(Board.moveSelected$IF_TRUE2)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop this 2
@THIS
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.moveSelected$IF_FALSE2)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 11
@Board.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.33
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.33
0;JMP
(TRUEBoard.33)
@SP
A=M-1
M=-1
(ENDBoard.33)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.34
D;JLT
@SP
A=M-1
M=0
@ENDBoard.34
0;JMP
(TRUEBoard.34)
@SP
A=M-1
M=-1
(ENDBoard.34)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Board.moveSelected$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Board.moveSelected$IF_FALSE3
0;JMP

(Board.moveSelected$IF_TRUE3)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop this 2
@THIS
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.moveSelected$IF_FALSE3)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Board.drawSelected 2

// push return_address
@Board.Board.drawSelected$ret.72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.drawSelected
@Board.drawSelected
0;JMP
(Board.Board.drawSelected$ret.72)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.computerMove 6
(Board.computerMove)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.computerMove$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.35
D;JLT
@SP
A=M-1
M=0
@ENDBoard.35
0;JMP
(TRUEBoard.35)
@SP
A=M-1
M=-1
(ENDBoard.35)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.computerMove$WHILE_END0
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.computerMove$WHILE_EXP1)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.36
D;JLT
@SP
A=M-1
M=0
@ENDBoard.36
0;JMP
(TRUEBoard.36)
@SP
A=M-1
M=-1
(ENDBoard.36)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.computerMove$WHILE_END1
D;JNE

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.reverse 5

// push return_address
@Board.Board.reverse$ret.73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@10
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverse
@Board.reverse
0;JMP
(Board.Board.reverse$ret.73)

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@LCL
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.37
D;JGT
@SP
A=M-1
M=0
@ENDBoard.37
0;JMP
(TRUEBoard.37)
@SP
A=M-1
M=-1
(ENDBoard.37)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.computerMove$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.computerMove$IF_FALSE0
0;JMP

(Board.computerMove$IF_TRUE0)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 5
@LCL
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.computerMove$IF_FALSE0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.computerMove$WHILE_EXP1
0;JMP

(Board.computerMove$WHILE_END1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.computerMove$WHILE_EXP0
0;JMP

(Board.computerMove$WHILE_END0)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Board.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Board.reverse 5

// push return_address
@Board.Board.reverse$ret.74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@10
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverse
@Board.reverse
0;JMP
(Board.Board.reverse$ret.74)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.dispose 2
(Board.dispose)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.dispose$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Board.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.38
D;JLT
@SP
A=M-1
M=0
@ENDBoard.38
0;JMP
(TRUEBoard.38)
@SP
A=M-1
M=-1
(ENDBoard.38)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.dispose$WHILE_END0
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Array.dispose 1

// push return_address
@Board.Array.dispose$ret.75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.dispose
@Array.dispose
0;JMP
(Board.Array.dispose$ret.75)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.dispose$WHILE_EXP0
0;JMP

(Board.dispose$WHILE_END0)

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Array.dispose 1

// push return_address
@Board.Array.dispose$ret.76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.dispose
@Array.dispose
0;JMP
(Board.Array.dispose$ret.76)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1

// push return_address
@Board.Memory.deAlloc$ret.77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Board.Memory.deAlloc$ret.77)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.drwCl 2
(Board.drwCl)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.39
D;JGT
@SP
A=M-1
M=0
@ENDBoard.39
0;JMP
(TRUEBoard.39)
@SP
A=M-1
M=-1
(ENDBoard.39)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.40
D;JLT
@SP
A=M-1
M=0
@ENDBoard.40
0;JMP
(TRUEBoard.40)
@SP
A=M-1
M=-1
(ENDBoard.40)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.41
D;JGT
@SP
A=M-1
M=0
@ENDBoard.41
0;JMP
(TRUEBoard.41)
@SP
A=M-1
M=-1
(ENDBoard.41)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.42
D;JLT
@SP
A=M-1
M=0
@ENDBoard.42
0;JMP
(TRUEBoard.42)
@SP
A=M-1
M=-1
(ENDBoard.42)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Board.drwCl$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Board.drwCl$IF_FALSE0
0;JMP

(Board.drwCl$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.78)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.79)

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.80)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.81)

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.82)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawRectangle 4

// push return_address
@Board.Screen.drawRectangle$ret.83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Board.Screen.drawRectangle$ret.83)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Board.Screen.setColor$ret.84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Board.Screen.setColor$ret.84)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.43
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.43
0;JMP
(TRUEBoard.43)
@SP
A=M-1
M=-1
(ENDBoard.43)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Board.drwCl$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Board.drwCl$IF_FALSE1
0;JMP

(Board.drwCl$IF_TRUE1)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.85)

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.86)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.87)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.88)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.89)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.90)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.91)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.92
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.92)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.93)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.94)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.95
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.95)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.96)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.97
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.97)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.98)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.99
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.99)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.100)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.101
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.101)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.102)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.103
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.103)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.104)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.105)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.106)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.107)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.108)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.109
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.109)

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.110)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.111
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.111)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.112
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.112)

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.113
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.113)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.114
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.114)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.115
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.115)

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.116)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.117
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.117)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.118
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.118)

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.119
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.119)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.120
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.120)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.121
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.121)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.122
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.122)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.123)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.drwCl$IF_FALSE1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.44
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.44
0;JMP
(TRUEBoard.44)
@SP
A=M-1
M=-1
(ENDBoard.44)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Board.drwCl$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Board.drwCl$IF_FALSE2
0;JMP

(Board.drwCl$IF_TRUE2)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.124)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.125)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.126)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.127
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.127)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.128
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.128)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.drwCl$IF_FALSE2)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.45
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.45
0;JMP
(TRUEBoard.45)
@SP
A=M-1
M=-1
(ENDBoard.45)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Board.drwCl$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Board.drwCl$IF_FALSE3
0;JMP

(Board.drwCl$IF_TRUE3)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.129
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.129)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.130
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.130)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.131
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.131)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.132
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.132)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.133
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.133)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.134
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.134)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.135
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.135)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.136
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.136)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.137
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.137)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.138
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.138)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.139
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.139)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.140
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.140)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.141
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.141)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.142
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.142)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.143
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.143)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.144
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.144)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.145
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.145)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.146
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.146)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.147
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.147)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.148
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.148)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.149
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.149)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.150
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.150)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.151
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.151)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.152
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.152)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.153
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.153)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.154
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.154)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.155
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.155)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.156
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.156)

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.157
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.157)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.158
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.158)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.159
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.159)

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.160
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.160)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.161
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.161)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.162
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.162)

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.163
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.163)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.164
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.164)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.165
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.165)

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.166
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.166)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.167
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.167)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.168
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.168)

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.169
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.169)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawPixel 2

// push return_address
@Board.Screen.drawPixel$ret.170
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Board.Screen.drawPixel$ret.170)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.171
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.171)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.172
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.172)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.173
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.173)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.174
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.174)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.175
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.175)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.drwCl$IF_FALSE3)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.46
D;JEQ
@SP
A=M-1
M=0
@ENDBoard.46
0;JMP
(TRUEBoard.46)
@SP
A=M-1
M=-1
(ENDBoard.46)

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Board.drwCl$IF_TRUE4
D;JNE

// goto IF_FALSE4
@Board.drwCl$IF_FALSE4
0;JMP

(Board.drwCl$IF_TRUE4)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.176
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.176)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.177
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.177)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.178
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.178)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.179
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.179)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.180
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.180)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.181
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.181)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.182
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.182)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.183
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.183)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.184
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.184)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.185
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.185)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.186
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.186)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.187
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.187)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.188
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.188)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.189
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.189)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.190
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.190)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.191
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.191)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.192
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.192)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.193
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.193)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.194
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.194)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.195
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.195)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.196
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.196)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.197
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.197)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.198
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.198)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.199
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.199)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.200
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.200)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.201
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.201)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.202
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.202)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.203
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.203)

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Board.Math.multiply$ret.204
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Board.Math.multiply$ret.204)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@Board.Screen.drawLine$ret.205
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(Board.Screen.drawLine$ret.205)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.drwCl$IF_FALSE4)

(Board.drwCl$IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Board.drawSn 3
(Board.drawSn)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Board.drawSn$WHILE_EXP0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.47
D;JLT
@SP
A=M-1
M=0
@ENDBoard.47
0;JMP
(TRUEBoard.47)
@SP
A=M-1
M=-1
(ENDBoard.47)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Board.drawSn$WHILE_END0
D;JNE

(Board.drawSn$WHILE_EXP1)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEBoard.48
D;JLT
@SP
A=M-1
M=0
@ENDBoard.48
0;JMP
(TRUEBoard.48)
@SP
A=M-1
M=-1
(ENDBoard.48)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Board.drawSn$WHILE_END1
D;JNE

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Board.drawSn$WHILE_EXP1
0;JMP

(Board.drawSn$WHILE_END1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Board.drawSn$WHILE_EXP0
0;JMP

(Board.drawSn$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Keyboard.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Keyboard.Sys.init$ret.0)

// Keyboard.init 0
(Keyboard.init)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Keyboard.keyPressed 0
(Keyboard.keyPressed)

// push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.peek 1

// push return_address
@Keyboard.Memory.peek$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.peek
@Memory.peek
0;JMP
(Keyboard.Memory.peek$ret.1)

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Keyboard.readChar 2
(Keyboard.readChar)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.printChar 1

// push return_address
@Keyboard.Output.printChar$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printChar
@Output.printChar
0;JMP
(Keyboard.Output.printChar$ret.2)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Keyboard.readChar$WHILE_EXP0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEKeyboard.0
D;JEQ
@SP
A=M-1
M=0
@ENDKeyboard.0
0;JMP
(TRUEKeyboard.0)
@SP
A=M-1
M=-1
(ENDKeyboard.0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEKeyboard.1
D;JGT
@SP
A=M-1
M=0
@ENDKeyboard.1
0;JMP
(TRUEKeyboard.1)
@SP
A=M-1
M=-1
(ENDKeyboard.1)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard.readChar$WHILE_END0
D;JNE

// call Keyboard.keyPressed 0

// push return_address
@Keyboard.Keyboard.keyPressed$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Keyboard.Keyboard.keyPressed$ret.3)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEKeyboard.2
D;JGT
@SP
A=M-1
M=0
@ENDKeyboard.2
0;JMP
(TRUEKeyboard.2)
@SP
A=M-1
M=-1
(ENDKeyboard.2)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP

(Keyboard.readChar$IF_TRUE0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Keyboard.readChar$IF_FALSE0)

// goto WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP

(Keyboard.readChar$WHILE_END0)

// call String.backSpace 0

// push return_address
@Keyboard.String.backSpace$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.backSpace
@String.backSpace
0;JMP
(Keyboard.String.backSpace$ret.4)

// call Output.printChar 1

// push return_address
@Keyboard.Output.printChar$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printChar
@Output.printChar
0;JMP
(Keyboard.Output.printChar$ret.5)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printChar 1

// push return_address
@Keyboard.Output.printChar$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printChar
@Output.printChar
0;JMP
(Keyboard.Output.printChar$ret.6)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Keyboard.readLine 5
(Keyboard.readLine)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Keyboard.String.new$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Keyboard.String.new$ret.7)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Keyboard.Output.printString$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Keyboard.Output.printString$ret.8)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call String.newLine 0

// push return_address
@Keyboard.String.newLine$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.newLine
@String.newLine
0;JMP
(Keyboard.String.newLine$ret.9)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call String.backSpace 0

// push return_address
@Keyboard.String.backSpace$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.backSpace
@String.backSpace
0;JMP
(Keyboard.String.backSpace$ret.10)

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Keyboard.readLine$WHILE_EXP0)

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Keyboard.readLine$WHILE_END0
D;JNE

// call Keyboard.readChar 0

// push return_address
@Keyboard.Keyboard.readChar$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Keyboard.readChar
@Keyboard.readChar
0;JMP
(Keyboard.Keyboard.readChar$ret.11)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEKeyboard.3
D;JEQ
@SP
A=M-1
M=0
@ENDKeyboard.3
0;JMP
(TRUEKeyboard.3)
@SP
A=M-1
M=-1
(ENDKeyboard.3)

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP

(Keyboard.readLine$IF_TRUE0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEKeyboard.4
D;JEQ
@SP
A=M-1
M=0
@ENDKeyboard.4
0;JMP
(TRUEKeyboard.4)
@SP
A=M-1
M=-1
(ENDKeyboard.4)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP

(Keyboard.readLine$IF_TRUE1)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.eraseLastChar 1

// push return_address
@Keyboard.String.eraseLastChar$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.eraseLastChar
@String.eraseLastChar
0;JMP
(Keyboard.String.eraseLastChar$ret.12)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Keyboard.readLine$IF_END1
0;JMP

(Keyboard.readLine$IF_FALSE1)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Keyboard.String.appendChar$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Keyboard.String.appendChar$ret.13)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Keyboard.readLine$IF_END1)

(Keyboard.readLine$IF_FALSE0)

// goto WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP

(Keyboard.readLine$WHILE_END0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Keyboard.readInt 2
(Keyboard.readInt)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Keyboard.readLine 1

// push return_address
@Keyboard.Keyboard.readLine$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Keyboard.readLine
@Keyboard.readLine
0;JMP
(Keyboard.Keyboard.readLine$ret.14)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.intValue 1

// push return_address
@Keyboard.String.intValue$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.intValue
@String.intValue
0;JMP
(Keyboard.String.intValue$ret.15)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Keyboard.String.dispose$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Keyboard.String.dispose$ret.16)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Main.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Main.Sys.init$ret.0)

// Main.main 1
(Main.main)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 5
@Main.5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 6
@Main.6
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 1
@Main.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 2
@Main.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 4
@Main.4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 3
@Main.3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.1)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.2)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.3)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.4)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.5)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.6)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.7)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.8)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.9)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.10)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.11)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.12)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.13)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.14)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.15)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.16)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.17)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.18)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.19)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.20)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.21)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.22)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.23)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.24)

// pop static 7
@Main.7
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.25)

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.26)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.27)

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.28)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.29)

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.30)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.31)

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.32)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.33)

// pop static 8
@Main.8
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.34)

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.35)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.36)

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.37
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.37)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.38)

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.39)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.40)

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.41)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.42
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.42)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.43)

// pop static 9
@Main.9
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.44)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.45)

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.46
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.46)

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.47
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.47)

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.48)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.49)

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.50)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.51)

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.52)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.53)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.54)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.55)

// pop static 10
@Main.10
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Board.new 0

// push return_address
@Main.Board.new$ret.56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.new
@Board.new
0;JMP
(Main.Board.new$ret.56)

// pop static 11
@Main.11
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Main.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Main.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 2
@Main.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 3
@Main.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 4
@Main.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setConsts 7

// push return_address
@Main.Board.setConsts$ret.57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setConsts
@Board.setConsts
0;JMP
(Main.Board.setConsts$ret.57)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.initGrid 1

// push return_address
@Main.Board.initGrid$ret.58
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.initGrid
@Board.initGrid
0;JMP
(Main.Board.initGrid$ret.58)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.main$WHILE_EXP0)

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.isGameOver 2

// push return_address
@Main.Board.isGameOver$ret.59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.isGameOver
@Board.isGameOver
0;JMP
(Main.Board.isGameOver$ret.59)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Main.main$WHILE_END0
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.0
D;JEQ
@SP
A=M-1
M=0
@ENDMain.0
0;JMP
(TRUEMain.0)
@SP
A=M-1
M=-1
(ENDMain.0)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Main.main$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Main.main$IF_FALSE0
0;JMP

(Main.main$IF_TRUE0)

// call Main.playerMove 0

// push return_address
@Main.Main.playerMove$ret.60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Main.playerMove
@Main.playerMove
0;JMP
(Main.Main.playerMove$ret.60)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Main.main$IF_END0
0;JMP

(Main.main$IF_FALSE0)

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.computerMove 1

// push return_address
@Main.Board.computerMove$ret.61
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.computerMove
@Board.computerMove
0;JMP
(Main.Board.computerMove$ret.61)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.main$IF_END0)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Main.main$WHILE_EXP0
0;JMP

(Main.main$WHILE_END0)

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.getWinner 1

// push return_address
@Main.Board.getWinner$ret.62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.getWinner
@Board.getWinner
0;JMP
(Main.Board.getWinner$ret.62)

// call Main.printGameOver 1

// push return_address
@Main.Main.printGameOver$ret.63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Main.printGameOver
@Main.printGameOver
0;JMP
(Main.Main.printGameOver$ret.63)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.dispose 1

// push return_address
@Main.Board.dispose$ret.64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.dispose
@Board.dispose
0;JMP
(Main.Board.dispose$ret.64)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 7
@Main.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.65)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 8
@Main.8
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.66)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 9
@Main.9
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.67)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 10
@Main.10
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.68)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Main.playerMove 5
(Main.playerMove)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.playerMove$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Main.playerMove$WHILE_END0
D;JNE

// call Keyboard.keyPressed 0

// push return_address
@Main.Keyboard.keyPressed$ret.69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Main.Keyboard.keyPressed$ret.69)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Main.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.1
D;JEQ
@SP
A=M-1
M=0
@ENDMain.1
0;JMP
(TRUEMain.1)
@SP
A=M-1
M=-1
(ENDMain.1)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Main.playerMove$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Main.playerMove$IF_FALSE0
0;JMP

(Main.playerMove$IF_TRUE0)

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Main.Math.multiply$ret.70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Main.Math.multiply$ret.70)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Main.Math.multiply$ret.71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Main.Math.multiply$ret.71)

// call Sys.wait 1

// push return_address
@Main.Sys.wait$ret.72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Main.Sys.wait$ret.72)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.getSelectedRow 1

// push return_address
@Main.Board.getSelectedRow$ret.73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.getSelectedRow
@Board.getSelectedRow
0;JMP
(Main.Board.getSelectedRow$ret.73)

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.getSelectedCol 1

// push return_address
@Main.Board.getSelectedCol$ret.74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.getSelectedCol
@Board.getSelectedCol
0;JMP
(Main.Board.getSelectedCol$ret.74)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// call Board.reverse 5

// push return_address
@Main.Board.reverse$ret.75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@10
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.reverse
@Board.reverse
0;JMP
(Main.Board.reverse$ret.75)

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.2
D;JGT
@SP
A=M-1
M=0
@ENDMain.2
0;JMP
(TRUEMain.2)
@SP
A=M-1
M=-1
(ENDMain.2)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Main.playerMove$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Main.playerMove$IF_FALSE1
0;JMP

(Main.playerMove$IF_TRUE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Main.playerMove$IF_END1
0;JMP

(Main.playerMove$IF_FALSE1)

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.moveCursor 2

// push return_address
@Main.Output.moveCursor$ret.76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.moveCursor
@Output.moveCursor
0;JMP
(Main.Output.moveCursor$ret.76)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 7
@Main.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Main.Output.printString$ret.77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Main.Output.printString$ret.77)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.playerMove$IF_END1)

// goto IF_END0
@Main.playerMove$IF_END0
0;JMP

(Main.playerMove$IF_FALSE0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Main.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.3
D;JEQ
@SP
A=M-1
M=0
@ENDMain.3
0;JMP
(TRUEMain.3)
@SP
A=M-1
M=-1
(ENDMain.3)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 2
@Main.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.4
D;JEQ
@SP
A=M-1
M=0
@ENDMain.4
0;JMP
(TRUEMain.4)
@SP
A=M-1
M=-1
(ENDMain.4)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 3
@Main.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.5
D;JEQ
@SP
A=M-1
M=0
@ENDMain.5
0;JMP
(TRUEMain.5)
@SP
A=M-1
M=-1
(ENDMain.5)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 4
@Main.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.6
D;JEQ
@SP
A=M-1
M=0
@ENDMain.6
0;JMP
(TRUEMain.6)
@SP
A=M-1
M=-1
(ENDMain.6)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Main.playerMove$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Main.playerMove$IF_FALSE2
0;JMP

(Main.playerMove$IF_TRUE2)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Main.Math.multiply$ret.78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Main.Math.multiply$ret.78)

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Sys.wait 1

// push return_address
@Main.Sys.wait$ret.79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Main.Sys.wait$ret.79)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.moveSelected 2

// push return_address
@Main.Board.moveSelected$ret.80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.moveSelected
@Board.moveSelected
0;JMP
(Main.Board.moveSelected$ret.80)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.playerMove$IF_FALSE2)

(Main.playerMove$IF_END0)

// goto WHILE_EXP0
@Main.playerMove$WHILE_EXP0
0;JMP

(Main.playerMove$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1

// push return_address
@Main.Screen.setColor$ret.81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.setColor
@Screen.setColor
0;JMP
(Main.Screen.setColor$ret.81)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 288
@288
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 490
@490
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawRectangle 4

// push return_address
@Main.Screen.drawRectangle$ret.82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Main.Screen.drawRectangle$ret.82)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Main.printGameOver 1
(Main.printGameOver)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.7
D;JEQ
@SP
A=M-1
M=0
@ENDMain.7
0;JMP
(TRUEMain.7)
@SP
A=M-1
M=-1
(ENDMain.7)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Main.printGameOver$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Main.printGameOver$IF_FALSE0
0;JMP

(Main.printGameOver$IF_TRUE0)

// push static 8
@Main.8
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Main.printGameOver$IF_END0
0;JMP

(Main.printGameOver$IF_FALSE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Main.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.8
D;JEQ
@SP
A=M-1
M=0
@ENDMain.8
0;JMP
(TRUEMain.8)
@SP
A=M-1
M=-1
(ENDMain.8)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Main.printGameOver$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Main.printGameOver$IF_FALSE1
0;JMP

(Main.printGameOver$IF_TRUE1)

// push static 9
@Main.9
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Main.printGameOver$IF_END1
0;JMP

(Main.printGameOver$IF_FALSE1)

// push static 10
@Main.10
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.printGameOver$IF_END1)

(Main.printGameOver$IF_END0)

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.moveCursor 2

// push return_address
@Main.Output.moveCursor$ret.83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.moveCursor
@Output.moveCursor
0;JMP
(Main.Output.moveCursor$ret.83)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Main.Output.printString$ret.84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Main.Output.printString$ret.84)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Main.printGameOver$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Main.printGameOver$IF_FALSE2
0;JMP

(Main.printGameOver$IF_TRUE2)

// push constant 1900
@1900
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.sqrt 1

// push return_address
@Main.Math.sqrt$ret.85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.sqrt
@Math.sqrt
0;JMP
(Main.Math.sqrt$ret.85)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.peek 1

// push return_address
@Main.Memory.peek$ret.86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.peek
@Memory.peek
0;JMP
(Main.Memory.peek$ret.86)

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Main.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.poke 2

// push return_address
@Main.Memory.poke$ret.87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.poke
@Memory.poke
0;JMP
(Main.Memory.poke$ret.87)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 5
@Main.5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 6
@Main.6
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 1
@Main.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 2
@Main.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 4
@Main.4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 3
@Main.3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.88)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.89)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.90)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.91)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.92
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.92)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.93)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.94)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.95
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.95)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.96)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.97
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.97)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.98)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.99
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.99)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.100)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.101
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.101)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.102)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.103
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.103)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.104)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.105)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.106)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.107)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.108)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.109
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.109)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.110)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.111
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.111)

// pop static 7
@Main.7
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.112
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.112)

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.113
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.113)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.114
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.114)

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.115
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.115)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.116)

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.117
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.117)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.118
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.118)

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.119
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.119)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.120
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.120)

// pop static 8
@Main.8
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.121
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.121)

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.122
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.122)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.123)

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.124)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.125)

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.126)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.127
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.127)

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.128
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.128)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.129
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.129)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.130
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.130)

// pop static 9
@Main.9
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Main.String.new$ret.131
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Main.String.new$ret.131)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.132
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.132)

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.133
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.133)

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.134
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.134)

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.135
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.135)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.136
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.136)

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.137
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.137)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.138
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.138)

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.139
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.139)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.140
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.140)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.141
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.141)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Main.String.appendChar$ret.142
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Main.String.appendChar$ret.142)

// pop static 10
@Main.10
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 128
@128
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Main.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Board.new 0

// push return_address
@Main.Board.new$ret.143
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.new
@Board.new
0;JMP
(Main.Board.new$ret.143)

// pop static 11
@Main.11
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Main.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Main.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 2
@Main.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 3
@Main.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 4
@Main.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.setConsts 7

// push return_address
@Main.Board.setConsts$ret.144
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@12
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.setConsts
@Board.setConsts
0;JMP
(Main.Board.setConsts$ret.144)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.initGrid 1

// push return_address
@Main.Board.initGrid$ret.145
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.initGrid
@Board.initGrid
0;JMP
(Main.Board.initGrid$ret.145)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.printGameOver$WHILE_EXP0)

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Board.isGameOver 2

// push return_address
@Main.Board.isGameOver$ret.146
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.isGameOver
@Board.isGameOver
0;JMP
(Main.Board.isGameOver$ret.146)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Main.printGameOver$WHILE_END0
D;JNE

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Main.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMain.9
D;JEQ
@SP
A=M-1
M=0
@ENDMain.9
0;JMP
(TRUEMain.9)
@SP
A=M-1
M=-1
(ENDMain.9)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Main.printGameOver$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Main.printGameOver$IF_FALSE3
0;JMP

(Main.printGameOver$IF_TRUE3)

// call Main.playerMove 0

// push return_address
@Main.Main.playerMove$ret.147
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Main.playerMove
@Main.playerMove
0;JMP
(Main.Main.playerMove$ret.147)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END3
@Main.printGameOver$IF_END3
0;JMP

(Main.printGameOver$IF_FALSE3)

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.computerMove 1

// push return_address
@Main.Board.computerMove$ret.148
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.computerMove
@Board.computerMove
0;JMP
(Main.Board.computerMove$ret.148)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.printGameOver$IF_END3)

// goto WHILE_EXP0
@Main.printGameOver$WHILE_EXP0
0;JMP

(Main.printGameOver$WHILE_END0)

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.getWinner 1

// push return_address
@Main.Board.getWinner$ret.149
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.getWinner
@Board.getWinner
0;JMP
(Main.Board.getWinner$ret.149)

// call Main.printGameOver 1

// push return_address
@Main.Main.printGameOver$ret.150
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Main.printGameOver
@Main.printGameOver
0;JMP
(Main.Main.printGameOver$ret.150)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 11
@Main.11
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Board.dispose 1

// push return_address
@Main.Board.dispose$ret.151
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Board.dispose
@Board.dispose
0;JMP
(Main.Board.dispose$ret.151)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 7
@Main.7
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.152
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.152)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 8
@Main.8
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.153
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.153)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 9
@Main.9
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.154
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.154)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 10
@Main.10
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Main.String.dispose$ret.155
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Main.String.dispose$ret.155)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Main.printGameOver$IF_FALSE2)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Math.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Math.Sys.init$ret.0)

// Math.init 1
(Math.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Math.Array.new$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Math.Array.new$ret.1)

// pop static 1
@Math.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Math.Array.new$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Math.Array.new$ret.2)

// pop static 0
@Math.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.init$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.0
D;JLT
@SP
A=M-1
M=0
@ENDMath.0
0;JMP
(TRUEMath.0)
@SP
A=M-1
M=-1
(ENDMath.0)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.init$WHILE_END0
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP

(Math.init$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Math.abs 0
(Math.abs)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.1
D;JLT
@SP
A=M-1
M=0
@ENDMath.1
0;JMP
(TRUEMath.1)
@SP
A=M-1
M=-1
(ENDMath.1)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.abs$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP

(Math.abs$IF_TRUE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.abs$IF_FALSE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Math.multiply 5
(Math.multiply)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.2
D;JLT
@SP
A=M-1
M=0
@ENDMath.2
0;JMP
(TRUEMath.2)
@SP
A=M-1
M=-1
(ENDMath.2)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.3
D;JGT
@SP
A=M-1
M=0
@ENDMath.3
0;JMP
(TRUEMath.3)
@SP
A=M-1
M=-1
(ENDMath.3)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.4
D;JGT
@SP
A=M-1
M=0
@ENDMath.4
0;JMP
(TRUEMath.4)
@SP
A=M-1
M=-1
(ENDMath.4)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.5
D;JLT
@SP
A=M-1
M=0
@ENDMath.5
0;JMP
(TRUEMath.5)
@SP
A=M-1
M=-1
(ENDMath.5)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// pop local 4
@LCL
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1

// push return_address
@Math.Math.abs$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.abs
@Math.abs
0;JMP
(Math.Math.abs$ret.3)

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1

// push return_address
@Math.Math.abs$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.abs
@Math.abs
0;JMP
(Math.Math.abs$ret.4)

// pop argument 1
@ARG
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.6
D;JLT
@SP
A=M-1
M=0
@ENDMath.6
0;JMP
(TRUEMath.6)
@SP
A=M-1
M=-1
(ENDMath.6)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP

(Math.multiply$IF_TRUE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@ARG
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.multiply$IF_FALSE0)

(Math.multiply$WHILE_EXP0)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.7
D;JLT
@SP
A=M-1
M=0
@ENDMath.7
0;JMP
(TRUEMath.7)
@SP
A=M-1
M=-1
(ENDMath.7)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.multiply$WHILE_END0
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.8
D;JGT
@SP
A=M-1
M=0
@ENDMath.8
0;JMP
(TRUEMath.8)
@SP
A=M-1
M=-1
(ENDMath.8)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP

(Math.multiply$IF_TRUE1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.multiply$IF_FALSE1)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP

(Math.multiply$WHILE_END0)

// push local 4
@LCL
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Math.multiply$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP

(Math.multiply$IF_TRUE2)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.multiply$IF_FALSE2)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Math.divide 4
(Math.divide)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.9
D;JEQ
@SP
A=M-1
M=0
@ENDMath.9
0;JMP
(TRUEMath.9)
@SP
A=M-1
M=-1
(ENDMath.9)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP

(Math.divide$IF_TRUE0)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1

// push return_address
@Math.Sys.error$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.error
@Sys.error
0;JMP
(Math.Sys.error$ret.5)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.divide$IF_FALSE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.10
D;JLT
@SP
A=M-1
M=0
@ENDMath.10
0;JMP
(TRUEMath.10)
@SP
A=M-1
M=-1
(ENDMath.10)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.11
D;JGT
@SP
A=M-1
M=0
@ENDMath.11
0;JMP
(TRUEMath.11)
@SP
A=M-1
M=-1
(ENDMath.11)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.12
D;JGT
@SP
A=M-1
M=0
@ENDMath.12
0;JMP
(TRUEMath.12)
@SP
A=M-1
M=-1
(ENDMath.12)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.13
D;JLT
@SP
A=M-1
M=0
@ENDMath.13
0;JMP
(TRUEMath.13)
@SP
A=M-1
M=-1
(ENDMath.13)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1

// push return_address
@Math.Math.abs$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.abs
@Math.abs
0;JMP
(Math.Math.abs$ret.6)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1

// push return_address
@Math.Math.abs$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.abs
@Math.abs
0;JMP
(Math.Math.abs$ret.7)

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.divide$WHILE_EXP0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.divide$WHILE_END0
D;JNE

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.14
D;JLT
@SP
A=M-1
M=0
@ENDMath.14
0;JMP
(TRUEMath.14)
@SP
A=M-1
M=-1
(ENDMath.14)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP

(Math.divide$IF_TRUE1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.15
D;JGT
@SP
A=M-1
M=0
@ENDMath.15
0;JMP
(TRUEMath.15)
@SP
A=M-1
M=-1
(ENDMath.15)

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP

(Math.divide$IF_TRUE2)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.divide$IF_FALSE2)

(Math.divide$IF_FALSE1)

// goto WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP

(Math.divide$WHILE_END0)

(Math.divide$WHILE_EXP1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.16
D;JGT
@SP
A=M-1
M=0
@ENDMath.16
0;JMP
(TRUEMath.16)
@SP
A=M-1
M=-1
(ENDMath.16)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Math.divide$WHILE_END1
D;JNE

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.17
D;JGT
@SP
A=M-1
M=0
@ENDMath.17
0;JMP
(TRUEMath.17)
@SP
A=M-1
M=-1
(ENDMath.17)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP

(Math.divide$IF_TRUE3)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.divide$IF_FALSE3)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP

(Math.divide$WHILE_END1)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@Math.divide$IF_TRUE4
D;JNE

// goto IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP

(Math.divide$IF_TRUE4)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.divide$IF_FALSE4)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Math.sqrt 4
(Math.sqrt)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.18
D;JLT
@SP
A=M-1
M=0
@ENDMath.18
0;JMP
(TRUEMath.18)
@SP
A=M-1
M=-1
(ENDMath.18)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.sqrt$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP

(Math.sqrt$IF_TRUE0)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1

// push return_address
@Math.Sys.error$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.error
@Sys.error
0;JMP
(Math.Sys.error$ret.8)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.sqrt$IF_FALSE0)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.sqrt$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.19
D;JGT
@SP
A=M-1
M=0
@ENDMath.19
0;JMP
(TRUEMath.19)
@SP
A=M-1
M=-1
(ENDMath.19)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Math.sqrt$WHILE_END0
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Math.Math.multiply$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Math.Math.multiply$ret.9)

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.20
D;JGT
@SP
A=M-1
M=0
@ENDMath.20
0;JMP
(TRUEMath.20)
@SP
A=M-1
M=-1
(ENDMath.20)

// not
@SP
A=M-1
M=!M

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.21
D;JLT
@SP
A=M-1
M=0
@ENDMath.21
0;JMP
(TRUEMath.21)
@SP
A=M-1
M=-1
(ENDMath.21)

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Math.sqrt$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP

(Math.sqrt$IF_TRUE1)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.sqrt$IF_FALSE1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP

(Math.sqrt$WHILE_END0)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Math.max 0
(Math.max)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.22
D;JGT
@SP
A=M-1
M=0
@ENDMath.22
0;JMP
(TRUEMath.22)
@SP
A=M-1
M=-1
(ENDMath.22)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.max$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math.max$IF_FALSE0
0;JMP

(Math.max$IF_TRUE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@ARG
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.max$IF_FALSE0)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Math.min 0
(Math.min)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMath.23
D;JLT
@SP
A=M-1
M=0
@ENDMath.23
0;JMP
(TRUEMath.23)
@SP
A=M-1
M=-1
(ENDMath.23)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Math.min$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Math.min$IF_FALSE0
0;JMP

(Math.min$IF_TRUE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop argument 1
@ARG
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Math.min$IF_FALSE0)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Memory.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Memory.Sys.init$ret.0)

// Memory.init 0
(Memory.init)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Memory.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Memory.peek 0
(Memory.peek)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Memory.poke 0
(Memory.poke)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Memory.alloc 1
(Memory.alloc)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.0
D;JLT
@SP
A=M-1
M=0
@ENDMemory.0
0;JMP
(TRUEMemory.0)
@SP
A=M-1
M=-1
(ENDMemory.0)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP

(Memory.alloc$IF_TRUE0)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1

// push return_address
@Memory.Sys.error$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.error
@Sys.error
0;JMP
(Memory.Sys.error$ret.1)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Memory.alloc$IF_FALSE0)

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Memory.alloc$WHILE_EXP0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.1
D;JLT
@SP
A=M-1
M=0
@ENDMemory.1
0;JMP
(TRUEMemory.1)
@SP
A=M-1
M=-1
(ENDMemory.1)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Memory.alloc$WHILE_END0
D;JNE

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP

(Memory.alloc$WHILE_END0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.2
D;JGT
@SP
A=M-1
M=0
@ENDMemory.2
0;JMP
(TRUEMemory.2)
@SP
A=M-1
M=-1
(ENDMemory.2)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP

(Memory.alloc$IF_TRUE1)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1

// push return_address
@Memory.Sys.error$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.error
@Sys.error
0;JMP
(Memory.Sys.error$ret.2)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Memory.alloc$IF_FALSE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.3
D;JGT
@SP
A=M-1
M=0
@ENDMemory.3
0;JMP
(TRUEMemory.3)
@SP
A=M-1
M=-1
(ENDMemory.3)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP

(Memory.alloc$IF_TRUE2)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.4
D;JEQ
@SP
A=M-1
M=0
@ENDMemory.4
0;JMP
(TRUEMemory.4)
@SP
A=M-1
M=-1
(ENDMemory.4)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Memory.alloc$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP

(Memory.alloc$IF_TRUE3)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END3
@Memory.alloc$IF_END3
0;JMP

(Memory.alloc$IF_FALSE3)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Memory.alloc$IF_END3)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Memory.alloc$IF_FALSE2)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Memory.deAlloc 2
(Memory.deAlloc)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.5
D;JEQ
@SP
A=M-1
M=0
@ENDMemory.5
0;JMP
(TRUEMemory.5)
@SP
A=M-1
M=-1
(ENDMemory.5)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP

(Memory.deAlloc$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Memory.deAlloc$IF_END0
0;JMP

(Memory.deAlloc$IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMemory.6
D;JEQ
@SP
A=M-1
M=0
@ENDMemory.6
0;JMP
(TRUEMemory.6)
@SP
A=M-1
M=-1
(ENDMemory.6)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Memory.deAlloc$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP

(Memory.deAlloc$IF_TRUE1)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Memory.deAlloc$IF_END1
0;JMP

(Memory.deAlloc$IF_FALSE1)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Memory.deAlloc$IF_END1)

(Memory.deAlloc$IF_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@MovingObject.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(MovingObject.Sys.init$ret.0)

// MovingObject.new 0
(MovingObject.new)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1

// push return_address
@MovingObject.Memory.alloc$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.alloc
@Memory.alloc
0;JMP
(MovingObject.Memory.alloc$ret.1)

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 0
@THIS
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 2
@THIS
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 6
@THIS
D=M
@6
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 3
@THIS
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// pop this 5
@THIS
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 4
@THIS
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@THIS
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.draw 1
(MovingObject.draw)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.draw$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.0
D;JLT
@SP
A=M-1
M=0
@ENDMovingObject.0
0;JMP
(TRUEMovingObject.0)
@SP
A=M-1
M=-1
(ENDMovingObject.0)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@MovingObject.draw$WHILE_END0
D;JNE

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.1
D;JGT
@SP
A=M-1
M=0
@ENDMovingObject.1
0;JMP
(TRUEMovingObject.1)
@SP
A=M-1
M=-1
(ENDMovingObject.1)

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.2
D;JLT
@SP
A=M-1
M=0
@ENDMovingObject.2
0;JMP
(TRUEMovingObject.2)
@SP
A=M-1
M=-1
(ENDMovingObject.2)

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@MovingObject.draw$IF_TRUE0
D;JNE

// goto IF_FALSE0
@MovingObject.draw$IF_FALSE0
0;JMP

(MovingObject.draw$IF_TRUE0)

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.3
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.3
0;JMP
(TRUEMovingObject.3)
@SP
A=M-1
M=-1
(ENDMovingObject.3)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@MovingObject.draw$IF_TRUE1
D;JNE

// goto IF_FALSE1
@MovingObject.draw$IF_FALSE1
0;JMP

(MovingObject.draw$IF_TRUE1)

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.2)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.3)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.4)

// push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.5)

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawRectangle 4

// push return_address
@MovingObject.Screen.drawRectangle$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(MovingObject.Screen.drawRectangle$ret.6)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.7)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.8)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawCircle 3

// push return_address
@MovingObject.Screen.drawCircle$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@8
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(MovingObject.Screen.drawCircle$ret.9)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.draw$IF_FALSE1)

// push this 0
@THIS
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.4
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.4
0;JMP
(TRUEMovingObject.4)
@SP
A=M-1
M=-1
(ENDMovingObject.4)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@MovingObject.draw$IF_TRUE2
D;JNE

// goto IF_FALSE2
@MovingObject.draw$IF_FALSE2
0;JMP

(MovingObject.draw$IF_TRUE2)

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.10)

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.11)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.12)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.13)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@MovingObject.Screen.drawLine$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(MovingObject.Screen.drawLine$ret.14)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.15)

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.16)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.17)

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.18)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@MovingObject.Screen.drawLine$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(MovingObject.Screen.drawLine$ret.19)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.20)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.21)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.22)

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.23)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@MovingObject.Screen.drawLine$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(MovingObject.Screen.drawLine$ret.24)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.25)

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.26)

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.27)

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@MovingObject.Math.multiply$ret.28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(MovingObject.Math.multiply$ret.28)

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// call Screen.drawLine 4

// push return_address
@MovingObject.Screen.drawLine$ret.29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.drawLine
@Screen.drawLine
0;JMP
(MovingObject.Screen.drawLine$ret.29)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.draw$IF_FALSE2)

(MovingObject.draw$IF_FALSE0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@MovingObject.draw$WHILE_EXP0
0;JMP

(MovingObject.draw$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.isTurn 0
(MovingObject.isTurn)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 3
@THIS
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.5
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.5
0;JMP
(TRUEMovingObject.5)
@SP
A=M-1
M=-1
(ENDMovingObject.5)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@MovingObject.isTurn$IF_TRUE0
D;JNE

// goto IF_FALSE0
@MovingObject.isTurn$IF_FALSE0
0;JMP

(MovingObject.isTurn$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 4
@THIS
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

(MovingObject.isTurn$IF_FALSE0)

// push this 4
@THIS
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop this 4
@THIS
D=M
@4
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.reset 0
(MovingObject.reset)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@THIS
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 2
@THIS
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 3
@THIS
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.6
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.6
0;JMP
(TRUEMovingObject.6)
@SP
A=M-1
M=-1
(ENDMovingObject.6)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@MovingObject.reset$IF_TRUE0
D;JNE

// goto IF_FALSE0
@MovingObject.reset$IF_FALSE0
0;JMP

(MovingObject.reset$IF_TRUE0)

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// pop this 5
@THIS
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.reset$IF_FALSE0)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.7
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.7
0;JMP
(TRUEMovingObject.7)
@SP
A=M-1
M=-1
(ENDMovingObject.7)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@MovingObject.reset$IF_TRUE1
D;JNE

// goto IF_FALSE1
@MovingObject.reset$IF_FALSE1
0;JMP

(MovingObject.reset$IF_TRUE1)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 5
@THIS
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.reset$IF_FALSE1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.advance 0
(MovingObject.advance)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop this 5
@THIS
D=M
@5
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.8
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.8
0;JMP
(TRUEMovingObject.8)
@SP
A=M-1
M=-1
(ENDMovingObject.8)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@MovingObject.advance$IF_TRUE0
D;JNE

// goto IF_FALSE0
@MovingObject.advance$IF_FALSE0
0;JMP

(MovingObject.advance$IF_TRUE0)

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.9
D;JGT
@SP
A=M-1
M=0
@ENDMovingObject.9
0;JMP
(TRUEMovingObject.9)
@SP
A=M-1
M=-1
(ENDMovingObject.9)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@MovingObject.advance$IF_TRUE1
D;JNE

// goto IF_FALSE1
@MovingObject.advance$IF_FALSE1
0;JMP

(MovingObject.advance$IF_TRUE1)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call MovingObject.reset 4

// push return_address
@MovingObject.MovingObject.reset$ret.30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto MovingObject.reset
@MovingObject.reset
0;JMP
(MovingObject.MovingObject.reset$ret.30)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.advance$IF_FALSE1)

(MovingObject.advance$IF_FALSE0)

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.10
D;JEQ
@SP
A=M-1
M=0
@ENDMovingObject.10
0;JMP
(TRUEMovingObject.10)
@SP
A=M-1
M=-1
(ENDMovingObject.10)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@MovingObject.advance$IF_TRUE2
D;JNE

// goto IF_FALSE2
@MovingObject.advance$IF_FALSE2
0;JMP

(MovingObject.advance$IF_TRUE2)

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMovingObject.11
D;JLT
@SP
A=M-1
M=0
@ENDMovingObject.11
0;JMP
(TRUEMovingObject.11)
@SP
A=M-1
M=-1
(ENDMovingObject.11)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@MovingObject.advance$IF_TRUE3
D;JNE

// goto IF_FALSE3
@MovingObject.advance$IF_FALSE3
0;JMP

(MovingObject.advance$IF_TRUE3)

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call MovingObject.reset 4

// push return_address
@MovingObject.MovingObject.reset$ret.31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@9
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto MovingObject.reset
@MovingObject.reset
0;JMP
(MovingObject.MovingObject.reset$ret.31)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MovingObject.advance$IF_FALSE3)

(MovingObject.advance$IF_FALSE2)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.tailX 0
(MovingObject.tailX)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 5
@THIS
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.tailY 0
(MovingObject.tailY)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 6
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.getLength 0
(MovingObject.getLength)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.getDirection 0
(MovingObject.getDirection)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@THIS
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// MovingObject.dispose 0
(MovingObject.dispose)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@THIS
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1

// push return_address
@MovingObject.Memory.deAlloc$ret.32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(MovingObject.Memory.deAlloc$ret.32)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Output.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Output.Sys.init$ret.0)

// Output.init 0
(Output.init)

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 4
@Output.4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Output.String.new$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Output.String.new$ret.1)

// pop static 3
@Output.3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.initMap 0

// push return_address
@Output.Output.initMap$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.initMap
@Output.initMap
0;JMP
(Output.Output.initMap$ret.2)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.createShiftedMap 0

// push return_address
@Output.Output.createShiftedMap$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.createShiftedMap
@Output.createShiftedMap
0;JMP
(Output.Output.createShiftedMap$ret.3)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.initMap 0
(Output.initMap)

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Output.Array.new$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Output.Array.new$ret.4)

// pop static 5
@Output.5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.5)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.6)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.7)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.8)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.9)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.10)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.11)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.12)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.13)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.14)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.15)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.16)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.17)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.18)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.19)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.20)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.21)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.22)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.23)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.24)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.25)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.26)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.27)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.28)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.29)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.30)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.31)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.32)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.33)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.34)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.35)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.36)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.37
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.37)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.38)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.39)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.40)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.41)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.42
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.42)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.43)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.44)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.45)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.46
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.46)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.47
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.47)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.48)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.49)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.50)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.51)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.52)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.53)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.54)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.55)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.56)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.57)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.58
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.58)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.59)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.60)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.61
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.61)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.62)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.63)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.64)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.65)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.66)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.67)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.68)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.69)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.70)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.71)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.72)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.73)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.74)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.75)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.76)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.77)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.78)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.79)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.80)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.81)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.82)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.83)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.84)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.85)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.86)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.87)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.88)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.89)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.90)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.91)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.92
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.92)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.93)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.94)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.95
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.95)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.96)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.97
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.97)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.98)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.99
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.99)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12

// push return_address
@Output.Output.create$ret.100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@17
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.create
@Output.create
0;JMP
(Output.Output.create$ret.100)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.create 1
(Output.create)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Output.Array.new$ret.101
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Output.Array.new$ret.101)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 2
@ARG
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 3
@ARG
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 4
@ARG
D=M
@4
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 5
@ARG
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 6
@ARG
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 7
@ARG
D=M
@7
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 8
@ARG
D=M
@8
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 9
@ARG
D=M
@9
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 10
@ARG
D=M
@10
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push argument 11
@ARG
D=M
@11
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.createShiftedMap 4
(Output.createShiftedMap)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Output.Array.new$ret.102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Output.Array.new$ret.102)

// pop static 6
@Output.6
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.createShiftedMap$WHILE_EXP0)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.0
D;JLT
@SP
A=M-1
M=0
@ENDOutput.0
0;JMP
(TRUEOutput.0)
@SP
A=M-1
M=-1
(ENDOutput.0)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.createShiftedMap$WHILE_END0
D;JNE

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1

// push return_address
@Output.Array.new$ret.103
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Array.new
@Array.new
0;JMP
(Output.Array.new$ret.103)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Output.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.createShiftedMap$WHILE_EXP1)

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.1
D;JLT
@SP
A=M-1
M=0
@ENDOutput.1
0;JMP
(TRUEOutput.1)
@SP
A=M-1
M=-1
(ENDOutput.1)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@Output.createShiftedMap$WHILE_END1
D;JNE

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Output.Math.multiply$ret.104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Output.Math.multiply$ret.104)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP

(Output.createShiftedMap$WHILE_END1)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.2
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.2
0;JMP
(TRUEOutput.2)
@SP
A=M-1
M=-1
(ENDOutput.2)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.createShiftedMap$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP

(Output.createShiftedMap$IF_TRUE0)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Output.createShiftedMap$IF_END0
0;JMP

(Output.createShiftedMap$IF_FALSE0)

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.createShiftedMap$IF_END0)

// goto WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP

(Output.createShiftedMap$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.getMap 1
(Output.getMap)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.3
D;JLT
@SP
A=M-1
M=0
@ENDOutput.3
0;JMP
(TRUEOutput.3)
@SP
A=M-1
M=-1
(ENDOutput.3)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.4
D;JGT
@SP
A=M-1
M=0
@ENDOutput.4
0;JMP
(TRUEOutput.4)
@SP
A=M-1
M=-1
(ENDOutput.4)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.getMap$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP

(Output.getMap$IF_TRUE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop argument 0
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.getMap$IF_FALSE0)

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.getMap$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP

(Output.getMap$IF_TRUE1)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 5
@Output.5
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Output.getMap$IF_END1
0;JMP

(Output.getMap$IF_FALSE1)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 6
@Output.6
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.getMap$IF_END1)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.drawChar 4
(Output.drawChar)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.getMap 1

// push return_address
@Output.Output.getMap$ret.105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.getMap
@Output.getMap
0;JMP
(Output.Output.getMap$ret.105)

// pop local 2
@LCL
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.drawChar$WHILE_EXP0)

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.5
D;JLT
@SP
A=M-1
M=0
@ENDOutput.5
0;JMP
(TRUEOutput.5)
@SP
A=M-1
M=-1
(ENDOutput.5)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.drawChar$WHILE_END0
D;JNE

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.drawChar$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP

(Output.drawChar$IF_TRUE0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
A=M-1
M=-M

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Output.drawChar$IF_END0
0;JMP

(Output.drawChar$IF_FALSE0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=M&D

// pop local 3
@LCL
D=M
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.drawChar$IF_END0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@LCL
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@LCL
D=M
@3
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// pop pointer 1
@THAT
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP

(Output.drawChar$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.moveCursor 0
(Output.moveCursor)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.6
D;JLT
@SP
A=M-1
M=0
@ENDOutput.6
0;JMP
(TRUEOutput.6)
@SP
A=M-1
M=-1
(ENDOutput.6)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.7
D;JGT
@SP
A=M-1
M=0
@ENDOutput.7
0;JMP
(TRUEOutput.7)
@SP
A=M-1
M=-1
(ENDOutput.7)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.8
D;JLT
@SP
A=M-1
M=0
@ENDOutput.8
0;JMP
(TRUEOutput.8)
@SP
A=M-1
M=-1
(ENDOutput.8)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.9
D;JGT
@SP
A=M-1
M=0
@ENDOutput.9
0;JMP
(TRUEOutput.9)
@SP
A=M-1
M=-1
(ENDOutput.9)

// or
@SP
AM=M-1
D=M
A=A-1
M=M|D

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.moveCursor$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP

(Output.moveCursor$IF_TRUE0)

// push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1

// push return_address
@Output.Sys.error$ret.106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.error
@Sys.error
0;JMP
(Output.Sys.error$ret.106)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.moveCursor$IF_FALSE0)

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2

// push return_address
@Output.Math.divide$ret.107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.divide
@Math.divide
0;JMP
(Output.Math.divide$ret.107)

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Output.Math.multiply$ret.108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Output.Math.multiply$ret.108)

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2

// push return_address
@Output.Math.multiply$ret.109
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Math.multiply
@Math.multiply
0;JMP
(Output.Math.multiply$ret.109)

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.10
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.10
0;JMP
(TRUEOutput.10)
@SP
A=M-1
M=-1
(ENDOutput.10)

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.drawChar 1

// push return_address
@Output.Output.drawChar$ret.110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.drawChar
@Output.drawChar
0;JMP
(Output.Output.drawChar$ret.110)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.printChar 0
(Output.printChar)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.newLine 0

// push return_address
@Output.String.newLine$ret.111
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.newLine
@String.newLine
0;JMP
(Output.String.newLine$ret.111)

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.11
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.11
0;JMP
(TRUEOutput.11)
@SP
A=M-1
M=-1
(ENDOutput.11)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP

(Output.printChar$IF_TRUE0)

// call Output.println 0

// push return_address
@Output.Output.println$ret.112
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Output.Output.println$ret.112)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Output.printChar$IF_END0
0;JMP

(Output.printChar$IF_FALSE0)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.backSpace 0

// push return_address
@Output.String.backSpace$ret.113
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.backSpace
@String.backSpace
0;JMP
(Output.String.backSpace$ret.113)

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.12
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.12
0;JMP
(TRUEOutput.12)
@SP
A=M-1
M=-1
(ENDOutput.12)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP

(Output.printChar$IF_TRUE1)

// call Output.backSpace 0

// push return_address
@Output.Output.backSpace$ret.114
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.backSpace
@Output.backSpace
0;JMP
(Output.Output.backSpace$ret.114)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Output.printChar$IF_END1
0;JMP

(Output.printChar$IF_FALSE1)

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.drawChar 1

// push return_address
@Output.Output.drawChar$ret.115
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.drawChar
@Output.drawChar
0;JMP
(Output.Output.drawChar$ret.115)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP

(Output.printChar$IF_TRUE2)

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.printChar$IF_FALSE2)

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.13
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.13
0;JMP
(TRUEOutput.13)
@SP
A=M-1
M=-1
(ENDOutput.13)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@Output.printChar$IF_TRUE3
D;JNE

// goto IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP

(Output.printChar$IF_TRUE3)

// call Output.println 0

// push return_address
@Output.Output.println$ret.116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Output.Output.println$ret.116)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END3
@Output.printChar$IF_END3
0;JMP

(Output.printChar$IF_FALSE3)

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.printChar$IF_END3)

(Output.printChar$IF_END1)

(Output.printChar$IF_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.printString 2
(Output.printString)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.length 1

// push return_address
@Output.String.length$ret.117
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.length
@String.length
0;JMP
(Output.String.length$ret.117)

// pop local 1
@LCL
D=M
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.printString$WHILE_EXP0)

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.14
D;JLT
@SP
A=M-1
M=0
@ENDOutput.14
0;JMP
(TRUEOutput.14)
@SP
A=M-1
M=-1
(ENDOutput.14)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Output.printString$WHILE_END0
D;JNE

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.charAt 2

// push return_address
@Output.String.charAt$ret.118
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.charAt
@String.charAt
0;JMP
(Output.String.charAt$ret.118)

// call Output.printChar 1

// push return_address
@Output.Output.printChar$ret.119
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printChar
@Output.printChar
0;JMP
(Output.Output.printChar$ret.119)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP

(Output.printString$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.printInt 0
(Output.printInt)

// push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.setInt 2

// push return_address
@Output.String.setInt$ret.120
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.setInt
@String.setInt
0;JMP
(Output.String.setInt$ret.120)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Output.Output.printString$ret.121
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Output.Output.printString$ret.121)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.println 0
(Output.println)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.15
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.15
0;JMP
(TRUEOutput.15)
@SP
A=M-1
M=-1
(ENDOutput.15)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.println$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.println$IF_FALSE0
0;JMP

(Output.println$IF_TRUE0)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.println$IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Output.backSpace 0
(Output.backSpace)

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Output.backSpace$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP

(Output.backSpace$IF_TRUE0)

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.16
D;JGT
@SP
A=M-1
M=0
@ENDOutput.16
0;JMP
(TRUEOutput.16)
@SP
A=M-1
M=-1
(ENDOutput.16)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@Output.backSpace$IF_TRUE1
D;JNE

// goto IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP

(Output.backSpace$IF_TRUE1)

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END1
@Output.backSpace$IF_END1
0;JMP

(Output.backSpace$IF_FALSE1)

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEOutput.17
D;JEQ
@SP
A=M-1
M=0
@ENDOutput.17
0;JMP
(TRUEOutput.17)
@SP
A=M-1
M=-1
(ENDOutput.17)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@Output.backSpace$IF_TRUE2
D;JNE

// goto IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP

(Output.backSpace$IF_TRUE2)

// push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.backSpace$IF_FALSE2)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 321
@321
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.backSpace$IF_END1)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto IF_END0
@Output.backSpace$IF_END0
0;JMP

(Output.backSpace$IF_FALSE0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Output.backSpace$IF_END0)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.drawChar 1

// push return_address
@Output.Output.drawChar$ret.122
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.drawChar
@Output.drawChar
0;JMP
(Output.Output.drawChar$ret.122)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Scenes.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Scenes.Sys.init$ret.0)

// Scenes.intro 1
(Scenes.intro)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.clearScreen 0

// push return_address
@Scenes.Screen.clearScreen$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.clearScreen
@Screen.clearScreen
0;JMP
(Scenes.Screen.clearScreen$ret.1)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.2)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.3)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.4)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.5)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.6)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.7)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.8)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.9)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.10)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.11)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.12)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.13)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.14)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.15)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.16)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.17)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.18)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.19)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.20)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.21)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.22)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.23)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.24)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.25)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.26)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.27)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.28)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.29)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.30)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.31)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2000
@2000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.32)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.33)

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.34)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.35)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.36)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.37
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.37)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.38)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.39)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.40)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.41)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.42
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.42)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.43)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.44
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.44)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.45)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.46
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.46)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.47
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.47)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.48)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.49)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.50)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.51)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.52)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.53)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.54)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.55)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.56)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.57)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.58
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.58)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3000
@3000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.59)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.60)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Screen.clearScreen 0

// push return_address
@Scenes.Screen.clearScreen$ret.61
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.clearScreen
@Screen.clearScreen
0;JMP
(Scenes.Screen.clearScreen$ret.61)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.62)

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.63)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.64)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.65)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.66)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.67)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.68)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.69)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.70)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.71)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.72)

// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.73)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.74)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.75)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.76
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.76)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.77)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.78)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.79)

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.80)

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.81)

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.82)

// push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.83)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.84)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.85)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.86)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.87)

// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.88)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.89)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.90)

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.91)

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.92
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.92)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.93)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.94)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.95
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.95)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.96)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.97
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.97)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2000
@2000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.98
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.98)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.99
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.99)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.100)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.101
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.101)

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.102)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.103
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.103)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.104
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.104)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.105)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.106)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.107
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.107)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.108)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.109
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.109)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.110
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.110)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.111
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.111)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.112
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.112)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.113
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.113)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.114
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.114)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.115
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.115)

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.116)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.117
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.117)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.118
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.118)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.119
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.119)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.120
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.120)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.121
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.121)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.122
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.122)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.123)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.124)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.125)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.126)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.127
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.127)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.128
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.128)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.129
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.129)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.130
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.130)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.131
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.131)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.132
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.132)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.133
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.133)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.134
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.134)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.135
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.135)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.136
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.136)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.137
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.137)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.138
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.138)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.139
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.139)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.140
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.140)

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.141
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.141)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.142
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.142)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.143
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.143)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.144
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.144)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.145
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.145)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.146
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.146)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.147
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.147)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.148
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.148)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.149
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.149)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.150
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.150)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.151
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.151)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.152
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.152)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.153
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.153)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.154
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.154)

// push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.155
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.155)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.156
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.156)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.157
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.157)

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.158
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.158)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.159
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.159)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.160
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.160)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.161
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.161)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.162
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.162)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.163
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.163)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.164
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.164)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.165
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.165)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.166
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.166)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.167
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.167)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.168
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.168)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.169
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.169)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.170
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.170)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.171
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.171)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.172
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.172)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.173
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.173)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.174
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.174)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.175
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.175)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.176
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.176)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.177
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.177)

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.178
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.178)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.179
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.179)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.180
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.180)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.181
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.181)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.182
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.182)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.183
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.183)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.184
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.184)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.185
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.185)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.186
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.186)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.187
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.187)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.188
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.188)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.189
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.189)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.190
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.190)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.191
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.191)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.192
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.192)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.193
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.193)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.194
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.194)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.195
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.195)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.196
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.196)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.197
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.197)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.198
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.198)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.199
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.199)

// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.200
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.200)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.201
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.201)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.202
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.202)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.203
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.203)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.204
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.204)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.205
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.205)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.206
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.206)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.207
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.207)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.208
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.208)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.209
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.209)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.210
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.210)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.211
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.211)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.212
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.212)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.213
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.213)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.214
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.214)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.215
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.215)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.216
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.216)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.217
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.217)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.218
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.218)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.219
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.219)

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.220
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.220)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.221
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.221)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.222
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.222)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.223
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.223)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.224
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.224)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.225
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.225)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.226
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.226)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.227
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.227)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.228
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.228)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.229
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.229)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.230
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.230)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.231
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.231)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.232
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.232)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.233
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.233)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.234
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.234)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.235
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.235)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.236
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.236)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.237
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.237)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.238
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.238)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.239
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.239)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.240
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.240)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.241
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.241)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.242
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.242)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.243
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.243)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.244
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.244)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.245
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.245)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.246
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.246)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.247
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.247)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.248
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.248)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.249
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.249)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.250
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.250)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.251
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.251)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.252
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.252)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.253
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.253)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.254
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.254)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.255
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.255)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.256
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.256)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.257
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.257)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.258
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.258)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.259
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.259)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.260
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.260)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.261
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.261)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.262
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.262)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.263
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.263)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.264
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.264)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.265
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.265)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.266
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.266)

// push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.267
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.267)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.268
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.268)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.269
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.269)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.270
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.270)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.271
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.271)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.272
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.272)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.273
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.273)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.274
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.274)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.275
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.275)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.276
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.276)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.277
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.277)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.278
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.278)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.279
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.279)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.280
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.280)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.281
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.281)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.282
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.282)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.283
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.283)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.284
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.284)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.285
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.285)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.286
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.286)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.287
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.287)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Scenes.intro$WHILE_EXP0)

// call Keyboard.keyPressed 0

// push return_address
@Scenes.Keyboard.keyPressed$ret.288
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Scenes.Keyboard.keyPressed$ret.288)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEScenes.0
D;JEQ
@SP
A=M-1
M=0
@ENDScenes.0
0;JMP
(TRUEScenes.0)
@SP
A=M-1
M=-1
(ENDScenes.0)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Scenes.intro$WHILE_END0
D;JNE

// goto WHILE_EXP0
@Scenes.intro$WHILE_EXP0
0;JMP

(Scenes.intro$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Scenes.failed 1
(Scenes.failed)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.clearScreen 0

// push return_address
@Scenes.Screen.clearScreen$ret.289
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.clearScreen
@Screen.clearScreen
0;JMP
(Scenes.Screen.clearScreen$ret.289)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.290
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.290)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.291
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.291)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.292
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.292)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.293
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.293)

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.294
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.294)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.295
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.295)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.296
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.296)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.297
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.297)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.298
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.298)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.299
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.299)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.300
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.300)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.301
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.301)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.302
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.302)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.303
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.303)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.304
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.304)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.305
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.305)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.306
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.306)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.307
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.307)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.308
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.308)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3000
@3000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.309
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.309)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.310
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.310)

// push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.311
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.311)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.312
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.312)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.313
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.313)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.314
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.314)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.315
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.315)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.316
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.316)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.317
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.317)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.318
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.318)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.319
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.319)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.320
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.320)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.321
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.321)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.322
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.322)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.323
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.323)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.324
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.324)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.325
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.325)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.326
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.326)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.327
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.327)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.328
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.328)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.329
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.329)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.330
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.330)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.331
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.331)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.332
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.332)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.333
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.333)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.334
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.334)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.335
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.335)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.336
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.336)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.337
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.337)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.338
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.338)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.339
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.339)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.340
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.340)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.341
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.341)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3000
@3000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.342
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.342)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.343
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.343)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.344
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.344)

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.345
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.345)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.346
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.346)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.347
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.347)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.348
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.348)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.349
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.349)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.350
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.350)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.351
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.351)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.352
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.352)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.353
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.353)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.354
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.354)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.355
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.355)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.356
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.356)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.357
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.357)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.358
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.358)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.359
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.359)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.360
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.360)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.361
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.361)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.362
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.362)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.363
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.363)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.364
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.364)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.365
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.365)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.366
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.366)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.367
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.367)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.368
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.368)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.369
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.369)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.370
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.370)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.371
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.371)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.372
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.372)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.373
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.373)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.374
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.374)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.375
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.375)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.376
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.376)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.377
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.377)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.378
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.378)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.379
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.379)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.380
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.380)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.381
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.381)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.382
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.382)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.383
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.383)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.384
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.384)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.385
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.385)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.386
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.386)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.387
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.387)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.388
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.388)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.389
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.389)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.390
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.390)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.391
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.391)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.392
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.392)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.393
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.393)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.394
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.394)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.395
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.395)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.396
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.396)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2000
@2000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.397
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.397)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.398
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.398)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.399
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.399)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.400
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.400)

// push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.401
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.401)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.402
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.402)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.403
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.403)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.404
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.404)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.405
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.405)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.406
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.406)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.407
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.407)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.408
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.408)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.409
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.409)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.410
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.410)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.411
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.411)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.412
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.412)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.413
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.413)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.414
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.414)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.415
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.415)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.416
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.416)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.417
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.417)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.418
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.418)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.419
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.419)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.420
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.420)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.421
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.421)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.422
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.422)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.423
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.423)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.424
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.424)

// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.425
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.425)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.426
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.426)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.427
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.427)

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.428
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.428)

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.429
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.429)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.430
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.430)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.431
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.431)

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.432
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.432)

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.433
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.433)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.434
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.434)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.435
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.435)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.436
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.436)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.437
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.437)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.438
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.438)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.439
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.439)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.440
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.440)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.441
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.441)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.442
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.442)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.443
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.443)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.444
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.444)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.445
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.445)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.446
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.446)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.447
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.447)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.448
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.448)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.449
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.449)

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.450
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.450)

// push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.451
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.451)

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.452
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.452)

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.453
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.453)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.454
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.454)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.455
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.455)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.456
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.456)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.457
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.457)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.458
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.458)

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.459
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.459)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.460
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.460)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.461
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.461)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.462
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.462)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.463
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.463)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.464
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.464)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.465
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.465)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.466
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.466)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.467
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.467)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.468
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.468)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.469
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.469)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.470
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.470)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.471
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.471)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.472
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.472)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.473
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.473)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.474
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.474)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.475
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.475)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.476
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.476)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.477
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.477)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.478
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.478)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.479
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.479)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.480
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.480)

// push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.481
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.481)

// push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.482
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.482)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.483
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.483)

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.484
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.484)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.485
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.485)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.486
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.486)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.487
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.487)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.488
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.488)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.489
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.489)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.490
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.490)

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.491
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.491)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.492
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.492)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.493
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.493)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.494
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.494)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.495
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.495)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.496
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.496)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.497
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.497)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.498
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.498)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1000
@1000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.499
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.499)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.500
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.500)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Scenes.failed$WHILE_EXP0)

// call Keyboard.keyPressed 0

// push return_address
@Scenes.Keyboard.keyPressed$ret.501
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Scenes.Keyboard.keyPressed$ret.501)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEScenes.1
D;JEQ
@SP
A=M-1
M=0
@ENDScenes.1
0;JMP
(TRUEScenes.1)
@SP
A=M-1
M=-1
(ENDScenes.1)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
@Scenes.failed$WHILE_END0
D;JNE

// goto WHILE_EXP0
@Scenes.failed$WHILE_EXP0
0;JMP

(Scenes.failed$WHILE_END0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return

// end_frame = LCL
@LCL
D=M
@R15
M=D

// return_address = *(end_frame - 5)
@5
D=A
@R15
D=M-D
A=D
D=M
@R14
M=D

// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// SP = ARG + 1
@ARG
D=M+1

// THAT = *(end_frame - 1)
@SP
M=D
@R15
A=M-1
D=M
@THAT
M=D

// THIS = *(end_frame - 2)
@R15
D=M
@2
A=D-A
D=M
@THIS
M=D

// ARG = *(end_frame - 3)
@R15
D=M
@3
A=D-A
D=M
@ARG
M=D

// LCL = *(end_frame - 4)
@R15
D=M
@4
A=D-A
D=M
@LCL
M=D

// goto return_address
@R14
A=M
0;JMP

// Scenes.succeeded 1
(Scenes.succeeded)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.clearScreen 0

// push return_address
@Scenes.Screen.clearScreen$ret.502
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Screen.clearScreen
@Screen.clearScreen
0;JMP
(Scenes.Screen.clearScreen$ret.502)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.503
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.503)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.504
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.504)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.505
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.505)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.506
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.506)

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.507
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.507)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.508
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.508)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.509
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.509)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.510
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.510)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.511
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.511)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.512
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.512)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.513
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.513)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.514
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.514)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.515
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.515)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.516
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.516)

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.517
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.517)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.518
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.518)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.519
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.519)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.520
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.520)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.521
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.521)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.522
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.522)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3000
@3000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.523
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.523)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.524
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.524)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.525
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.525)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.526
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.526)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.527
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.527)

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.528
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.528)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.529
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.529)

// push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.530
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.530)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.531
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.531)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.532
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.532)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.533
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.533)

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.534
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.534)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.535
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.535)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.536
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.536)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.537
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.537)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.538
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.538)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.539
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.539)

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.540
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.540)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.541
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.541)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.542
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.542)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.543
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.543)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.544
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.544)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.545
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.545)

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.546
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.546)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.547
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.547)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.548
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.548)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.549
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.549)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.550
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.550)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.551
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.551)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.552
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.552)

// push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.553
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.553)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.554
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.554)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.555
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.555)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.556
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.556)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.557
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.557)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.558
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.558)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.559
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.559)

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.560
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.560)

// pop local 0
@LCL
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.println 0

// push return_address
@Scenes.Output.println$ret.561
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.println
@Output.println
0;JMP
(Scenes.Output.println$ret.561)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printString 1

// push return_address
@Scenes.Output.printString$ret.562
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Output.printString
@Output.printString
0;JMP
(Scenes.Output.printString$ret.562)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 3000
@3000
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@Scenes.Sys.wait$ret.563
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.wait
@Sys.wait
0;JMP
(Scenes.Sys.wait$ret.563)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.dispose 1

// push return_address
@Scenes.String.dispose$ret.564
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.dispose
@String.dispose
0;JMP
(Scenes.String.dispose$ret.564)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1

// push return_address
@Scenes.String.new$ret.565
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.new
@String.new
0;JMP
(Scenes.String.new$ret.565)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.566
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.566)

// push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.567
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.567)

// push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.568
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.568)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.569
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.569)

// push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.570
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.570)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.571
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.571)

// push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.572
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.572)

// push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.573
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.573)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.574
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.574)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.575
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.575)

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.576
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.576)

// push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.577
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.577)

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.578
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.578)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.579
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.579)

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.580
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D

// goto String.appendChar
@String.appendChar
0;JMP
(Scenes.String.appendChar$ret.580)

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2

// push return_address
@Scenes.String.appendChar$ret.581
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@SP
D=M
@7
D=D-A
@ARG
M=D
@SP
D=M

// LCL = SP
@SP
D=M
@LCL
M=D