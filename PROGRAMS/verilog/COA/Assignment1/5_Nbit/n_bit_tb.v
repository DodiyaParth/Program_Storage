`include "n_bit.v"

module tb5;

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0]result;

n_bit A(a,b,cin,result);
initial
begin
	$dumpfile("n_bit.vcd");
	$dumpvars(0,tb5);
end

always begin
	a=4'b0;
	b=4'b0;
	cin = 0;
	$monitor("A = %b, B = %b ,Result = %b",a,b,result);
	#1 a = 4'b0;
	   b = 4'b0;
	   cin=1;
	
	#2 a = 0001;
	   b = 0000;
	   cin = 0;

	#2 a = 0010;
	   b = 0000;
	   cin = 1;

	#2 a = 0010;
	   b = 0010;
	   cin = 0;
	
	#2 a = 1000;
	   b = 0111;
	   cin = 1;
	
	
	#6 $finish;
	end
endmodule
