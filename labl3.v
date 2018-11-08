module lab2;
parameter SIZE = 32;
reg [SIZE-1:0] a, b, expect;
wire [SIZE-1:0] z;
reg c;
integer i, j, k;

//defparam my_mux.SIZE = SIZE;
yMux2 #(.SIZE(SIZE)) my_mux(z, a, b, c);

initial
begin
		repeat (10)
		begin
			a = $random;   //give the 32-bit integer to vector a bit by bit
			b = $random;
			c = $random % 2;   //value of c is 0 or 1

			expect = c === 0 ? a : b;

			#1 //we must wait for z to get the value
			if (expect !== z)
				$display("FAILED:\na=%b\nb=%b\nc=%32b\nz=%b\ne=%b\n", a, b, c, z, expect);
			else 
				$display("PASSED:\na=%b\nb=%b\nc=%32b\nz=%b\ne=%b\n", a, b, c, z, expect);
		end
end

endmodule

