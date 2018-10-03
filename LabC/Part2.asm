ORG 	96			//start location 
DD 	-1,-2			//stored values to memory 

addi 	x1,x0,5			//A
ecall 	x2,x0,5			//B
ld 	x5,0(x0) 		//y
ld 	x6,8(x0) 		//z

blt 	x2,x1,a
blt 	x1,x2,b
addi 	x5,x0,0			//y=0
addi 	x6, x0, 0		//z=0
beq 	x0, x0, Exit

Exit:

a:
	addi x5, x0, 1		//y=1
	addi x6, x0, 2		//z=2
	beq x0, x0, Exit

b:
	addi x5, x0, 5		//y=5
	addi x6, x0, 5		//z=5
	beq x0, x0, Exit

Exit:

