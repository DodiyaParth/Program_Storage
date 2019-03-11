`include "DFF_1.v"
module DFF_1_tb;
	reg clk,d;
	wire q;
	DFF_1 dff(d,clk,q);
	initial 
		begin
			clk=0;
		forever
			#10 clk=~clk;
	end
	initial 
		begin
			#5 d=0;
		forever
			#20 d=~d;
	end
	initial
		begin
			$dumpfile("DFF_1.vcd");
			$dumpvars(0, DFF_1_tb);
			
	end
endmodule