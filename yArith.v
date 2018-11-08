module yArith(z, cout, a, b, ctrl);
//add if ctrl = 0, substract if ctrl = 1
output [31:0] z;
output cout;
input [31:0] a, b;
input ctrl;
wire [31:0] notB, tmp;

not my_not[31:0](notB, b);
yMux2 #(32) my_mux(tmp, b, notB, ctrl);
yAdder my_adder(z, cout, a, tmp, ctrl);

endmodule

