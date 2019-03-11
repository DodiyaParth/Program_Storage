module reg_file(regRNum1,regRNum2,wReg,Data,RegWrite,reset,clk,rData1,rData2);

	input [4:0]regRNum1,regRNum2,wReg;				
	input [63:0]Data;									
	input RegWrite,reset,clk;							
	output [63:0]rData1,rData2;							
	integer k;
	reg [63:0] regFile[0:31];							




	assign rData1=regFile[regRNum1];
	assign rData2=regFile[regRNum2];

	always@(posedge clk)
	begin	
		if(reset)
		begin
			for(k=0;k<32;k=k+1)
			begin
				regFile[k] <= 64'b0;					
			end
		end
		else
		begin
			if(RegWrite)
			begin
				regFile[wReg] <= Data;
			end
		end
	end

endmodule
	