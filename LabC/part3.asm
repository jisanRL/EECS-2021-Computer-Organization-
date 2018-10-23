ecall 	x1, x0, 5
ecall 	x2, x0, 5
ecall 	x3, x0, 5 


	blt 	x2, x1, L1
	addi	x10,x0, 5
	beq	x3,  x10, L1
	blt     x1, x2, L2
	beq	x0, x0, EXIT

L1: 	addi 	x12, x0, 1
	addi	x13, x0, 2
	beq	x0, x0, EXIT

L2:	addi 	x15, x0, 0
	addi	x16, x0, 0
	beq	x0, x0, EXIT

	
EXIT:
