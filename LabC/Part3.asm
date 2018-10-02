	DC 	"Input A"		//store prompt for input integer 
	DC	"Input B"		//store prompt for input integer 
	DC	"Input C"		//store prompt for input integer 
	ld 	x3, 0(x0)		//load prompt for input A
	ld	x4, 8(x0)		//load prompt for input B
	ld	x5, 16(x0)		//load prompt for input C
	ecall	x6, x3, 5		//get input for A 
	ecall	x7, x4, 5		//get input for B
	ecall	x8, x5, 5		//get input for C 
	bge	x7, x6, ELSE		// if !(A>B), goes to ELSE block
	addi	x9, x0, 5		//set x9 to 5
	bne	x8, x9, ELSE		//if !(c==5), go to ELSE block 
	addi	x1, x0, 1		//execute Y=1, put result in x1 
	addi	x2, x0, EXIT 		//execute Z=2, put result in x2 
ELSE:   addi	   x1, x0, 0			//label ELSE; execute Y=0, put result in x1
	addi 	x2, x0, 0		//execute z=0, put result in x2  
EXIT: 

