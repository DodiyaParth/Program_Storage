module dff(D,clk,Q);
	input D,clk;
	inout Q;
	wire db,w1,w2,Qb;
	not A1(db,D);
	nand A2(w1,D,clk);
	nand A3(w2,db,clk);
	nand A4(Q,w1,Qb);
	nand A5(Qb,w2,Q);
endmodule

module register(data_in,write,data_out);
input [63:0]data_in;
input write;
output [63:0]data_out;
dff A[63:0](data_in[63:0],write,data_out[63:0]);
endmodule
