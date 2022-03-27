
// push constant 0
@0
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

// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEStackTestOverflow.0
D;JLT
@SP
A=M-1
M=0
@ENDStackTestOverflow.0
0;JMP
(TRUEStackTestOverflow.0)
@SP
A=M-1
M=-1
(ENDStackTestOverflow.0)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@TRUEStackTestOverflow.1
D;JLT
@SP
A=M-1
M=0
@ENDStackTestOverflow.1
0;JMP
(TRUEStackTestOverflow.1)
@SP
A=M-1
M=-1
(ENDStackTestOverflow.1)

// push constant 0
@0
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

// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEStackTestOverflow.2
D;JGT
@SP
A=M-1
M=0
@ENDStackTestOverflow.2
0;JMP
(TRUEStackTestOverflow.2)
@SP
A=M-1
M=-1
(ENDStackTestOverflow.2)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
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
@TRUEStackTestOverflow.3
D;JGT
@SP
A=M-1
M=0
@ENDStackTestOverflow.3
0;JMP
(TRUEStackTestOverflow.3)
@SP
A=M-1
M=-1
(ENDStackTestOverflow.3)
