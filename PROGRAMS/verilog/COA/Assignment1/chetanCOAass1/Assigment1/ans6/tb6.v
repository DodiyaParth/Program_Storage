`include "prog61.v"
`include "prog62.v"
`include "prog63.v"

module tb6;

reg d;
reg clk;
wire q1,q2,q3;
d_flipflop A(clk,d,q1);
dflip B(clk,d,q2);
d_ff C(clk,d,q3);

always begin
	clk=0;
	d=0;
	$monitor("1.Q = %b\n2.Q = %b\n3.Q = %b\n",q1,q2,q3); 
	
	#1 clk=1;
	d=1;

	#2 d=0;
	clk=1;
	
	#3  d=1;
	clk=0;
	
	#4 $finish;

end

endmodule




