module dm(address,write_data,mem_read,mem_write,read_data);

	input [6:0]address;
	input [63:0]write_data;
	input mem_write,mem_read;
	output reg [63:0]read_data;
	reg[63:0] mem[0:127];
	
	
	//assign read_data=mem[address];
	
	always@(mem_read,mem_write) 
	begin
		//$display("%d %d",mem_read,mem_write);
		if (mem_read==1)
			begin
				read_data<= mem[address];
			end
		if (mem_write==1)
			begin
				mem[address]<= write_data;
			end
	end
	
	
endmodule