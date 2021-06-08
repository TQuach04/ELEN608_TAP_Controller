
`timescale 1ns/ 1ps
module testbench();

reg clk,rst;
//integer index=0;
//reg [31:0] n2=32'b0000_0000_0000_0000_0010_0010_0000_0010;
//reg [32:0] d2=32'b0000_0000_0011_0000_0000_1111_1111_1111;
//reg [31:0] q2=32'b0000_0000_0000_0000_1000_0000_0010_1000;
reg  d2=1;
reg  n2=1;
reg  q2=1;
wire n_out,d_out,dispense;
bit tdi, tdo, tck, tms, trst_n;
bit [31:0] IDCODE;

soda_machine dut(n2,d2,q2,clk,rst,n_out,d_out,dispense,
	tdi, tdo, tck, tms, trst_n);

//always #5 clk = !clk;
always #5 tck = !tck;

//initial clk=1;
initial begin
clk=1; rst=1; tms=1;
trst_n<=0; @(posedge tck)
trst_n<=1; @(posedge tck)

tms<=1; @(posedge tck);
tms<=1; @(posedge tck);
tms<=1; @(posedge tck);
tms<=1; @(posedge tck);
tms<=1; @(posedge tck);
tms<=1; @(posedge tck);
tms<=0; @(posedge tck);
repeat(100) begin @(posedge tck) tdi<=0; end


$finish;
end




//@(posedge clk) rst=0;
//@(posedge clk) rst=1;
//repeat(32) @(posedge clk) index<=index+1; $finish; end

//initial force dut.n109 = 0;

endmodule
//`include "gate.v"
