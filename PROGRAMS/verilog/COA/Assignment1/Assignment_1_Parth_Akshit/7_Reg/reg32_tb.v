`include "reg32.v"
module reg32_tb;
reg [31:0]D;
reg rst,clk;
wire [31:0]Q;

reg32 m1(D,rst,clk,Q);


initial
begin
	clk=1'b1;				
	repeat(30)
		#3 clk=~clk;
end

initial
begin
	$dumpfile("reg32.vcd");
	$dumpvars(0,reg32_tb);
end


initial
begin
	#2 D=32'hffffffff; rst=1'b0;
	#5 $display("%g READ: Q=%h",$time,Q);
	#1 D=32'hfe34c213; rst=1'b0;
	#2 $display("%g READ: Q=%h",$time,Q);
	#1 rst=1'b1;
	#2 $display("%g READ: Q=%h",$time,Q);
	#1 D=32'h2; rst=1'b0; 
	#2 $display("%g READ: Q=%h",$time,Q);
	#2 $finish;
end
endmodule
