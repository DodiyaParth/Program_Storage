`include "decoder.v"
module dec_tb();
reg [0:2]in;
wire [0:7]out;
decoder A(in,out);

initial
	begin
		in=3'b1;
		$monitor("%8b",out);
	end


endmodule