module labl6;
reg signed [31:0] a, b, expected;
reg cin, ok;
wire signed [31:0] z;
wire cout;

yAdder mine(z, cout, a, b, cin);

initial
begin
	repeat (10)
	begin
		a = $random;
		b = $random;
		cin = 0;
		expected = a + b + cin;
		#1; //wait for z to get the value
		ok = expected === z ? 1 : 0;
		//$display("%32d %32b", z, z);
		//$display("%32d %32b", expected, expected);
		if (ok)
			$display("PASS:\na=%b\nb=%b\nc=%b\nz=%b\no=%b\n", a, b, cin, z, cout);
		else
			$display("FAIL:\na=%b\nb=%b\nc=%b\nz=%b\no=%b\n", a, b, cin, z, cout);
	end
end

endmodule



