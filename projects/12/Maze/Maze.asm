
// Main.main 1
(Main.main)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call MazeGame.new 0

// push return_address
@Main.MazeGame.new$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto MazeGame.new
@MazeGame.new
0;JMP
(Main.MazeGame.new$ret.0)

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

// call MazeGame.run 1

// push return_address
@Main.MazeGame.run$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto MazeGame.run
@MazeGame.run
0;JMP
(Main.MazeGame.run$ret.1)

// pop temp 0
@5
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

// call MazeGame.dispose 1

// push return_address
@Main.MazeGame.dispose$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto MazeGame.dispose
@MazeGame.dispose
0;JMP
(Main.MazeGame.dispose$ret.2)

// pop temp 0
@5
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

// Maze.new 0
(Maze.new)

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
@Maze.Memory.alloc$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Memory.alloc
@Memory.alloc
0;JMP
(Maze.Memory.alloc$ret.0)

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

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Maze.draw 1

// push return_address
@Maze.Maze.draw$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Maze.draw
@Maze.draw
0;JMP
(Maze.Maze.draw$ret.1)

// pop temp 0
@5
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

// Maze.dispose 0
(Maze.dispose)

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
@Maze.Memory.deAlloc$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Maze.Memory.deAlloc$ret.2)

// pop temp 0
@5
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

// Maze.draw 0
(Maze.draw)

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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Maze.Screen.setColor$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.3)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.4)

// pop temp 0
@5
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

// Maze.moveUp 0
(Maze.moveUp)

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
@TRUEMaze.0
D;JGT
@SP
A=M-1
M=0
@ENDMaze.0
0;JMP
(TRUEMaze.0)
@SP
A=M-1
M=-1
(ENDMaze.0)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Maze.moveUp$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Maze.moveUp$IF_FALSE0
0;JMP

(Maze.moveUp$IF_TRUE0)

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
@Maze.Screen.setColor$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.5)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.6)

// pop temp 0
@5
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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Maze.Screen.setColor$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.7)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.8)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Maze.moveUp$IF_FALSE0)

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

// Maze.moveDown 0
(Maze.moveDown)

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

// push constant 253
@253
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
@TRUEMaze.1
D;JLT
@SP
A=M-1
M=0
@ENDMaze.1
0;JMP
(TRUEMaze.1)
@SP
A=M-1
M=-1
(ENDMaze.1)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Maze.moveDown$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Maze.moveDown$IF_FALSE0
0;JMP

(Maze.moveDown$IF_TRUE0)

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
@Maze.Screen.setColor$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.9)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.10)

// pop temp 0
@5
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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Maze.Screen.setColor$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.11)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.12)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Maze.moveDown$IF_FALSE0)

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

// Maze.moveLeft 0
(Maze.moveLeft)

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
@TRUEMaze.2
D;JGT
@SP
A=M-1
M=0
@ENDMaze.2
0;JMP
(TRUEMaze.2)
@SP
A=M-1
M=-1
(ENDMaze.2)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Maze.moveLeft$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Maze.moveLeft$IF_FALSE0
0;JMP

(Maze.moveLeft$IF_TRUE0)

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
@Maze.Screen.setColor$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.13)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.14)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Maze.Screen.setColor$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.15)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.16)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Maze.moveLeft$IF_FALSE0)

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

// Maze.moveRight 0
(Maze.moveRight)

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

// push constant 509
@509
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
@TRUEMaze.3
D;JLT
@SP
A=M-1
M=0
@ENDMaze.3
0;JMP
(TRUEMaze.3)
@SP
A=M-1
M=-1
(ENDMaze.3)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@Maze.moveRight$IF_TRUE0
D;JNE

// goto IF_FALSE0
@Maze.moveRight$IF_FALSE0
0;JMP

(Maze.moveRight$IF_TRUE0)

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
@Maze.Screen.setColor$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.17)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.18)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1

// push return_address
@Maze.Screen.setColor$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Screen.setColor
@Screen.setColor
0;JMP
(Maze.Screen.setColor$ret.19)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// call Screen.drawCircle 3

// push return_address
@Maze.Screen.drawCircle$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Screen.drawCircle
@Screen.drawCircle
0;JMP
(Maze.Screen.drawCircle$ret.20)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(Maze.moveRight$IF_FALSE0)

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

