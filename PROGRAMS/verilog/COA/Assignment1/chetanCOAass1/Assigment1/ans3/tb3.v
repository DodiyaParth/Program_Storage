`include "prog3.v"

module tb3;
reg a;
reg b;
wire sum;
wire co;

half_add A(a,b,sum,co);

always begin
	
	a=0;
	b=0;
	$dumpfile("prog3.vcd");
	$dumpvars(0,tb3);
	$monitor("A=%b B=%b S=%b C=%b",a,b,sum,co);
	#1 a=1;
//	$display("A=%b B=%b S=%b C=%b",a,b,sum,co);
	#2 b=1;
//	$display("A=%b B=%b S=%b C=%b",a,b,sum,co);
	#3 a=0;
//	$display("A=%b B=%b S=%b C=%b",a,b,sum,co);
	#4 $finish;
	end

endmodule


