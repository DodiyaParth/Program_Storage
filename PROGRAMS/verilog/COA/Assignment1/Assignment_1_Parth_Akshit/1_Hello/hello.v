module hello;
integer k;
initial begin
	for(k=0;k<100;k=k+1)
		#1 $display("Hello world  timeStamp:%3d",$time);
    $finish;
	end
endmodule	