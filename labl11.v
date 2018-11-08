module labl9;
reg signed [31:0] a, b;
reg [31:0] expect;
reg [2:0] op;
wire ex;
wire [31:0] z;
reg ok, flag, zero, tmp;

yAlu mine(z, ex, a, b, op);

initial
begin
	repeat (10)
	begin
		a = $random;
		b = $random;
		//op = $random % 8;
		tmp = $random % 2;
		if (tmp === 0)
			b = a;
		flag = $value$plusargs("op=%d", op);
		#1;
		if (op === 3'b000)
		begin
			expect = a & b;
			ok = expect === z;
		end
		else if (op === 3'b001)
		begin
			expect = a | b;
			ok = expect === z;
		end
		else if (op === 3'b010)
		begin
			expect = a + b;
			ok = expect === z;
		end
		else if (op === 3'b110)
		begin
			expect = a - b;
			ok = expect === z;
		end
		else if (op === 3'b111)
		begin
			expect = a < b ? 1 : 0;
			ok = expect === z;
		end
		zero = expect === 0 ? 1 : 0;
		if (op === 0 || op === 1 || op === 2 || op === 6 || op === 7)
		begin
			if (ok && zero === ex)
				$display("PASS:\na=%b\nb=%b\nop=%b\nz=%b\nex=%b\n", a, b, op, z, ex);
			else
				$display("FAIL:\na=%b\nb=%b\nop=%b\nz=%b\nex=%b\n", a, b, op, z, ex);
		end
	end
	$finish;
end

endmodule
