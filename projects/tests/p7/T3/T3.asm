
// push constant 32767
@32767
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 32767
@32767
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
@TRUET3.0
D;JLT
@SP
A=M-1
M=0
@ENDT3.0
0;JMP
(TRUET3.0)
@SP
A=M-1
M=-1
(ENDT3.0)

// push constant 32767
@32767
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
@TRUET3.1
D;JGT
@SP
A=M-1
M=0
@ENDT3.1
0;JMP
(TRUET3.1)
@SP
A=M-1
M=-1
(ENDT3.1)

// push constant 20000
@20000
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 30000
@30000
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
@TRUET3.2
D;JGT
@SP
A=M-1
M=0
@ENDT3.2
0;JMP
(TRUET3.2)
@SP
A=M-1
M=-1
(ENDT3.2)

// push constant 20000
@20000
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30000
@30000
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
@TRUET3.3
D;JGT
@SP
A=M-1
M=0
@ENDT3.3
0;JMP
(TRUET3.3)
@SP
A=M-1
M=-1
(ENDT3.3)