// MazeGame.new 0
(MazeGame.new)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1

// push return_address
@MazeGame.Memory.alloc$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Memory.alloc
@Memory.alloc
0;JMP
(MazeGame.Memory.alloc$ret.0)

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

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 50
@50
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

// call Maze.new 3

// push return_address
@MazeGame.Maze.new$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@8
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

// goto Maze.new
@Maze.new
0;JMP
(MazeGame.Maze.new$ret.1)

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

// MazeGame.dispose 0
(MazeGame.dispose)

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

// call Maze.dispose 0

// push return_address
@MazeGame.Maze.dispose$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Maze.dispose
@Maze.dispose
0;JMP
(MazeGame.Maze.dispose$ret.2)

// pop temp 0
@5
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
@MazeGame.Memory.deAlloc$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(MazeGame.Memory.deAlloc$ret.3)

// pop temp 0
@5
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

// MazeGame.moveMaze 0
(MazeGame.moveMaze)

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
@TRUEMazeGame.0
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.0
0;JMP
(TRUEMazeGame.0)
@SP
A=M-1
M=-1
(ENDMazeGame.0)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@MazeGame.moveMaze$IF_TRUE0
D;JNE

// goto IF_FALSE0
@MazeGame.moveMaze$IF_FALSE0
0;JMP

(MazeGame.moveMaze$IF_TRUE0)

// call Maze.moveUp 0

// push return_address
@MazeGame.Maze.moveUp$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Maze.moveUp
@Maze.moveUp
0;JMP
(MazeGame.Maze.moveUp$ret.4)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MazeGame.moveMaze$IF_FALSE0)

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
@TRUEMazeGame.1
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.1
0;JMP
(TRUEMazeGame.1)
@SP
A=M-1
M=-1
(ENDMazeGame.1)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@MazeGame.moveMaze$IF_TRUE1
D;JNE

// goto IF_FALSE1
@MazeGame.moveMaze$IF_FALSE1
0;JMP

(MazeGame.moveMaze$IF_TRUE1)

// call Maze.moveDown 0

// push return_address
@MazeGame.Maze.moveDown$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Maze.moveDown
@Maze.moveDown
0;JMP
(MazeGame.Maze.moveDown$ret.5)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MazeGame.moveMaze$IF_FALSE1)

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
@TRUEMazeGame.2
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.2
0;JMP
(TRUEMazeGame.2)
@SP
A=M-1
M=-1
(ENDMazeGame.2)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@MazeGame.moveMaze$IF_TRUE2
D;JNE

// goto IF_FALSE2
@MazeGame.moveMaze$IF_FALSE2
0;JMP

(MazeGame.moveMaze$IF_TRUE2)

// call Maze.moveLeft 0

// push return_address
@MazeGame.Maze.moveLeft$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Maze.moveLeft
@Maze.moveLeft
0;JMP
(MazeGame.Maze.moveLeft$ret.6)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MazeGame.moveMaze$IF_FALSE2)

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
@TRUEMazeGame.3
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.3
0;JMP
(TRUEMazeGame.3)
@SP
A=M-1
M=-1
(ENDMazeGame.3)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@MazeGame.moveMaze$IF_TRUE3
D;JNE

// goto IF_FALSE3
@MazeGame.moveMaze$IF_FALSE3
0;JMP

(MazeGame.moveMaze$IF_TRUE3)

// call Maze.moveRight 0

// push return_address
@MazeGame.Maze.moveRight$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Maze.moveRight
@Maze.moveRight
0;JMP
(MazeGame.Maze.moveRight$ret.7)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

(MazeGame.moveMaze$IF_FALSE3)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1

// push return_address
@MazeGame.Sys.wait$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto Sys.wait
@Sys.wait
0;JMP
(MazeGame.Sys.wait$ret.8)

// pop temp 0
@5
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

// MazeGame.run 2
(MazeGame.run)
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

(MazeGame.run$WHILE_EXP0)

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
@MazeGame.run$WHILE_END0
D;JNE

(MazeGame.run$WHILE_EXP1)

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

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMazeGame.4
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.4
0;JMP
(TRUEMazeGame.4)
@SP
A=M-1
M=-1
(ENDMazeGame.4)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END1
@SP
AM=M-1
D=M
@MazeGame.run$WHILE_END1
D;JNE

