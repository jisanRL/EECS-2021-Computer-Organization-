	DD	3		        //store value A 
	DC	"int"		        //store the prompt for input integer 
	ld 	x1, 0(x0)		//load value of A to x1
	ld 	x2, 8(x0)		//load the prompt 
	ecall   x3, x2, 5		//get the input for B
	bge 	x3, x1, ELSE		//if (A>B) go to ELSE statement
	add 	x5, x0, x0		//if (A>B), execute x=0 and put the result in x5 
	beq 	x0, x0, EXIT		// unconditional branch, goes to EXIT
ELSE:   addi	   x5, x0, 1		// label ELSE, x=1; put result in x5 
EXIT: 

