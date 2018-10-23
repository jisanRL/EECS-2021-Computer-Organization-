ecall 	x1, x0, 5
ecall		x2, x0, 5


	bge 	x1, x2, L1
	blt 	x2, x1, L2 
	beq	x0, x0, EXIT

L1: 	addi 	x5, x0, 0 
L2:	addi 	x5, x0, 1
	
EXIT:
