module yAlu(z, ex, a, b, op);
input [31:0] a, b, slt;
input [2:0] op;
output [31:0] z;
output ex;
wire [31:0] arithOutput, aMinusb, andOutput, orOutput;
wire cout, condition, z1;
wire [15:0] z16;
wire [7:0] z8;
wire [3:0] z4;
wire [1:0] z2;

assign slt[31:1] = 0;  //upper bits are always 0, only care 0-bit
//assign ex = 0;  //not supported

//----------------------------------------------------------get (a-b)[31]
yArith my_arith1(aMinusb, cout, a, b, 1'b1);
//------------------------------------------set slt[0] using xor and yMux1
xor my_xor(condition, a[31], b[31]);
yMux1 my_mux1(slt[0], aMinusb[31], a[31], condition);

and my_and[31:0](andOutput, a, b);
or my_or[31:0](orOutput, a, b);
yArith my_arith2(arithOutput, cout, a, b, op[2]);
yMux4to1 #(32) my_mux2(z, andOutput, orOutput, arithOutput, slt, op[1:0]);

//----------------------------------------------------------------set ex
or or16[15:0](z16, z[31:16], z[15:0]);
or or8[7:0](z8, z16[15:8], z16[7:0]);
or or4[3:0](z4, z8[7:4], z[3:0]);
or or2[1:0](z2, z4[3:2], z[1:0]);
or or1(z1, z2[1], z2[0]);
not my_not(ex, z1);

endmodule
