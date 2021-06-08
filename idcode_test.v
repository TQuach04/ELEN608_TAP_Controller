
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

//Switch to Bypass Mode
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);    // Test-Logic-Reset
tms <= 1'b0; @(posedge tck);   // Shift-DR
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b0; @(posedge tck);
tms <= 1'b0; @(posedge tck);

//insert 4-bit instruction code here
tdi <= 1'b1; @(posedge tck);
tdi <= 1'b1; @(posedge tck);
tdi <= 1'b1; @(posedge tck);
tdi <= 1'b1; tms <= 1'b1; @(posedge tck);

tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b0; @(posedge tck);
tms <= 1'b0; @(posedge tck);

//Switch to IDCODE Mode
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);    // Test-Logic-Reset
tms <= 1'b0; @(posedge tck);   // Shift-DR
tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b0; @(posedge tck);
tms <= 1'b0; @(posedge tck);

//insert 4-bit instruction code here
tdi <= 1'b1; @(posedge tck);
tdi <= 1'b1; @(posedge tck);
tdi <= 1'b0; @(posedge tck);
tdi <= 1'b1; tms <= 1'b1; @(posedge tck);

tms <= 1'b1; @(posedge tck);
tms <= 1'b1; @(posedge tck);
tms <= 1'b0; @(posedge tck);
tms <= 1'b0; @(posedge tck);

for (int i=0;i<32;i++)
  begin
    @(posedge tck)
    IDCODE[i]<= tdo;
  end
$display("IDCODE is %h",IDCODE);

$finish;
end

endmodule
