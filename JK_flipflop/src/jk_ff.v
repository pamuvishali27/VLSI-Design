`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 20:34:24
// Design Name: 
// Module Name: jk_ff
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


//jk flipflop blocking assignment
module sr_ff(input wire j,k,clk,rst,output reg q, qb);
always @(posedge clk)
begin 
 if(j == 0 && k ==0)
 begin 
 q = q;
qb =qb;

 end

 else if (j == 0 && k ==1)
  begin 
    q = 0;
    qb = 1;
    
  end 
  
  else if ( j == 1 && k == 0)
   begin 
      q = 1;
      qb = 0;
     
   end
 else if ( j == 1 && k == 1)
   begin 
      q = ~q;
      qb = ~qb;
     
   end
end
endmodule

//jk flipflop nonblocking assignment
/*module sr_ff(input wire j,k,clk,rst,output reg q, qb);
always @(posedge clk)
begin 
 if(j == 0 && k ==0)
 begin 
 q <= q;
qb <=qb;

 end

 else if (j == 0 && k ==1)
  begin 
    q <= 0;
    qb <= 1;
    
  end 
  
  else if ( j == 1 && k == 0)
   begin 
      q <= 1;
      qb <= 0;
     
   end
 else if ( j == 1 && k == 1)
   begin 
      q <= ~q;
      qb <= ~qb;
     
   end
end

endmodule*/