// call Keyboard.keyPressed 0

// push return_address
@MazeGame.Keyboard.keyPressed$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(MazeGame.Keyboard.keyPressed$ret.9)

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

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// call MazeGame.moveMaze 1

// push return_address
@MazeGame.MazeGame.moveMaze$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto MazeGame.moveMaze
@MazeGame.moveMaze
0;JMP
(MazeGame.MazeGame.moveMaze$ret.10)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP1
@MazeGame.run$WHILE_EXP1
0;JMP

(MazeGame.run$WHILE_END1)

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

// push constant 81
@81
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
@TRUEMazeGame.5
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.5
0;JMP
(TRUEMazeGame.5)
@SP
A=M-1
M=-1
(ENDMazeGame.5)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
@MazeGame.run$IF_TRUE0
D;JNE

// goto IF_FALSE0
@MazeGame.run$IF_FALSE0
0;JMP

(MazeGame.run$IF_TRUE0)

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

(MazeGame.run$IF_FALSE0)

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

// push constant 131
@131
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
@TRUEMazeGame.6
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.6
0;JMP
(TRUEMazeGame.6)
@SP
A=M-1
M=-1
(ENDMazeGame.6)

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
@MazeGame.run$IF_TRUE1
D;JNE

// goto IF_FALSE1
@MazeGame.run$IF_FALSE1
0;JMP

(MazeGame.run$IF_TRUE1)

// push constant 1
@1
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

(MazeGame.run$IF_FALSE1)

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

// push constant 133
@133
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
@TRUEMazeGame.7
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.7
0;JMP
(TRUEMazeGame.7)
@SP
A=M-1
M=-1
(ENDMazeGame.7)

// if-goto IF_TRUE2
@SP
AM=M-1
D=M
@MazeGame.run$IF_TRUE2
D;JNE

// goto IF_FALSE2
@MazeGame.run$IF_FALSE2
0;JMP

(MazeGame.run$IF_TRUE2)

// push constant 2
@2
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

(MazeGame.run$IF_FALSE2)

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

// push constant 130
@130
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
@TRUEMazeGame.8
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.8
0;JMP
(TRUEMazeGame.8)
@SP
A=M-1
M=-1
(ENDMazeGame.8)

// if-goto IF_TRUE3
@SP
AM=M-1
D=M
@MazeGame.run$IF_TRUE3
D;JNE

// goto IF_FALSE3
@MazeGame.run$IF_FALSE3
0;JMP

(MazeGame.run$IF_TRUE3)

// push constant 3
@3
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

(MazeGame.run$IF_FALSE3)

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

// push constant 132
@132
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
@TRUEMazeGame.9
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.9
0;JMP
(TRUEMazeGame.9)
@SP
A=M-1
M=-1
(ENDMazeGame.9)

// if-goto IF_TRUE4
@SP
AM=M-1
D=M
@MazeGame.run$IF_TRUE4
D;JNE

// goto IF_FALSE4
@MazeGame.run$IF_FALSE4
0;JMP

(MazeGame.run$IF_TRUE4)

// push constant 4
@4
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

(MazeGame.run$IF_FALSE4)

(MazeGame.run$WHILE_EXP2)

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

// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUEMazeGame.10
D;JEQ
@SP
A=M-1
M=0
@ENDMazeGame.10
0;JMP
(TRUEMazeGame.10)
@SP
A=M-1
M=-1
(ENDMazeGame.10)

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END2
@SP
AM=M-1
D=M
@MazeGame.run$WHILE_END2
D;JNE

// call Keyboard.keyPressed 0

// push return_address
@MazeGame.Keyboard.keyPressed$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(MazeGame.Keyboard.keyPressed$ret.11)

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

// push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// call MazeGame.moveMaze 1

// push return_address
@MazeGame.MazeGame.moveMaze$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// ARG = SP - (n + 5)
@6
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

// goto MazeGame.moveMaze
@MazeGame.moveMaze
0;JMP
(MazeGame.MazeGame.moveMaze$ret.12)

// pop temp 0
@5
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto WHILE_EXP2
@MazeGame.run$WHILE_EXP2
0;JMP

(MazeGame.run$WHILE_END2)

// goto WHILE_EXP0
@MazeGame.run$WHILE_EXP0
0;JMP

(MazeGame.run$WHILE_END0)

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
