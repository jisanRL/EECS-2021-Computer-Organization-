module labK;
   reg a, b, c, expect;			// reg without size means 1-bit
   wire z;
   wire NOT1_o1, NOT1_i1;
   wire AND1_o1, AND1_i1, AND1_i2;
   wire AND2_o1, AND2_i1, AND2_i2;
   wire  OR1_o1,  OR1_i1,  OR1_i2;
   
   
   integer i, j, k;
   
   not (NOT1_o1, NOT1_i1);
   and (AND1_o1, AND1_i1, AND1_i2);
   and (AND2_o1, AND2_i1, AND2_i2);
   or  ( OR1_o1,  OR1_i1,  OR1_i2);

   assign NOT1_i1 = c;

   assign  OR1_i1 = AND1_o1;
   assign AND1_i1 = a;
   assign AND1_i2 = NOT1_o1;
   
   assign  OR1_i2 = AND2_o1;
   assign AND2_i1 = c;
   assign AND2_i2 = b;

   assign z = OR1_o1;
   
   initial
     begin
	for (i=0; i<2; i=i+1)
	  for (j=0; j<2; j=j+1)
	    for (k=0; k<2; k=k+1)
	    begin
	       a = i; b = j; c = k;
	       expect = (i&~k) | (j&k);
	       #1 if (expect===z)
		 $display("PASS: a=%b b=%b c=%b z=%b", a, b, c, z);
	       else
		 $display("FAIL: a=%b b=%b c=%b z=%b", a, b, c, z);
	    end
	$finish;
     end // initial begin
endmodule
