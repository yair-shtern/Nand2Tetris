// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Class1.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@5
D=A
@SP
D=M-D
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Class1.Sys.init$ret.0)

// Class1.set 0
(Class1.set)

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

// pop static 0
@Class1.0
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

// pop static 1
@Class1.1
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

// Class1.get 0
(Class1.get)

// push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class1.1
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
// initialize system
@256
D=A
@SP
M=D

// call Sys.init 0

// push return_address
@Class2.Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@5
D=A
@SP
D=M-D
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Sys.init
@Sys.init
0;JMP
(Class2.Sys.init$ret.0)

// Class2.set 0
(Class2.set)

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

// pop static 0
@Class2.0
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

// pop static 1
@Class2.1
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

// Class2.get 0
(Class2.get)

// push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class2.1
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
@5
D=A
@SP
D=M-D
@ARG
M=D

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

// push constant 6
@6
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

// call Class1.set 2

// push return_address
@Sys.Class1.set$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@7
D=A
@SP
D=M-D
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Class1.set
@Class1.set
0;JMP
(Sys.Class1.set$ret.1)

// pop temp 0
@5
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

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class2.set 2

// push return_address
@Sys.Class2.set$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@7
D=A
@SP
D=M-D
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Class2.set
@Class2.set
0;JMP
(Sys.Class2.set$ret.2)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Class1.get 0

// push return_address
@Sys.Class1.get$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@5
D=A
@SP
D=M-D
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Class1.get
@Class1.get
0;JMP
(Sys.Class1.get$ret.3)

// call Class2.get 0

// push return_address
@Sys.Class2.get$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@5
D=A
@SP
D=M-D
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto Class2.get
@Class2.get
0;JMP
(Sys.Class2.get$ret.4)

(Sys.init$WHILE)

// goto WHILE
@Sys.init$WHILE
0;JMP
