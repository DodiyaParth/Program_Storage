`include "prog2_enc.v"

module tb2_enc;

reg [15:0] encoder_in;
reg enable;
wire [3:0] binary_out;

encoder A(binary_out,encoder_in,enable);

always begin
	enable = 1;
	encoder_in = 16'h0002;
	$monitor("Output = %b",binary_out);
	#1 encoder_in = 16'h0004;
	#2 encoder_in = 16'h0008;
	#3 encoder_in = 16'h0010;
	#4 encoder_in = 16'h0020;
	#5 encoder_in = 16'h0040;
	#6 encoder_in = 16'h0080;
	#7 encoder_in = 16'h0100;
	#8 encoder_in = 16'h0200;
	#9 encoder_in = 16'h0400;
	#10 encoder_in = 16'h0800;
	#11 encoder_in = 16'h1000;
	#12 encoder_in = 16'h2000;
	#13 encoder_in = 16'h4000;
	#14 encoder_in = 16'h8000;
	#15 encoder_in = 16'h0000;
	#16 $finish;
	end
endmodule
