module compare(
    input clk,
    input [25:0] final0,
    input [25:0] final1,
    input [25:0] final2,
    input [25:0] final3,
    input [25:0] final4,
    input [25:0] final5,
    input [25:0] final6,
    input [25:0] final7,
    input [25:0] final8,
    input [25:0] final9,
    output reg [3:0] Image_Number
);

    reg [25:0] compare_0,compare_1,compare_2,compare_3,compare_4;
    reg [3:0] index_0,index_1,index_2,index_3,index_4;
    always @(posedge clk) begin
		if(final0>final1) begin
			compare_0<=final0;
			index_0<=0;
		end else begin
			compare_0<=final1;
			index_0<=1;
		end
	end
	always @(posedge clk) begin
		if(final2>final3) begin
			compare_1<=final2;
			index_1<=2;
		end else begin
			compare_1<=final3;
			index_1<=3;
		end
	end
	always @(posedge clk) begin
		if(final4>final5) begin
			compare_2<=final4;
			index_2<=4;
		end else begin
			compare_2<=final5;
			index_2<=5;
		end
	end
	always @(posedge clk) begin
		if(final6>final7) begin
			compare_3<=final6;
			index_3<=6;
		end else begin
			compare_3<=final7;
			index_3<=7;
		end
	end
	always @(posedge clk) begin
		if(final8>final9) begin
			compare_4<=final8;
			index_4<=8;
		end else begin
			compare_4<=final9;
			index_4<=9;
		end
	end
    reg [25:0] compareII_0,compareII_1;
    reg [3:0] indexII_0,indexII_1;
    always @(posedge clk) begin
		if(compare_0>compare_1) begin
			compareII_0<=compare_0;
			indexII_0<=index_0;
		end else begin
			compareII_0<=compare_1;
			indexII_0<=index_1;
		end
	end
	always @(posedge clk) begin
		if(compare_2>compare_3) begin
			compareII_1<=compare_2;
			indexII_1<=index_2;
		end else begin
			compareII_1<=compare_3;
			indexII_1<=index_3;
		end
	end   
    reg [25:0] compareIII_0;
    reg [3:0] indexIII_0; 
    always @(posedge clk) begin
		if(compareII_0>compareII_1) begin
			compareIII_0<=compareII_0;
			indexIII_0<=indexII_0;
		end else begin
			compareIII_0<=compareII_1;
			indexIII_0<=indexII_1;
		end
	end

    always @(posedge clk) begin
		if(compareIII_0>compare_4) begin
			Image_Number<=indexIII_0;
		end else begin
			Image_Number<=index_4;
		end
	end
endmodule