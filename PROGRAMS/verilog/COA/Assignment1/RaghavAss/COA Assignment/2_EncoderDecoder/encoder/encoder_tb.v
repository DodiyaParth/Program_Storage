`include "encoder.v"
module encoder_tb;
wire [0:3]op;
reg [0:15]ip=1000000000000000;
encoder ec(ip,op);
initial
	begin
		$dumpfile("encoder.vcd");
		$dumpvars(0,encoder_tb);
		$display("input              output\n");
		$monitor("%b    %b",ip,op);
		#5 ip=16'b 0100000000000000;
		#5 ip=16'b 0010000000000000;
		#5 ip=16'b 0001000000000000;
		#5 ip=16'b 0000100000000000;
		#5 ip=16'b 0000010000000000;
		#5 ip=16'b 0000001000000000;
		#5 ip=16'b 0000000100000000;
		#5 ip=16'b 0000000010000000;
		#5 ip=16'b 0000000001000000;
		#5 ip=16'b 0000000000100000;
		#5 ip=16'b 0000000000010000;
		#5 ip=16'b 0000000000001000;
		#5 ip=16'b 0000000000000100;
		#5 ip=16'b 0000000000000010;
		#5 ip=16'b 0000000000000001;
		$finish;
	end
endmodule