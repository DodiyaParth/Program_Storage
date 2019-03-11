`include "DFF_2.v"
module DFF_2_tb;
reg clk,d;
	wire q;
	DFF_2 dff(d,clk,q);
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
			$dumpfile("DFF_2.vcd");
			$dumpvars(0, DFF_2_tb);
			
	end
endmodule	