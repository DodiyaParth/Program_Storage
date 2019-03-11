`include "dLatch.v"
module DFF_1(d,clk,q);
	input d,clk;
	output q;
	wire q1;
	dLatch dl1(d,clk,q1);
	dLatch dl2(q1,~clk,q);
endmodule