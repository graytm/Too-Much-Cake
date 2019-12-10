//module Random(clk, randX, randY,update);
//input clk, update;
//output reg [9:0] randX = 10'd70;
//output reg [8:0] randY = 9'd90;
//
//always@(posedge clk)
//	begin
//	randX= randX + 10'd30;
//	if(randX >= 10'd570)
//		begin
//		randX = 10'd40 ;
//		end
//	end
//	
//	always @(posedge update)
//	begin
//	randY=randY + 9'd20 ;
//	if(randY >= 9'd400)
//		begin
//		randY = 9'd40 ;
//		end
//	end
//	
//	
//	
//endmodule


//reg [9:0] i=0;
//reg [9:0] j=450;
//
//always @ (posedge clk)
//		begin
//			if (i<610)
//				i <= i+1'b1;
//			else
//				i <= 10'b0;
//			end
//			
//always @ (posedge clk)
//		begin
//			if (j>0)
//				j <= j+1'b1;
//			else
//				j <= 10'd480;
//			end	
//			
//			always @ (i,j)
//		begin
//			randX <= i;
//			randY <= j;
//			end	
//			
//endmodule 