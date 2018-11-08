module labl4;

reg [31:0] a [3:0]; 
reg [1:0] c;
wire [31:0] z;
integer i, expect;

yMux4to1 #(32) mux421(z, a[0], a[1], a[2], a[3], c);

initial
begin
	repeat (10)
	begin
		for (i = 0; i < 4; i = i + 1)
			a[i] = $random;
			
		c = $random / 4;
		
		expect = a[c];  //oracle
		
		#1;  //wait for z to get the value
		if (expect !== z)
			$display("Failed:\na0=%b\na1=%b\na2=%b\na3=%b\nc=%2b\n z=%b\n", a[0], a[1], a[2], a[3], c, z);
		else
			$display("PASSED:\na0=%b\na1=%b\na2=%b\na3=%b\nc=%2b\n z=%b\n", a[0], a[1], a[2], a[3], c, z);
	end
end

endmodule
