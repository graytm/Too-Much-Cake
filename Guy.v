module Guy(clk, rst, up, down, left, right, update, xLength, yLength, Guy);

input clk, rst;
input up, down, left, right, update;
input [9:0] xLength;
input [9:0] yLength;
output Guy;

reg Guy;
wire rst;

reg [9:0] GuyX[0:31];
reg [8:0] GuyY[0:31];

wire [9:0] xLength;
wire [9:0] yLength;


//establishes size of guy at 15 x 15
always@(posedge clk)
	begin
		Guy = (xLength > GuyX[0] && xLength < (GuyX[0]+10'd15)) && (yLength > GuyY[0] && yLength < (GuyY[0]+10'd15));
	end	

	
reg [2:0]S;
reg [2:0]NS;


//creates states for key presses/directions
parameter Go_up = 3'd0,
		Go_down = 3'd1,
		Go_left = 3'd2,
		Go_right = 3'd3,
		Stay = 3'hF;
		
always @(posedge update)
begin
	if (rst ==1'b1)
		S <= Stay;
	else
		S <= NS;
			
end

always@(*)
		case(S)
			Go_up:
				begin
					if (up == 1'b0)
						NS = Go_up;
					else
						NS = Stay;
				end
				
			Go_down:
				begin
					if (down == 1'b0)
						NS = Go_down;
					else
						NS = Stay;
				end
				
			Go_left:
				begin
					if (left == 1'b0)
						NS = Go_left;
					else
						NS = Stay;
				end
				
			Go_right:
				begin
					if (right == 1'b0)
						NS = Go_right;
					else
						NS = Stay;
				end
				
			Stay:
				begin
					if (up == 1'b0)
						NS = Go_up;
					else if (down == 1'b0)
						NS = Go_down;
					else if (left == 1'b0)
						NS = Go_left;
					else if (right == 1'b0)
						NS = Go_right;
					else
						NS = Stay;
				end
		endcase
		
//controls speed of Guy for each directional key
always@(posedge update)
		begin
			if (rst == 1'b1)
				begin
					GuyX[0] <= 10'd305;
					GuyY[0] <= 9'd200;
				end
			else
				case(S)
					Go_up:
						GuyY[0] <= (GuyY[0]-9'd3);
					Go_down:
						GuyY[0] <= (GuyY[0]+9'd3);
					Go_left:
						GuyX[0] <= (GuyX[0]-10'd3);
					Go_right:
						GuyX[0] <= (GuyX[0]+10'd3);
					Stay:
						begin
							GuyY[0] <= GuyY[0];
							GuyX[0] <= GuyX[0];
						end
				endcase
		end

endmodule 