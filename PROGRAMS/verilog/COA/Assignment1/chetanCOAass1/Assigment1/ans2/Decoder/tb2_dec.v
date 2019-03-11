`include "prog2_dec.v"

module tb2_dec;
reg [3:0] binary_in;
reg enable;
wire [15:0] decoder_out;

decoder A (binary_in,decoder_out,enable);

always begin
	binary_in = 0000;
	enable = 0;
	$monitor("Output = %b",decoder_out);
	#1 binary_in = 0001;
	#2 binary_in = 0010;
	#3 binary_in = 0011;
	#4 binary_in = 0100;
	#5 binary_in = 0101;
	#6 binary_in = 0110;
	#7 binary_in = 0111;
	#8 binary_in = 1000;
	#9 binary_in = 1001;
	#10 binary_in = 1010;
	#11 binary_in = 1011;
	#12 binary_in = 1100;
	#13 binary_in = 1101;
	#14 binary_in = 1110;
	#15 binary_in = 1111;
	#16 enable = 1;
	binary_in =0000;
	#17 binary_in = 0001;
	#18 binary_in = 0010;
	#19 binary_in = 0011;
	#20 binary_in = 0100;
	#21 binary_in = 0101;
	#22 binary_in = 0110;
	#23 binary_in = 0111;
	#24 binary_in = 1000;
	#25 binary_in = 1001;
	#26 binary_in = 1010;
	#27 binary_in = 1011;
	#28 binary_in = 1100;
	#29 binary_in = 1101;
	#20 binary_in = 1110;
	#31 binary_in = 1111;
	#32 $finish;
end
endmodule
