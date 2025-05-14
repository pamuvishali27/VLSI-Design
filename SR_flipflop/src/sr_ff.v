`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 20:07:39
// Design Name: 
// Module Name: sr_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//sr flipflop blocking assignment
/*module sr_ff(input wire s,r,clk,rst,output reg q,output qb);
always @(posedge clk)
begin 
 if(s == 1)
 begin 
 q = 1;

 end

 else if (r == 1)
  begin 
    q = 0;
    
  end 
  
  else if ( s == 0 & r == 0)
   begin 
      q = q;
     
   end

end
assign qb =~q; 
endmodule*/

//sr flipflop nonblocking assignment
module sr_ff(input wire s,r,clk,rst,output reg q,output qb);
always @(posedge clk)
begin 
 if(s == 1)
 begin 
 q <= 1;

 end

 else if (r == 1)
  begin 
    q <= 0;
    
  end 
  
  else if ( s == 0 & r == 0)
   begin 
      q <= q;
     
   end

end
assign qb =~q; 
endmodule
