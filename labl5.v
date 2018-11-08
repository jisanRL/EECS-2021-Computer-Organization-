module labl5;
reg [2:0] in;
wire z, cout;
integer i;

yAdder1 adder(z, cout, in[2], in[1], in[0]);

initial
begin
	for (i = 0; i < 8; i = i + 1)
	begin
		in = i;
		#1 $display("cout=%b z=%b a=%b b=%b cin=%b", cout, z, in[2], in[1], in[0]);
	end
end

endmodule
