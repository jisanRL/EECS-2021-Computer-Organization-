	DD	3		//store value A 
	DC	"int"		//store the prompt for input integer 
	ld 	x3, 0(x0)	//load value of A to x3
	ld 	x5, 8(x0)	//load the prompt 
	ecall   x4, x5, 5	//get the input for B
	beq 	x3, x4, ELSE	//If !(A == B), goes to label ELSE
	blt 	x3, x4, ELSEIF	//if A < B goes to ELSEIF 
	addi 	x1, x0, 1	//if A > B execute Y=1 and put result in x1
	addi	x2, x0, 2	//execute Z = 2, put the result in x2
	beq 	x0, x0, EXIT	//unconditional branch, goes to EXIT 

ELSEIF: addi 	x1, x0, 5	//execute Y=5, put result in x1 
	addi 	x2, x0, 5	//execute z=5, put result in x2 
	beq 	x0, x0, EXIT	// unconditional branch, goes to EXIT

ELSE:   addi	   x1, x0, 0	// label ELSE; put result in x2
	addi 	x2, x0, 0	//execute z=0, put result in x2  
EXIT: 

