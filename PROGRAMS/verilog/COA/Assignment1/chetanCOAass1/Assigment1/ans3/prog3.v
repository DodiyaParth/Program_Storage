module half_add(
a	,//first input
b	,//second input
sum	,//sum output
co	//carry output
);

// input declaration
input a;
input b;

//output declaration
output sum;
output co;

//port data types
wire a;
wire b;
wire sum;
wire co;

//code starts
assign {co,sum} = a+b;

endmodule //End of module
