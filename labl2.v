module lab2;
reg [1:0] a, b, expect;
wire [1:0] z;
reg c;
integer i, j, k;

yMux2 my_mux2(z, a, b, c);

initial
begin
	for (i = 0; i < 4; i = i + 1)
	begin
		for (j = 0; j < 4; j = j + 1)
		begin
			for (k = 0; k < 2; k = k + 1)
			begin
				a = i;
				b = j;
				c = k;
				expect = c === 0 ? a : b;
				#1;
				if (expect == z)
					$display("PASS: a=%b b=%b c=%b z=%b", a, b, c, z);
			end
		end
	end
end

endmodule

