module labk6;
   reg a, b, c, flag;
   wire notOutput, and1Input, and1Output, and2Output, orInput1, orInput2, z;

   not my_not(notOutput, c);
   and and1(and1Output, a, and1Input);
   and and2(and2Output, b, c);
   or my_or(z, orInput1, orInput2);

   assign and1Input = notOutput;
   assign orInput1 = and1Output;
   assign orInput2 = and2Output;

   initial
     begin
	
	flag = $value$plusargs("a=%b", a);
	if (!flag)
	  $display("Missing input a!");
	
	flag = $value$plusargs("b=%b", b);
	if (!flag)
	  $display("Missing input b!");

	flag = $value$plusargs("c=%b", c);
	if (!flag)
	  $display("Missing input c!");
	
	#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
	$finish;
     end

endmodule
