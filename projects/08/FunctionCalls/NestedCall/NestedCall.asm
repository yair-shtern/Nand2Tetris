// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Sys.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
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
(Sys.Sys.init$ret.0)

// Sys.init 0
(Sys.init)

// push constant 4000
@4000
D=A
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

// push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// call Sys.main 0

// push return_address
@Sys.Sys.main$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
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

// goto Sys.main
@Sys.main
0;JMP
(Sys.Sys.main$ret.1)

// pop temp 1
@6
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Sys.init$LOOP)

// goto LOOP
@Sys.init$LOOP
0;JMP

// Sys.main 5
(Sys.main)
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

// push constant 4001
@4001
D=A
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

// push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 200
@200
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

// push constant 40
@40
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

// push constant 6
@6
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

// push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.add12 1

// push return_address
@Sys.Sys.add12$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
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

// goto Sys.add12
@Sys.add12
0;JMP
(Sys.Sys.add12$ret.2)

// pop temp 0
@5
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

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

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

// Sys.add12 0
(Sys.add12)

// push constant 4002
@4002
D=A
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

// push constant 5002
@5002
D=A
@SP
A=M
M=D
@SP
M=M+1

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
