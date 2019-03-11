`include "decoder.v"
module decoder_tb;
reg [0:3]ip=4'b0000;
wire [0:15]op;
decoder dc(ip,op);
initial
	begin
		$dumpfile("decoder.vcd");
		$dumpvars(0,decoder_tb);
		$display("input    output\n");
		$monitor("%b     %b",ip,op);
		#5 ip=4'b 0001;
		#5 ip=4'b 0010;
		#5 ip=4'b 0011;
		#5 ip=4'b 0100;
		#5 ip=4'b 0101;
		#5 ip=4'b 0110;
		#5 ip=4'b 0111;
		#5 ip=4'b 1000;
		#5 ip=4'b 1001;
		#5 ip=4'b 1010;
		#5 ip=4'b 1011;
		#5 ip=4'b 1100;
		#5 ip=4'b 1101;
		#5 ip=4'b 1110;
		#5 ip=4'b 1111;
		#5
		$finish;
	end
endmodule