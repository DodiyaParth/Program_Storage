/**
*	Module for 4:16 decoder
*	By: Omkar Prabhu 16CO233
*	13th October 2017
*/

module decoder (output reg [0:15] out, input [0:3] in);

	// thread to decode input
	always @ (in) begin
		// check which input and give corresponding output
		case (in) 
			4'b0000 : out = 16'b0000000000000001; 
			4'b0001 : out = 16'b0000000000000010; 
			4'b0010 : out = 16'b0000000000000100; 
			4'b0011 : out = 16'b0000000000001000; 
			4'b0100 : out = 16'b0000000000010000; 
			4'b0101 : out = 16'b0000000000100000; 
			4'b0110 : out = 16'b0000000001000000; 
			4'b0111 : out = 16'b0000000010000000; 
			4'b1000 : out = 16'b0000000100000000; 
			4'b1001 : out = 16'b0000001000000000; 
			4'b1010 : out = 16'b0000010000000000; 
			4'b1011 : out = 16'b0000100000000000; 
			4'b1100 : out = 16'b0001000000000000; 
			4'b1101 : out = 16'b0010000000000000; 
			4'b1110 : out = 16'b0100000000000000; 
			4'b1111 : out = 16'b1000000000000000;
			default: out = 16'b0000000000000000; 
		endcase
		
	end


endmodule
