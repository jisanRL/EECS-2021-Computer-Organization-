addi 	 x1,x0,0		//y
addi 	 x2,x0,0		//z
ecall	 x3,x0,5		//A
ecall	 x4,x0,5		//B
ecall	 x5,x0,5		//C
addi 	 x6,x0,5 		//5


blt 	x4,x3,A 		//B<A
beq 	x0,x0,Else

A:
beq 	x5,x6,B 		//C==5
beq 	x0,x0,Else

B:
addi 	x1,x0,1	        	 //y=0
addi 	x2,x0,2 		//x=0
beq 	x0,x0,Exit

Else:
addi 	x1,x0,0 		//y=0
addi 	x2,x0,0 		//x=0

Exit:
