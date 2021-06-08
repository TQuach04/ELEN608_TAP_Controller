/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : R-2020.09-SP1
// Date      : Wed Apr 28 07:32:40 2021
/////////////////////////////////////////////////////////////


module soda_machine ( nickel_in, dime_in, quarter_in, clk, rst, nickel_out,
        dime_out, dispense , tdi,tdo,tck,tms,trst_n);
  input nickel_in, dime_in, quarter_in, clk, rst,tdi,tck,tms,trst_n;
  output nickel_out, dime_out, dispense,tdo;
  wire   \U3/U2/Z_0 , n126, N73, N72, N71, N70, N69, N68, N67, \U3/U1/Z_4 ,
         \U3/U1/Z_3 , \U3/U1/Z_2 , n125, \U3/U1/Z_0 , n72, n36, n70, n110, n71,
         n35, n124, n112, n123, n111, n122, n115, n121, n116, n120, n117, n119,
         n114, n118, n113, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, \r24/B_AS_6 ;
  wire   [6:0] cnt;
  wire   [2:0] Nxtstate;
  wire   [4:0] \r24/B_AS ;
  wire   [6:1] \r24/carry ;
  wire nickel_in_core,dime_in_core,quarter_in_core,clk_core,rst_core; 
  wire dispense_core,nickel_out_core,dime_out_core; 
  IBUF2 U1( .A(trst_n), .Z()); 
  IBUF2 U2( .A(tdi), .Z()); 
  IBUF2 U3( .A(tms), .Z()); 
  IBUF2 U4( .A(tck), .Z()); 
  BIDI U5 ( .A(), .E(), .Z(tdo)); 
  
  IBUF2 U6( .A(nickel_in), .Z(nickel_in_core)); 
  IBUF2 U7( .A(dime_in), .Z(dime_in_core)); 
  IBUF2 U8( .A(quarter_in), .Z(quarter_in_core)); 
  IBUF2 U9( .A(clk), .Z(clk_core)); 
  IBUF2 U10( .A(rst), .Z(rst_core)); 

  OBUF2 U11( .A(dispense_core), .Z(dispense) ); 
  OBUF2 U12( .A(nickel_out_core), .Z(nickel_out) ); 
  OBUF2 U13( .A(dime_out_core), .Z(dime_out) ); 

  FD2 \Prst_coreate_reg[0]  ( .D(Nxtstate[0]), .CP(clk_core), .CD(rst_core), .Q(n72), .QN(n36) );
  FD2 \Prst_coreate_reg[1]  ( .D(Nxtstate[1]), .CP(clk_core), .CD(rst_core), .Q(n70), .QN(
        n110) );
  FD2 \Prst_coreate_reg[2]  ( .D(Nxtstate[2]), .CP(clk_core), .CD(rst_core), .Q(n71), .QN(n35) );
  FD2 \cnt_reg[0]  ( .D(n124), .CP(clk_core), .CD(rst_core), .Q(cnt[0]), .QN(n112) );
  FD2 \cnt_reg[1]  ( .D(n123), .CP(clk_core), .CD(rst_core), .Q(cnt[1]), .QN(n111) );
  FD2 \cnt_reg[2]  ( .D(n122), .CP(clk_core), .CD(rst_core), .Q(cnt[2]), .QN(n115) );
  FD2 \cnt_reg[3]  ( .D(n121), .CP(clk_core), .CD(rst_core), .Q(cnt[3]), .QN(n116) );
  FD2 \cnt_reg[4]  ( .D(n120), .CP(clk_core), .CD(rst_core), .Q(cnt[4]), .QN(n117) );
  FD2 \cnt_reg[5]  ( .D(n119), .CP(clk_core), .CD(rst_core), .Q(cnt[5]), .QN(n114) );
  FD2 \cnt_reg[6]  ( .D(n118), .CP(clk_core), .CD(rst_core), .Q(cnt[6]), .QN(n113) );
  MUX21L U61 ( .A(n73), .B(n113), .S(n74), .Z(n118) );
  IV U62 ( .A(N73), .Z(n73) );
  MUX21L U63 ( .A(n75), .B(n114), .S(n74), .Z(n119) );
  IV U64 ( .A(N72), .Z(n75) );
  MUX21L U65 ( .A(n76), .B(n117), .S(n74), .Z(n120) );
  IV U66 ( .A(N71), .Z(n76) );
  MUX21L U67 ( .A(n77), .B(n116), .S(n74), .Z(n121) );
  IV U68 ( .A(N70), .Z(n77) );
  MUX21L U69 ( .A(n78), .B(n115), .S(n74), .Z(n122) );
  IV U70 ( .A(N69), .Z(n78) );
  MUX21L U71 ( .A(n79), .B(n111), .S(n74), .Z(n123) );
  IV U72 ( .A(N68), .Z(n79) );
  MUX21H U73 ( .A(N67), .B(cnt[0]), .S(n74), .Z(n124) );
  NR3 U74 ( .A(dime_out_core), .B(n80), .C(n81), .Z(n74) );
  IV U75 ( .A(n82), .Z(n125) );
  IV U76 ( .A(n83), .Z(n126) );
  ND2 U77 ( .A(n83), .B(n84), .Z(\U3/U2/Z_0 ) );
  AO7 U78 ( .A(dime_out_core), .B(nickel_out_core), .C(n85), .Z(n84) );
  ND2 U79 ( .A(dispense_core), .B(n85), .Z(n83) );
  NR3 U80 ( .A(dime_in_core), .B(nickel_in_core), .C(n86), .Z(\U3/U1/Z_4 ) );
  AO7 U81 ( .A(nickel_in_core), .B(n86), .C(n82), .Z(\U3/U1/Z_3 ) );
  AO6 U82 ( .A(n85), .B(dime_out_core), .C(dime_in_core), .Z(n82) );
  IV U83 ( .A(n81), .Z(n85) );
  NR2 U84 ( .A(dime_in_core), .B(n87), .Z(\U3/U1/Z_2 ) );
  AO6 U85 ( .A(n80), .B(n86), .C(nickel_in_core), .Z(n87) );
  IV U86 ( .A(quarter_in_core), .Z(n86) );
  OR2 U87 ( .A(nickel_out_core), .B(dispense_core), .Z(n80) );
  AO6 U88 ( .A(n88), .B(n89), .C(dime_in_core), .Z(\U3/U1/Z_0 ) );
  IV U89 ( .A(nickel_out_core), .Z(n89) );
  AN3 U90 ( .A(n35), .B(n70), .C(n36), .Z(nickel_out_core) );
  NR2 U91 ( .A(quarter_in_core), .B(nickel_in_core), .Z(n88) );
  NR4 U92 ( .A(n36), .B(n71), .C(n70), .D(n90), .Z(Nxtstate[2]) );
  ND2 U93 ( .A(n91), .B(n92), .Z(Nxtstate[1]) );
  AO2 U94 ( .A(n93), .B(dispense_core), .C(n94), .D(dime_out_core), .Z(n91) );
  IV U95 ( .A(n95), .Z(n94) );
  ND2 U96 ( .A(n92), .B(n96), .Z(Nxtstate[0]) );
  OR3 U97 ( .A(n71), .B(n70), .C(n97), .Z(n96) );
  MUX21L U98 ( .A(n90), .B(n81), .S(n36), .Z(n97) );
  OR3 U99 ( .A(quarter_in_core), .B(nickel_in_core), .C(dime_in_core), .Z(n81) );
  IV U100 ( .A(n98), .Z(n90) );
  AO1 U101 ( .A(n115), .B(n99), .C(n114), .D(n113), .Z(n98) );
  AN2 U102 ( .A(n116), .B(n117), .Z(n99) );
  AN2 U103 ( .A(n100), .B(n101), .Z(n92) );
  AO3 U104 ( .A(cnt[0]), .B(n102), .C(n103), .D(dispense_core), .Z(n101) );
  AN3 U105 ( .A(n36), .B(n71), .C(n110), .Z(dispense_core) );
  IV U106 ( .A(n93), .Z(n103) );
  NR3 U107 ( .A(n115), .B(n112), .C(n104), .Z(n93) );
  IV U108 ( .A(n105), .Z(n104) );
  ND2 U109 ( .A(n105), .B(n115), .Z(n102) );
  AN3 U110 ( .A(n106), .B(n116), .C(n111), .Z(n105) );
  AO3 U111 ( .A(n107), .B(n108), .C(n95), .D(dime_out_core), .Z(n100) );
  AN3 U112 ( .A(n72), .B(n70), .C(n35), .Z(dime_out_core) );
  OR3 U113 ( .A(n115), .B(n112), .C(n107), .Z(n95) );
  ND2 U114 ( .A(n112), .B(n115), .Z(n108) );
  OR3 U115 ( .A(n116), .B(n111), .C(n109), .Z(n107) );
  IV U116 ( .A(n106), .Z(n109) );
  AN3 U117 ( .A(n114), .B(n117), .C(n113), .Z(n106) );
  EO \r24/U6  ( .A(\U3/U1/Z_0 ), .B(\U3/U2/Z_0 ), .Z(\r24/B_AS [0]) );
  EO \r24/U5  ( .A(n125), .B(\U3/U2/Z_0 ), .Z(\r24/B_AS [1]) );
  EO \r24/U4  ( .A(\U3/U1/Z_2 ), .B(\U3/U2/Z_0 ), .Z(\r24/B_AS [2]) );
  EO \r24/U3  ( .A(\U3/U1/Z_3 ), .B(\U3/U2/Z_0 ), .Z(\r24/B_AS [3]) );
  EO \r24/U2  ( .A(\U3/U1/Z_4 ), .B(\U3/U2/Z_0 ), .Z(\r24/B_AS [4]) );
  EO \r24/U1  ( .A(\U3/U2/Z_0 ), .B(n126), .Z(\r24/B_AS_6 ) );
  FA1A \r24/U1_0  ( .A(cnt[0]), .B(\r24/B_AS [0]), .CI(\U3/U2/Z_0 ), .CO(
        \r24/carry [1]), .S(N67) );
  FA1A \r24/U1_1  ( .A(cnt[1]), .B(\r24/B_AS [1]), .CI(\r24/carry [1]), .CO(
        \r24/carry [2]), .S(N68) );
  FA1A \r24/U1_2  ( .A(cnt[2]), .B(\r24/B_AS [2]), .CI(\r24/carry [2]), .CO(
        \r24/carry [3]), .S(N69) );
  FA1A \r24/U1_3  ( .A(cnt[3]), .B(\r24/B_AS [3]), .CI(\r24/carry [3]), .CO(
        \r24/carry [4]), .S(N70) );
  FA1A \r24/U1_4  ( .A(cnt[4]), .B(\r24/B_AS [4]), .CI(\r24/carry [4]), .CO(
        \r24/carry [5]), .S(N71) );
  FA1A \r24/U1_5  ( .A(cnt[5]), .B(\r24/B_AS_6 ), .CI(\r24/carry [5]), .CO(
        \r24/carry [6]), .S(N72) );
  EO3P \r24/U1_6  ( .A(cnt[6]), .B(\r24/B_AS_6 ), .C(\r24/carry [6]), .Z(N73)
         );
endmodule
