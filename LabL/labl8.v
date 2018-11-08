module labl8;
reg [31:0] a, b, expected;
reg ctrl;
wire [31:0] z;
wire cout;

yArith my_arith(z, cout, a, b, ctrl);

initial
begin
	repeat (10)
	begin
		a = $random;
		b = $random;
		ctrl = $random % 2;
		expected = ctrl === 0 ? a + b : a - b;
		#1;
		if (expected === z)
			$display("PASS:\na=%32b\nb=%32b\nc=%b\nz=%32b\no=%b\n", a, b, ctrl, z, cout);
		else
			$display("FAIL:\na=%32b\nb=%32b\nc=%b\nz=%32b\no=%b\n", a, b, ctrl, z, cout);
	end
end

endmodule
