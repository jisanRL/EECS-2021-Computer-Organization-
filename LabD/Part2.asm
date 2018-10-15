main:
	addi sp, sp, 1600          //initialize the stack pointer to 1600
	ecall x5, x0, 5            //get the input
	addi sp, sp, -8            //make room to store x5
	sd x5, 0(sp)               //store x5
	add x10, x0, x5
	jal x1, not_really_fac     
	ld x5, 0(sp)               //restore x5
	addi sp, sp, 8             //pop the stack
	ecall x0, x5, 0            //output the input
	ecall x0, x10, 0           //output the result
	
ORG 96
not_really_fac:
	addi sp, sp, -8            //make room for x1
	sd x1, 0(sp)               //store x1
	addi x5, x0, 4             //let x5 be 4
	bge x10, x5, L1
	addi x10, x0, 1            //let x10 be 1
	addi sp, sp, 8             //pop the stack
	jalr x0, 0(x1)
L1:
	addi x10, x10, -2          //let x10 be n-2
	jal x1, not_really_fac
	addi x5, x0, 2             //let x5 be 2
	mul x10, x10, x5           //get 2 * x10
    	addi x10, x10, 1           //get 2 * x10 + 1
	ld x1, 0(sp)               //restore x1
	addi sp, sp, 8             //pop the stack
	jalr x0, 0(x1)