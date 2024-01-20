module ASynchronous_RAM_TB;

  reg [7:0] data_in;
  reg [9:0] addr;
  reg we, re;
  wire data_out;

  ASynchronous_RAM R1(
    .data_in(data_in),
    .addr(addr),
    .we(we),
    .re(re),
    .data_out(data_out)
  );

  initial 
  begin
    $dumpfile("dump.vcd");
      $dumpvars; 
  end

  initial
  begin
    
    addr = 10'd0;
    re = 1'b1;
    if (re)
      $display("Read Data: %h", data_out);
    #10;
    
     
    data_in = 8'd169;
    addr = 10'd0;
    we = 1'b1;
    re = 1'b0;
    #10;

    data_in = 8'h02;
    addr = 10'd1;
    we = 1'b1;
    re = 1'b0;     
    #10;

    addr = 10'd0;
    we = 1'b0;
    re = 1'b1;
    #10;

    if (re)
      $display("Read Data: %h", data_out);

    addr = 5'd0;
    we = 1'b0;
    re = 1'b1;    
    #10;
  end

  initial
    #90 $stop;
endmodule