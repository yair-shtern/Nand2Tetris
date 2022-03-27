// This file is part of nand2tetris, as taught in The Hebrew University,
// and was written by Aviv Yaish, and is published under the Creative 
// Common Attribution-NonCommercial-ShareAlike 3.0 Unported License 
// https://creativecommons.org/licenses/by-nc-sa/3.0/

// An implementation of a sorting algorithm. 
// An array is given in R14 and R15, where R14 contains the start address of the 
// array, and R15 contains the length of the array. 
// You are not allowed to change R14, R15.
// The program should sort the array in-place and in descending order - 
// the largest number at the head of the array.
// You can assume that each array value x is between -16384 < x < 16384.
// You can assume that the address in R14 is at least >= 2048, and that 
// R14 + R15 <= 16383. 
// No other assumptions can be made about the length of the array.
// You can implement any sorting algorithm as long as its runtime complexity is 
// at most C*O(N^2), like bubble-sort. 

@R15
D=M
@i
M=D
@R14
D=M

(WHILE)
	@i
	D=M
	@END
	D;JLE
	@j
	M=0
	
	(LOOP)
		@j
		D=M+1
		@R15
		D=D-M
		@CONTINUE
		D;JGE

		// sort
		@R14
		D=M
		@j
		D=D+M
		@tmp1
		M=D
		@tmp2
		M=D+1
		@tmp1
		A=M
		D=M
		@tmp2
		A=M
		D=D-M
		@SWAP
		D;JLE
	(AFTER_SWAP)
		@j
		M=M+1
		@LOOP
		0;JMP
	
(CONTINUE)
	@i
	M=M-1
	@WHILE
	0;JMP

(SWAP)	
	@tmp1
	A=M
	D=M
	@tmp
	M=D
	@tmp2
	A=M
	D=M
	@tmp1
	A=M
	M=D
	@tmp
	D=M
	@tmp2
	A=M
	M=D
	@AFTER_SWAP
	0;JMP

(END)
	@END
	0;JMP