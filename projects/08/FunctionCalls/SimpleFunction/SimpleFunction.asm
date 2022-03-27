
// SimpleFunction.test 2
(SimpleFunction.test)
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

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// not
@SP
A=M-1
M=!M

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

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
