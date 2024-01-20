module ASynchronous_RAM(
  input [7:0] data_in, 
  input [9:0] addr,
  input we,re,
  output [7:0] data_out 
);
  
  reg [7:0] RAM [1023:0]; 
  reg [9:0] addr_reg; 
 
  always @ (addr or we or re or data_in)
    begin
      if(we && !re)
        RAM[addr] <= data_in;
      else if (!we && re)
        addr_reg <= addr; 
    end
 
  assign data_out = RAM[addr_reg];
  
endmodule