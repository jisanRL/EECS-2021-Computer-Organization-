ORG 96				//start location, memory assignemnt starts here
DD 12, 36, 87 			//three doublewords 
addi x1, x0, 96 		// x1 is pointing to memory where start data is stored 
ld x4, 0(x1) 			//loads doubleword from 0+contents of register x1
ld x5, 8(x1) 			//adds contents of x4 to x5 result stored in x6 
add x6, x4, x5 			//stores content of x6 in memeory location
sd x6, 16(x1)			//stores contents of x6 in memory location pointed by x1+x16 