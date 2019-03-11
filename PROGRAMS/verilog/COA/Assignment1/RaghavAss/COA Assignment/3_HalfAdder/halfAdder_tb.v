`include "halfAdder.v"
`timescale 1ns/100ps
module halfAdder_tb;
	reg a,b;
	wire x,y;
	halfAdder ha(a,b,x,y);
	
	initial
		begin
		$dumpfile("halfAdder.vcd");
		$dumpvars(0, halfAdder_tb);
		$display("A B  sum carry");
		$monitor(a," ",b,"    ",x,"   ",y);
		a=1'b0;
		b=1'b0;
		#10
		a=1'b0;
		b=1'b1;
		#10
		a=1'b1;
		b=1'b0;
		#10
		a=1'b1;
		b=1'b1;
		#10
		$finish;
	end
endmodule