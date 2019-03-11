module decoder(bin,out);
input [0:2]bin;
output reg [0:7]out;
integer i;
always
	begin
		for(i=0;i<=7;i=i+1)
		begin
			out[i]=0;
		end
		out[bin]<=1;
		#5 $finish;
	end

endmodule