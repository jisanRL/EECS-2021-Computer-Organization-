DD 	 12,3,11			//store value of D,L,M in memeory 
ld  	x4, 16(x0)			//load M from memory 
addi 	x4, x4, 15			//compute Y+M 
ld 	x5, 0(x0)			//load D 
ld 	x6, 8(x0)			//load L 
sub	x6, x6,x5			//subtract L-D
sub	x4, x4, x6			//subtract (Y+M)-(L-D)
addi 	x6, x0, 6			//calculate Z + 0 and store in X6 
addi 	x6, x6, -5			//Z+C
add 	x4, x4, x6			//calculate (Y+M)-(L-D)+(Z+C)
sub 	x4, x4, x5			//calculate (Y+M)-(L-D)+(Z+C) -D 
sd	x4,0(x0)			//store result in memeory 
