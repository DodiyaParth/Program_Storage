`include "prog4.v"

module tb4;

reg a=0;
reg b=0;
reg c=0;
wire ca;
wire sum1;

full_add A(a,b,c,ca,sum1);

always begin
	
	a=0;
	b=0;
	c=0;
	$monitor("A=%b B=%b Ci=%b S=%b C=%b",a,b,c,sum1,ca);	
	#1 a=1;
	#2 a=0;b=1;
	#3 a=1;b=1;
	#4 a=0;b=0;c=1;
	#5 a=1;b=0;c=1;
	#6 a=0;b=1;c=1;
	#7 a=1;b=1;c=1;
	#8 $finish;	
	end
endmodule
