addi x2, x0, 1600 			//initialize the stack to 1600, x2= stack pointer
ecall x5, x0, 5	 	 	//read the input to x5
add x10, x5, x0 	 		//put the parameter in x10			
addi x2, x2, -8 			//make room to store x5
sd x5, 0(x2) 
jal x1, myswap 
ld x5, 0(x2)			//restore x5 rom the stack
addi x2, x2, 8 			//pop the stack
ecall x0, x10, 2 			//print the value returned from the procedure
ecall x0, x5, 2			//print the original value
ORG 96
myswap:
addi x2, x2, -8 
sd x8, 0(x2) 
addi x5, x0, 255 			// x5 is a 0000 ...011111111
and x6, x10, x5 			// x6 is m=i&a, m has the least significant byte
srai x7, x10, 8 			//x7 is i shifted to right by 8 bits
and x7, x7, x5 			//x7 is the second least significant Byte of i
srai x8, x10, 16 			//shift i to right by 16bits,putit in x8
slli x8, x8, 8 			
or x8, x8, x6 			//append the second least significant byte
slli x8, x8, 8 
or x8, x8, x7			//append the first least significant byte
add x10, x0, x8 			// write the procedure result to x10
ld x8, 0(x2) 			// pop x8 from the stack
addi x2, x2, 8 
jalr x0, 0(x1)
