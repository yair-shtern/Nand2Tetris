
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
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
@TRUEStackTest.0
D;JEQ
@SP
A=M-1
M=0
@ENDStackTest.0
0;JMP
(TRUEStackTest.0)
@SP
A=M-1
M=-1
(ENDStackTest.0)

// push constant 17
@17
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

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEStackTest.1
D;JEQ
@SP
A=M-1
M=0
@ENDStackTest.1
0;JMP
(TRUEStackTest.1)
@SP
A=M-1
M=-1
(ENDStackTest.1)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
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
@TRUEStackTest.2
D;JEQ
@SP
A=M-1
M=0
@ENDStackTest.2
0;JMP
(TRUEStackTest.2)
@SP
A=M-1
M=-1
(ENDStackTest.2)

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
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
@TRUEStackTest.3
D;JLT
@SP
A=M-1
M=0
@ENDStackTest.3
0;JMP
(TRUEStackTest.3)
@SP
A=M-1
M=-1
(ENDStackTest.3)

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 892
@892
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
@TRUEStackTest.4
D;JLT
@SP
A=M-1
M=0
@ENDStackTest.4
0;JMP
(TRUEStackTest.4)
@SP
A=M-1
M=-1
(ENDStackTest.4)

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
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
@TRUEStackTest.5
D;JLT
@SP
A=M-1
M=0
@ENDStackTest.5
0;JMP
(TRUEStackTest.5)
@SP
A=M-1
M=-1
(ENDStackTest.5)

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
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
@TRUEStackTest.6
D;JGT
@SP
A=M-1
M=0
@ENDStackTest.6
0;JMP
(TRUEStackTest.6)
@SP
A=M-1
M=-1
(ENDStackTest.6)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32767
@32767
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
@TRUEStackTest.7
D;JGT
@SP
A=M-1
M=0
@ENDStackTest.7
0;JMP
(TRUEStackTest.7)
@SP
A=M-1
M=-1
(ENDStackTest.7)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
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
@TRUEStackTest.8
D;JGT
@SP
A=M-1
M=0
@ENDStackTest.8
0;JMP
(TRUEStackTest.8)
@SP
A=M-1
M=-1
(ENDStackTest.8)

// push constant 57
@57
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

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push constant 112
@112
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

// push constant 82
@82
D=A
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

// not
@SP
A=M-1
M=!M
