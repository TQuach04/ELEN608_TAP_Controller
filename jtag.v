`timescale 1ns/ 1ps

/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : Q-2019.12-SP1
// Date      : Mon Jun  7 02:40:05 2021
/////////////////////////////////////////////////////////////



    module soda_machine_DW_tap_uc_width4_id1_idcode_opcode11_version1_part2_man_num3_sync_mode1_tst_mode1 ( 
        tck, trst_n, tms, tdi, so, bypass_sel, sentinel_val, device_id_sel, 
        user_code_sel, user_code_val, ver, ver_sel, part_num, part_num_sel, 
        mnfr_id, mnfr_id_sel, clock_dr, shift_dr, update_dr, tdo, tdo_en, 
        tap_state, instructions, sync_capture_en, sync_update_dr, test );
  input [2:0] sentinel_val;
  input [31:0] user_code_val;
  input [3:0] ver;
  input [15:0] part_num;
  input [10:0] mnfr_id;
  output [15:0] tap_state;
  bit [15:0] x;
  assign x = {
	tap_state[9],
	tap_state[8],
	tap_state[7],
	tap_state[6],
	tap_state[5],
	tap_state[4],
	tap_state[3],
	tap_state[2],
	tap_state[1],
	tap_state[15],
	tap_state[14],
	tap_state[13],
	tap_state[12],
	tap_state[11],
	tap_state[10],
	tap_state[0]};
  reg [255:0] tap; 
  always @(x) begin
  //  $display("tap_state is %h",tap_state); 
  case (x)
    16'b0000000000000001:tap="Test-Logic-Reset";
    16'b0000000010000000:tap="Run-Test/Idle";
    16'b0000000100000000:tap="Select-DR-Scan";
    16'b0000001000000000:tap="Capture-DR";
    16'b0000010000000000:tap="Shift-DR";
    16'b0000100000000000:tap="Exit1-DR";
    16'b0001000000000000:tap="Pause-DR";
    16'b0010000000000000:tap="Exit2-DR";
    16'b0100000000000000:tap="Update-DR";
    16'b1000000000000000:tap="Select-IR-Scan";
    16'b0000000000000010:tap="Capture-IR";
    16'b0000000000000100:tap="Shift-IR";
    16'b0000000000001000:tap="Exit1-IR";
    16'b0000000000010000:tap="Pause-IR";
    16'b0000000000100000:tap="Exit2-IR";
    16'b0000000001000000:tap="Update-IR";
   endcase
   end
  output [3:0] instructions;
  input tck, trst_n, tms, tdi, so, bypass_sel, device_id_sel, user_code_sel,
         ver_sel, part_num_sel, mnfr_id_sel, test;
  output clock_dr, shift_dr, update_dr, tdo, tdo_en, sync_capture_en,
         sync_update_dr;
  wire   tck_inv, test_n, sel_tck, sel_tck_inv, tck_n, instr_rst, dr_sel_int,
         shift_ir_int, instr_so, byp_so, id_so, tdo_ffin, \U7/U4_31/ffin ,
         \U7/U4_30/ffin , \U7/U4_29/ffin , \U7/U4_28/ffin , \U7/U3_27/ffin ,
         \U7/U3_26/ffin , \U7/U3_25/ffin , \U7/U3_24/ffin , \U7/U3_23/ffin ,
         \U7/U3_22/ffin , \U7/U3_21/ffin , \U7/U3_20/ffin , \U7/U3_19/ffin ,
         \U7/U3_18/ffin , \U7/U3_17/ffin , \U7/U3_16/ffin , \U7/U3_15/ffin ,
         \U7/U3_14/ffin , \U7/U3_13/ffin , \U7/U3_12/ffin , \U7/U2_11/ffin ,
         \U7/U2_10/ffin , \U7/U2_9/ffin , \U7/U2_8/ffin , \U7/U2_7/ffin ,
         \U7/U2_6/ffin , \U7/U2_5/ffin , \U7/U2_4/ffin , \U7/U2_3/ffin ,
         \U7/U2_2/ffin , \U7/U2_1/ffin , \U7/U1/ffin , \U6/ffin ,
         \U5/U1_3/ffin , \U5/U1_2/ffin , \U5/U1_1/ffin , \U5/U1_0/ffin ,
         \U5/net3 , \U5/rst_n , \U5/instruction_shift[1] ,
         \U5/instruction_shift[2] , \U5/instruction_shift[3] , \U1/N18 ,
         \U1/net41 , \U1/dr_sel_int_next , net595, net594, net593, net592,
         net591, net590, net589, net588, net587, net586, net585, net584,
         net583, net582, net581, net580, net579, net578, net577, net576,
         net575, net574, net573, net572, net571, net570, net569, net568,
         net567, net566, net565, net564, net563, net562, net561, net560,
         net559, net558, net557, net556, net555, net554, net553, net552,
         net551, net550, net549, net548, net547, net546, net545, net544,
         net543, net542, net541, net540, net539, net538, net537, net536,
         net535, net534, net533, net532, net531, net530, net529, net528,
         net527, net526, net525, net524, net523, net522, net521, net520,
         net519, net518, net517, net516, net515, net514, net513, net512,
         net511, net510, net509, net508, net507, net506, net505, net504,
         net503, net502, net501, net500, net499, net498, net497, net496,
         net495, net494, net493, net492, net491, net490, net489, net488,
         net487, net486, net485, net484, net483, net482, net481, net480,
         net479, net478, net477, net476, net475, net474, net473, net472,
         net471, net470, net469, net468, net467, net466, net465, net464,
         net463, net462, net461, net460, net459, net458, net457, net456,
         net455, net454, net453, net452, net451, net450, net449, net448,
         net447, net446, net445, net444, net443, net442, net441, net662;
  wire   [31:1] \U7/temp_so ;
  wire   [3:0] \U5/ff_d ;
  wire   [15:0] \U1/next_state ;
  assign sync_update_dr = net662;

  ND2P \U1/U10  ( .A(\U1/net41 ), .B(trst_n), .Z(instr_rst) );
  ND2P U_CS_5 ( .A(sel_tck), .B(sel_tck_inv), .Z(tck_n) );
  ND2P U_CS_4 ( .A(tck_inv), .B(test_n), .Z(sel_tck_inv) );
  ND2P U_CS_3 ( .A(tck), .B(test), .Z(sel_tck) );
  IVAP U_CS_2 ( .A(test), .Z(test_n) );
  IVAP U_CS_1 ( .A(tck), .Z(tck_inv) );
  IV \*cell*613  ( .A(trst_n), .Z(\U1/N18 ) );
  NR2 \*cell*608  ( .A(tap_state[14]), .B(tap_state[13]), .Z(net577) );
  AN3 \*cell*607  ( .A(net530), .B(net573), .C(net577), .Z(net558) );
  AN3 \*cell*606  ( .A(net583), .B(net585), .C(net558), .Z(net565) );
  NR2 \*cell*605  ( .A(tap_state[11]), .B(tap_state[10]), .Z(net584) );
  ND3 \*cell*604  ( .A(net565), .B(net584), .C(tap_state[4]), .Z(net594) );
  IV \*cell*603  ( .A(net584), .Z(net541) );
  IV \*cell*602  ( .A(net565), .Z(net595) );
  NR3 \*cell*601  ( .A(net541), .B(tap_state[4]), .C(net595), .Z(net570) );
  IV \*cell*600  ( .A(net570), .Z(net590) );
  MUX21L \*cell*599  ( .A(net594), .B(net590), .S(tap_state[3]), .Z(net591) );
  NR2 \*cell*598  ( .A(tap_state[8]), .B(tap_state[7]), .Z(net561) );
  IV \*cell*597  ( .A(net561), .Z(net593) );
  OR3 \*cell*596  ( .A(tap_state[6]), .B(tap_state[9]), .C(net593), .Z(net587)
         );
  OR3 \*cell*595  ( .A(tap_state[2]), .B(tap_state[5]), .C(net587), .Z(net586)
         );
  IV \*cell*594  ( .A(net586), .Z(net592) );
  ND2 \*cell*593  ( .A(net591), .B(net592), .Z(net547) );
  NR3 \*cell*592  ( .A(tap_state[3]), .B(tap_state[5]), .C(net590), .Z(net559)
         );
  IV \*cell*591  ( .A(net559), .Z(net589) );
  NR3 \*cell*590  ( .A(tap_state[2]), .B(tap_state[9]), .C(net589), .Z(net574)
         );
  ND4 \*cell*587  ( .A(tap_state[7]), .B(net574), .C(net588), .D(net580), .Z(
        net545) );
  AO6 \*cell*586  ( .A(net547), .B(net545), .C(tms), .Z(\U1/next_state [4]) );
  IV \*cell*585  ( .A(net587), .Z(net568) );
  ND3 \*cell*584  ( .A(net568), .B(net559), .C(tap_state[2]), .Z(net542) );
  NR2 \*cell*583  ( .A(net542), .B(tms), .Z(\U1/next_state [3]) );
  NR2 \*cell*582  ( .A(\U1/next_state [4]), .B(\U1/next_state [3]), .Z(
        \U1/dr_sel_int_next ) );
  NR3 \*cell*581  ( .A(tap_state[3]), .B(tap_state[4]), .C(net586), .Z(net567)
         );
  AN3 \*cell*580  ( .A(net584), .B(net585), .C(net567), .Z(net557) );
  AN3 \*cell*579  ( .A(tap_state[15]), .B(net583), .C(net557), .Z(net582) );
  AN3 \*cell*578  ( .A(net583), .B(net530), .C(net557), .Z(net571) );
  MUX21H \*cell*577  ( .A(net582), .B(net571), .S(tap_state[1]), .Z(net578) );
  IV \*cell*576  ( .A(net574), .Z(net581) );
  NR4 \*cell*575  ( .A(net580), .B(net581), .C(tap_state[6]), .D(tap_state[7]), 
        .Z(net579) );
  AO6 \*cell*574  ( .A(net577), .B(net578), .C(net579), .Z(net548) );
  ND4 \*cell*572  ( .A(tap_state[13]), .B(net571), .C(net576), .D(net573), .Z(
        net552) );
  NR2 \*cell*571  ( .A(tap_state[0]), .B(net541), .Z(net575) );
  ND4 \*cell*570  ( .A(tap_state[12]), .B(net567), .C(net575), .D(net558), .Z(
        net550) );
  ND3 \*cell*569  ( .A(net574), .B(net561), .C(tap_state[6]), .Z(net546) );
  ND4 \*cell*567  ( .A(tap_state[14]), .B(net571), .C(net572), .D(net573), .Z(
        net551) );
  AN3 \*cell*566  ( .A(net550), .B(net546), .C(net551), .Z(net562) );
  NR2 \*cell*565  ( .A(tap_state[3]), .B(tap_state[2]), .Z(net569) );
  ND4 \*cell*564  ( .A(tap_state[5]), .B(net568), .C(net569), .D(net570), .Z(
        net544) );
  AN2 \*cell*563  ( .A(net545), .B(net544), .Z(net564) );
  EO \*cell*562  ( .A(tap_state[11]), .B(tap_state[10]), .Z(net566) );
  ND3 \*cell*561  ( .A(net565), .B(net566), .C(net567), .Z(net553) );
  AN4 \*cell*560  ( .A(net564), .B(net542), .C(net547), .D(net553), .Z(net563)
         );
  ND4 \*cell*559  ( .A(net548), .B(net552), .C(net562), .D(net563), .Z(net555)
         );
  IV \*cell*558  ( .A(tms), .Z(net543) );
  NR2 \*cell*557  ( .A(tap_state[6]), .B(tap_state[2]), .Z(net560) );
  ND4 \*cell*556  ( .A(tap_state[9]), .B(net559), .C(net560), .D(net561), .Z(
        net554) );
  ND3 \*cell*555  ( .A(net557), .B(net558), .C(tap_state[0]), .Z(net549) );
  ND2 \*cell*554  ( .A(net554), .B(net549), .Z(net556) );
  MUX21L \*cell*553  ( .A(net555), .B(net543), .S(net556), .Z(
        \U1/next_state [0]) );
  NR2 \*cell*552  ( .A(tms), .B(net554), .Z(\U1/next_state [10]) );
  AO6 \*cell*551  ( .A(net551), .B(net553), .C(tms), .Z(\U1/next_state [11])
         );
  NR2 \*cell*550  ( .A(net543), .B(net553), .Z(\U1/next_state [12]) );
  AO6 \*cell*549  ( .A(net550), .B(net552), .C(tms), .Z(\U1/next_state [13])
         );
  NR2 \*cell*548  ( .A(net543), .B(net552), .Z(\U1/next_state [14]) );
  AO6 \*cell*547  ( .A(net550), .B(net551), .C(net543), .Z(\U1/next_state [15]) );
  AO6 \*cell*546  ( .A(net548), .B(net549), .C(tms), .Z(\U1/next_state [1]) );
  NR2 \*cell*545  ( .A(net548), .B(net543), .Z(\U1/next_state [2]) );
  NR2 \*cell*544  ( .A(net543), .B(net547), .Z(\U1/next_state [5]) );
  AO6 \*cell*543  ( .A(net544), .B(net546), .C(tms), .Z(\U1/next_state [6]) );
  NR2 \*cell*542  ( .A(net543), .B(net546), .Z(\U1/next_state [7]) );
  AO6 \*cell*541  ( .A(net544), .B(net545), .C(net543), .Z(\U1/next_state [8])
         );
  NR2 \*cell*540  ( .A(net542), .B(net543), .Z(\U1/next_state [9]) );
  NR2 \*cell*539  ( .A(net541), .B(shift_ir_int), .Z(net538) );
  IV \*cell*538  ( .A(net538), .Z(net532) );
  MUX21L \*cell*537  ( .A(instr_so), .B(\U5/instruction_shift[1] ), .S(net532), 
        .Z(net539) );
  NR2 \*cell*536  ( .A(net538), .B(shift_ir_int), .Z(net535) );
  IV \*cell*535  ( .A(net535), .Z(net540) );
  ND2 \*cell*534  ( .A(net539), .B(net540), .Z(\U5/U1_0/ffin ) );
  AO2 \*cell*533  ( .A(net538), .B(\U5/instruction_shift[1] ), .C(
        \U5/instruction_shift[2] ), .D(shift_ir_int), .Z(net537) );
  IV \*cell*532  ( .A(net537), .Z(\U5/U1_1/ffin ) );
  IV \*cell*531  ( .A(\U5/instruction_shift[2] ), .Z(net531) );
  AO2 \*cell*530  ( .A(sentinel_val[0]), .B(net535), .C(
        \U5/instruction_shift[3] ), .D(shift_ir_int), .Z(net536) );
  AO7 \*cell*529  ( .A(net531), .B(net532), .C(net536), .Z(\U5/U1_2/ffin ) );
  IV \*cell*528  ( .A(\U5/instruction_shift[3] ), .Z(net533) );
  AO2 \*cell*527  ( .A(sentinel_val[1]), .B(net535), .C(shift_ir_int), .D(tdi), 
        .Z(net534) );
  AO7 \*cell*526  ( .A(net532), .B(net533), .C(net534), .Z(\U5/U1_3/ffin ) );
  MUX21L \*cell*525  ( .A(instr_so), .B(instructions[0]), .S(net530), .Z(
        \U5/ff_d [0]) );
  MUX21L \*cell*524  ( .A(\U5/instruction_shift[1] ), .B(instructions[1]), .S(
        net530), .Z(\U5/ff_d [1]) );
  MUX21L \*cell*523  ( .A(net531), .B(\U5/net3 ), .S(net530), .Z(\U5/ff_d [2])
         );
  MUX21L \*cell*522  ( .A(\U5/instruction_shift[3] ), .B(instructions[3]), .S(
        net530), .Z(\U5/ff_d [3]) );
  MUX21L \*cell*521  ( .A(instr_rst), .B(\U1/N18 ), .S(test), .Z(\U5/rst_n )
         );
  IV \*cell*520  ( .A(shift_dr), .Z(net529) );
  NR2 \*cell*519  ( .A(net529), .B(dr_sel_int), .Z(net450) );
  AO2 \*cell*518  ( .A(tdi), .B(net450), .C(dr_sel_int), .D(byp_so), .Z(net528) );
  NR2 \*cell*517  ( .A(tap_state[3]), .B(net528), .Z(\U6/ffin ) );
  AO2 \*cell*516  ( .A(\U7/temp_so [1]), .B(net450), .C(dr_sel_int), .D(id_so), 
        .Z(net525) );
  NR2 \*cell*515  ( .A(dr_sel_int), .B(shift_dr), .Z(net524) );
  IV \*cell*514  ( .A(net524), .Z(net527) );
  NR2 \*cell*513  ( .A(net527), .B(user_code_sel), .Z(net462) );
  AO6 \*cell*512  ( .A(user_code_val[0]), .B(net524), .C(net462), .Z(net526)
         );
  ND2 \*cell*511  ( .A(net525), .B(net526), .Z(\U7/U1/ffin ) );
  IV \*cell*510  ( .A(net450), .Z(net458) );
  IV \*cell*509  ( .A(\U7/temp_so [2]), .Z(net521) );
  IV \*cell*508  ( .A(mnfr_id_sel), .Z(net516) );
  AO7 \*cell*507  ( .A(mnfr_id[0]), .B(net516), .C(net462), .Z(net522) );
  AN2 \*cell*506  ( .A(user_code_sel), .B(net524), .Z(net451) );
  AO2 \*cell*505  ( .A(user_code_val[1]), .B(net451), .C(\U7/temp_so [1]), .D(
        dr_sel_int), .Z(net523) );
  AO3 \*cell*504  ( .A(net458), .B(net521), .C(net522), .D(net523), .Z(
        \U7/U2_1/ffin ) );
  AO2 \*cell*503  ( .A(user_code_val[10]), .B(net451), .C(\U7/temp_so [10]), 
        .D(dr_sel_int), .Z(net519) );
  IV \*cell*502  ( .A(net462), .Z(net457) );
  NR2 \*cell*501  ( .A(net516), .B(net457), .Z(net500) );
  AO2 \*cell*500  ( .A(mnfr_id[9]), .B(net500), .C(\U7/temp_so [11]), .D(
        net450), .Z(net520) );
  ND2 \*cell*499  ( .A(net519), .B(net520), .Z(\U7/U2_10/ffin ) );
  AO2 \*cell*498  ( .A(user_code_val[11]), .B(net451), .C(\U7/temp_so [11]), 
        .D(dr_sel_int), .Z(net517) );
  AO2 \*cell*497  ( .A(mnfr_id[10]), .B(net500), .C(\U7/temp_so [12]), .D(
        net450), .Z(net518) );
  ND2 \*cell*496  ( .A(net517), .B(net518), .Z(\U7/U2_11/ffin ) );
  IV \*cell*495  ( .A(\U7/temp_so [3]), .Z(net513) );
  AO7 \*cell*494  ( .A(mnfr_id[1]), .B(net516), .C(net462), .Z(net514) );
  AO2 \*cell*493  ( .A(user_code_val[2]), .B(net451), .C(\U7/temp_so [2]), .D(
        dr_sel_int), .Z(net515) );
  AO3 \*cell*492  ( .A(net458), .B(net513), .C(net514), .D(net515), .Z(
        \U7/U2_2/ffin ) );
  AO2 \*cell*491  ( .A(user_code_val[3]), .B(net451), .C(\U7/temp_so [3]), .D(
        dr_sel_int), .Z(net511) );
  AO2 \*cell*490  ( .A(mnfr_id[2]), .B(net500), .C(\U7/temp_so [4]), .D(net450), .Z(net512) );
  ND2 \*cell*489  ( .A(net511), .B(net512), .Z(\U7/U2_3/ffin ) );
  AO2 \*cell*488  ( .A(user_code_val[4]), .B(net451), .C(\U7/temp_so [4]), .D(
        dr_sel_int), .Z(net509) );
  AO2 \*cell*487  ( .A(mnfr_id[3]), .B(net500), .C(\U7/temp_so [5]), .D(net450), .Z(net510) );
  ND2 \*cell*486  ( .A(net509), .B(net510), .Z(\U7/U2_4/ffin ) );
  AO2 \*cell*485  ( .A(user_code_val[5]), .B(net451), .C(\U7/temp_so [5]), .D(
        dr_sel_int), .Z(net507) );
  AO2 \*cell*484  ( .A(mnfr_id[4]), .B(net500), .C(\U7/temp_so [6]), .D(net450), .Z(net508) );
  ND2 \*cell*483  ( .A(net507), .B(net508), .Z(\U7/U2_5/ffin ) );
  AO2 \*cell*482  ( .A(user_code_val[6]), .B(net451), .C(\U7/temp_so [6]), .D(
        dr_sel_int), .Z(net505) );
  AO2 \*cell*481  ( .A(mnfr_id[5]), .B(net500), .C(\U7/temp_so [7]), .D(net450), .Z(net506) );
  ND2 \*cell*480  ( .A(net505), .B(net506), .Z(\U7/U2_6/ffin ) );
  AO2 \*cell*479  ( .A(user_code_val[7]), .B(net451), .C(\U7/temp_so [7]), .D(
        dr_sel_int), .Z(net503) );
  AO2 \*cell*478  ( .A(mnfr_id[6]), .B(net500), .C(\U7/temp_so [8]), .D(net450), .Z(net504) );
  ND2 \*cell*477  ( .A(net503), .B(net504), .Z(\U7/U2_7/ffin ) );
  AO2 \*cell*476  ( .A(user_code_val[8]), .B(net451), .C(\U7/temp_so [8]), .D(
        dr_sel_int), .Z(net501) );
  AO2 \*cell*475  ( .A(mnfr_id[7]), .B(net500), .C(\U7/temp_so [9]), .D(net450), .Z(net502) );
  ND2 \*cell*474  ( .A(net501), .B(net502), .Z(\U7/U2_8/ffin ) );
  AO2 \*cell*473  ( .A(user_code_val[9]), .B(net451), .C(\U7/temp_so [9]), .D(
        dr_sel_int), .Z(net498) );
  AO2 \*cell*472  ( .A(mnfr_id[8]), .B(net500), .C(\U7/temp_so [10]), .D(
        net450), .Z(net499) );
  ND2 \*cell*471  ( .A(net498), .B(net499), .Z(\U7/U2_9/ffin ) );
  AO2 \*cell*470  ( .A(user_code_val[12]), .B(net451), .C(\U7/temp_so [12]), 
        .D(dr_sel_int), .Z(net496) );
  IV \*cell*469  ( .A(part_num_sel), .Z(net495) );
  NR2 \*cell*468  ( .A(net495), .B(net457), .Z(net465) );
  AO2 \*cell*467  ( .A(part_num[0]), .B(net465), .C(\U7/temp_so [13]), .D(
        net450), .Z(net497) );
  ND2 \*cell*466  ( .A(net496), .B(net497), .Z(\U7/U3_12/ffin ) );
  IV \*cell*465  ( .A(\U7/temp_so [14]), .Z(net492) );
  AO7 \*cell*464  ( .A(part_num[1]), .B(net495), .C(net462), .Z(net493) );
  AO2 \*cell*463  ( .A(user_code_val[13]), .B(net451), .C(\U7/temp_so [13]), 
        .D(dr_sel_int), .Z(net494) );
  AO3 \*cell*462  ( .A(net458), .B(net492), .C(net493), .D(net494), .Z(
        \U7/U3_13/ffin ) );
  AO2 \*cell*461  ( .A(user_code_val[14]), .B(net451), .C(\U7/temp_so [14]), 
        .D(dr_sel_int), .Z(net490) );
  AO2 \*cell*460  ( .A(part_num[2]), .B(net465), .C(\U7/temp_so [15]), .D(
        net450), .Z(net491) );
  ND2 \*cell*459  ( .A(net490), .B(net491), .Z(\U7/U3_14/ffin ) );
  AO2 \*cell*458  ( .A(user_code_val[15]), .B(net451), .C(\U7/temp_so [15]), 
        .D(dr_sel_int), .Z(net488) );
  AO2 \*cell*457  ( .A(part_num[3]), .B(net465), .C(\U7/temp_so [16]), .D(
        net450), .Z(net489) );
  ND2 \*cell*456  ( .A(net488), .B(net489), .Z(\U7/U3_15/ffin ) );
  AO2 \*cell*455  ( .A(user_code_val[16]), .B(net451), .C(\U7/temp_so [16]), 
        .D(dr_sel_int), .Z(net486) );
  AO2 \*cell*454  ( .A(part_num[4]), .B(net465), .C(\U7/temp_so [17]), .D(
        net450), .Z(net487) );
  ND2 \*cell*453  ( .A(net486), .B(net487), .Z(\U7/U3_16/ffin ) );
  AO2 \*cell*452  ( .A(user_code_val[17]), .B(net451), .C(\U7/temp_so [17]), 
        .D(dr_sel_int), .Z(net484) );
  AO2 \*cell*451  ( .A(part_num[5]), .B(net465), .C(\U7/temp_so [18]), .D(
        net450), .Z(net485) );
  ND2 \*cell*450  ( .A(net484), .B(net485), .Z(\U7/U3_17/ffin ) );
  AO2 \*cell*449  ( .A(user_code_val[18]), .B(net451), .C(\U7/temp_so [18]), 
        .D(dr_sel_int), .Z(net482) );
  AO2 \*cell*448  ( .A(part_num[6]), .B(net465), .C(\U7/temp_so [19]), .D(
        net450), .Z(net483) );
  ND2 \*cell*447  ( .A(net482), .B(net483), .Z(\U7/U3_18/ffin ) );
  AO2 \*cell*446  ( .A(user_code_val[19]), .B(net451), .C(\U7/temp_so [19]), 
        .D(dr_sel_int), .Z(net480) );
  AO2 \*cell*445  ( .A(part_num[7]), .B(net465), .C(\U7/temp_so [20]), .D(
        net450), .Z(net481) );
  ND2 \*cell*444  ( .A(net480), .B(net481), .Z(\U7/U3_19/ffin ) );
  AO2 \*cell*443  ( .A(user_code_val[20]), .B(net451), .C(\U7/temp_so [20]), 
        .D(dr_sel_int), .Z(net478) );
  AO2 \*cell*442  ( .A(part_num[8]), .B(net465), .C(\U7/temp_so [21]), .D(
        net450), .Z(net479) );
  ND2 \*cell*441  ( .A(net478), .B(net479), .Z(\U7/U3_20/ffin ) );
  AO2 \*cell*440  ( .A(user_code_val[21]), .B(net451), .C(\U7/temp_so [21]), 
        .D(dr_sel_int), .Z(net476) );
  AO2 \*cell*439  ( .A(part_num[9]), .B(net465), .C(\U7/temp_so [22]), .D(
        net450), .Z(net477) );
  ND2 \*cell*438  ( .A(net476), .B(net477), .Z(\U7/U3_21/ffin ) );
  AO2 \*cell*437  ( .A(user_code_val[22]), .B(net451), .C(\U7/temp_so [22]), 
        .D(dr_sel_int), .Z(net474) );
  AO2 \*cell*436  ( .A(part_num[10]), .B(net465), .C(\U7/temp_so [23]), .D(
        net450), .Z(net475) );
  ND2 \*cell*435  ( .A(net474), .B(net475), .Z(\U7/U3_22/ffin ) );
  AO2 \*cell*434  ( .A(user_code_val[23]), .B(net451), .C(\U7/temp_so [23]), 
        .D(dr_sel_int), .Z(net472) );
  AO2 \*cell*433  ( .A(part_num[11]), .B(net465), .C(\U7/temp_so [24]), .D(
        net450), .Z(net473) );
  ND2 \*cell*432  ( .A(net472), .B(net473), .Z(\U7/U3_23/ffin ) );
  AO2 \*cell*431  ( .A(user_code_val[24]), .B(net451), .C(\U7/temp_so [24]), 
        .D(dr_sel_int), .Z(net470) );
  AO2 \*cell*430  ( .A(part_num[12]), .B(net465), .C(\U7/temp_so [25]), .D(
        net450), .Z(net471) );
  ND2 \*cell*429  ( .A(net470), .B(net471), .Z(\U7/U3_24/ffin ) );
  AO2 \*cell*428  ( .A(user_code_val[25]), .B(net451), .C(\U7/temp_so [25]), 
        .D(dr_sel_int), .Z(net468) );
  AO2 \*cell*427  ( .A(part_num[13]), .B(net465), .C(\U7/temp_so [26]), .D(
        net450), .Z(net469) );
  ND2 \*cell*426  ( .A(net468), .B(net469), .Z(\U7/U3_25/ffin ) );
  AO2 \*cell*425  ( .A(user_code_val[26]), .B(net451), .C(\U7/temp_so [26]), 
        .D(dr_sel_int), .Z(net466) );
  AO2 \*cell*424  ( .A(part_num[14]), .B(net465), .C(\U7/temp_so [27]), .D(
        net450), .Z(net467) );
  ND2 \*cell*423  ( .A(net466), .B(net467), .Z(\U7/U3_26/ffin ) );
  AO2 \*cell*422  ( .A(user_code_val[27]), .B(net451), .C(\U7/temp_so [27]), 
        .D(dr_sel_int), .Z(net463) );
  AO2 \*cell*421  ( .A(part_num[15]), .B(net465), .C(\U7/temp_so [28]), .D(
        net450), .Z(net464) );
  ND2 \*cell*420  ( .A(net463), .B(net464), .Z(\U7/U3_27/ffin ) );
  IV \*cell*419  ( .A(\U7/temp_so [29]), .Z(net459) );
  IV \*cell*418  ( .A(ver_sel), .Z(net456) );
  AO7 \*cell*417  ( .A(ver[0]), .B(net456), .C(net462), .Z(net460) );
  AO2 \*cell*416  ( .A(user_code_val[28]), .B(net451), .C(\U7/temp_so [28]), 
        .D(dr_sel_int), .Z(net461) );
  AO3 \*cell*415  ( .A(net458), .B(net459), .C(net460), .D(net461), .Z(
        \U7/U4_28/ffin ) );
  AO2 \*cell*414  ( .A(user_code_val[29]), .B(net451), .C(\U7/temp_so [29]), 
        .D(dr_sel_int), .Z(net454) );
  NR2 \*cell*413  ( .A(net456), .B(net457), .Z(net449) );
  AO2 \*cell*412  ( .A(ver[1]), .B(net449), .C(\U7/temp_so [30]), .D(net450), 
        .Z(net455) );
  ND2 \*cell*411  ( .A(net454), .B(net455), .Z(\U7/U4_29/ffin ) );
  AO2 \*cell*410  ( .A(user_code_val[30]), .B(net451), .C(\U7/temp_so [30]), 
        .D(dr_sel_int), .Z(net452) );
  AO2 \*cell*409  ( .A(ver[2]), .B(net449), .C(\U7/temp_so [31]), .D(net450), 
        .Z(net453) );
  ND2 \*cell*408  ( .A(net452), .B(net453), .Z(\U7/U4_30/ffin ) );
  AO2 \*cell*407  ( .A(user_code_val[31]), .B(net451), .C(dr_sel_int), .D(
        \U7/temp_so [31]), .Z(net447) );
  AO2 \*cell*406  ( .A(ver[3]), .B(net449), .C(tdi), .D(net450), .Z(net448) );
  ND2 \*cell*405  ( .A(net447), .B(net448), .Z(\U7/U4_31/ffin ) );
  IV \*cell*404  ( .A(\U5/net3 ), .Z(instructions[2]) );
  NR3 \*cell*403  ( .A(shift_dr), .B(tap_state[4]), .C(tap_state[3]), .Z(
        sync_capture_en) );
  OR2 \*cell*402  ( .A(shift_ir_int), .B(shift_dr), .Z(tdo_en) );
  AN2 \*cell*401  ( .A(instructions[3]), .B(instructions[1]), .Z(net446) );
  AO1 \*cell*400  ( .A(net446), .B(instructions[0]), .C(tap_state[0]), .D(
        device_id_sel), .Z(net445) );
  MUX21H \*cell*399  ( .A(id_so), .B(so), .S(net445), .Z(net442) );
  AN4 \*cell*398  ( .A(instructions[2]), .B(instructions[3]), .C(
        instructions[1]), .D(instructions[0]), .Z(net444) );
  NR2 \*cell*397  ( .A(net444), .B(bypass_sel), .Z(net443) );
  MUX31L \*cell*396  ( .D0(byp_so), .D1(net442), .D2(instr_so), .A(net443), 
        .B(tap_state[11]), .Z(net441) );
  IV \*cell*395  ( .A(net441), .Z(tdo_ffin) );
  FD2 \U1/current_state_reg[15]  ( .D(\U1/next_state [15]), .CP(tck), .CD(
        trst_n), .Q(tap_state[15]), .QN(net530) );
  FD2 \U1/current_state_reg[2]  ( .D(\U1/next_state [2]), .CP(tck), .CD(trst_n), .Q(tap_state[2]) );
  FD4 \U1/current_state_reg[0]  ( .D(\U1/next_state [0]), .CP(tck), .SD(trst_n), .Q(tap_state[0]), .QN(net583) );
  FD2 \U1/current_state_reg[1]  ( .D(\U1/next_state [1]), .CP(tck), .CD(trst_n), .Q(tap_state[1]), .QN(net573) );
  FD2 \U1/current_state_reg[5]  ( .D(\U1/next_state [5]), .CP(tck), .CD(trst_n), .Q(tap_state[5]) );
  FD2 \U1/current_state_reg[4]  ( .D(\U1/next_state [4]), .CP(tck), .CD(trst_n), .Q(tap_state[4]) );
  FD2 \U1/current_state_reg[14]  ( .D(\U1/next_state [14]), .CP(tck), .CD(
        trst_n), .Q(tap_state[14]), .QN(net576) );
  FD2P \U1/current_state_reg[13]  ( .D(\U1/next_state [13]), .CP(tck), .CD(
        trst_n), .Q(tap_state[13]), .QN(net572) );
  FD2 \U1/current_state_reg[11]  ( .D(\U1/next_state [11]), .CP(tck), .CD(
        trst_n), .Q(tap_state[11]) );
  FD2P \U1/current_state_reg[8]  ( .D(\U1/next_state [8]), .CP(tck), .CD(
        trst_n), .Q(tap_state[8]), .QN(net580) );
  FD2 \U1/current_state_reg[9]  ( .D(\U1/next_state [9]), .CP(tck), .CD(trst_n), .Q(tap_state[9]) );
  FD2 \U1/current_state_reg[3]  ( .D(\U1/next_state [3]), .CP(tck), .CD(trst_n), .Q(tap_state[3]) );
  FD2 \U1/current_state_reg[6]  ( .D(\U1/next_state [6]), .CP(tck), .CD(trst_n), .Q(tap_state[6]), .QN(net588) );
  FD2 \U1/current_state_reg[7]  ( .D(\U1/next_state [7]), .CP(tck), .CD(trst_n), .Q(tap_state[7]) );
  FD2 \U1/current_state_reg[10]  ( .D(\U1/next_state [10]), .CP(tck), .CD(
        trst_n), .Q(tap_state[10]) );
  FD2 \U1/current_state_reg[12]  ( .D(\U1/next_state [12]), .CP(tck), .CD(
        trst_n), .Q(tap_state[12]), .QN(net585) );
  FD2 \U1/dr_sel_int_reg  ( .D(\U1/dr_sel_int_next ), .CP(tck), .CD(trst_n), 
        .Q(dr_sel_int) );
  FD1P U8 ( .D(tdo_ffin), .CP(tck_n), .Q(tdo) );
  FD1P \U7/U4_31/U3  ( .D(\U7/U4_31/ffin ), .CP(tck), .Q(\U7/temp_so [31]) );
  FD1P \U7/U4_30/U3  ( .D(\U7/U4_30/ffin ), .CP(tck), .Q(\U7/temp_so [30]) );
  FD1P \U7/U4_29/U3  ( .D(\U7/U4_29/ffin ), .CP(tck), .Q(\U7/temp_so [29]) );
  FD1P \U7/U4_28/U3  ( .D(\U7/U4_28/ffin ), .CP(tck), .Q(\U7/temp_so [28]) );
  FD1P \U7/U3_27/U3  ( .D(\U7/U3_27/ffin ), .CP(tck), .Q(\U7/temp_so [27]) );
  FD1P \U7/U3_26/U3  ( .D(\U7/U3_26/ffin ), .CP(tck), .Q(\U7/temp_so [26]) );
  FD1P \U7/U3_25/U3  ( .D(\U7/U3_25/ffin ), .CP(tck), .Q(\U7/temp_so [25]) );
  FD1P \U7/U3_24/U3  ( .D(\U7/U3_24/ffin ), .CP(tck), .Q(\U7/temp_so [24]) );
  FD1P \U7/U3_23/U3  ( .D(\U7/U3_23/ffin ), .CP(tck), .Q(\U7/temp_so [23]) );
  FD1P \U7/U3_22/U3  ( .D(\U7/U3_22/ffin ), .CP(tck), .Q(\U7/temp_so [22]) );
  FD1P \U7/U3_21/U3  ( .D(\U7/U3_21/ffin ), .CP(tck), .Q(\U7/temp_so [21]) );
  FD1P \U7/U3_20/U3  ( .D(\U7/U3_20/ffin ), .CP(tck), .Q(\U7/temp_so [20]) );
  FD1P \U7/U3_19/U3  ( .D(\U7/U3_19/ffin ), .CP(tck), .Q(\U7/temp_so [19]) );
  FD1P \U7/U3_18/U3  ( .D(\U7/U3_18/ffin ), .CP(tck), .Q(\U7/temp_so [18]) );
  FD1P \U7/U3_17/U3  ( .D(\U7/U3_17/ffin ), .CP(tck), .Q(\U7/temp_so [17]) );
  FD1P \U7/U3_16/U3  ( .D(\U7/U3_16/ffin ), .CP(tck), .Q(\U7/temp_so [16]) );
  FD1P \U7/U3_15/U3  ( .D(\U7/U3_15/ffin ), .CP(tck), .Q(\U7/temp_so [15]) );
  FD1P \U7/U3_14/U3  ( .D(\U7/U3_14/ffin ), .CP(tck), .Q(\U7/temp_so [14]) );
  FD1P \U7/U3_13/U3  ( .D(\U7/U3_13/ffin ), .CP(tck), .Q(\U7/temp_so [13]) );
  FD1P \U7/U3_12/U3  ( .D(\U7/U3_12/ffin ), .CP(tck), .Q(\U7/temp_so [12]) );
  FD1P \U7/U2_11/U3  ( .D(\U7/U2_11/ffin ), .CP(tck), .Q(\U7/temp_so [11]) );
  FD1P \U7/U2_10/U3  ( .D(\U7/U2_10/ffin ), .CP(tck), .Q(\U7/temp_so [10]) );
  FD1P \U7/U2_9/U3  ( .D(\U7/U2_9/ffin ), .CP(tck), .Q(\U7/temp_so [9]) );
  FD1P \U7/U2_8/U3  ( .D(\U7/U2_8/ffin ), .CP(tck), .Q(\U7/temp_so [8]) );
  FD1P \U7/U2_7/U3  ( .D(\U7/U2_7/ffin ), .CP(tck), .Q(\U7/temp_so [7]) );
  FD1P \U7/U2_6/U3  ( .D(\U7/U2_6/ffin ), .CP(tck), .Q(\U7/temp_so [6]) );
  FD1P \U7/U2_5/U3  ( .D(\U7/U2_5/ffin ), .CP(tck), .Q(\U7/temp_so [5]) );
  FD1P \U7/U2_4/U3  ( .D(\U7/U2_4/ffin ), .CP(tck), .Q(\U7/temp_so [4]) );
  FD1P \U7/U2_3/U3  ( .D(\U7/U2_3/ffin ), .CP(tck), .Q(\U7/temp_so [3]) );
  FD1P \U7/U2_2/U3  ( .D(\U7/U2_2/ffin ), .CP(tck), .Q(\U7/temp_so [2]) );
  FD1P \U7/U2_1/U3  ( .D(\U7/U2_1/ffin ), .CP(tck), .Q(\U7/temp_so [1]) );
  FD1P \U7/U1/U3  ( .D(\U7/U1/ffin ), .CP(tck), .Q(id_so) );
  FD1P \U6/U4  ( .D(\U6/ffin ), .CP(tck), .Q(byp_so) );
  FD1P \U5/U1_3/U3  ( .D(\U5/U1_3/ffin ), .CP(tck), .Q(
        \U5/instruction_shift[3] ) );
  FD1P \U5/U1_2/U3  ( .D(\U5/U1_2/ffin ), .CP(tck), .Q(
        \U5/instruction_shift[2] ) );
  FD1P \U5/U1_1/U3  ( .D(\U5/U1_1/ffin ), .CP(tck), .Q(
        \U5/instruction_shift[1] ) );
  FD1P \U5/U1_0/U3  ( .D(\U5/U1_0/ffin ), .CP(tck), .Q(instr_so) );
  FD2P \U5/U3_3  ( .D(\U5/ff_d [3]), .CP(tck_n), .CD(\U5/rst_n ), .QN(
        instructions[3]) );
  FD2P \U5/U3_2  ( .D(\U5/ff_d [2]), .CP(tck_n), .CD(\U5/rst_n ), .QN(
        \U5/net3 ) );
  FD2P \U5/U3_1  ( .D(\U5/ff_d [1]), .CP(tck_n), .CD(\U5/rst_n ), .QN(
        instructions[1]) );
  FD2P \U5/U3_0  ( .D(\U5/ff_d [0]), .CP(tck_n), .CD(\U5/rst_n ), .QN(
        instructions[0]) );
  FD2P \U1/U9  ( .D(tap_state[0]), .CP(tck_n), .CD(trst_n), .QN(\U1/net41 ) );
  FD2P \U1/U8  ( .D(tap_state[11]), .CP(tck_n), .CD(trst_n), .Q(shift_ir_int)
         );
  FD2P \U1/U7  ( .D(tap_state[4]), .CP(tck_n), .CD(trst_n), .Q(shift_dr) );
  IVDA \*cell*695  ( .A(tap_state[8]), .Z(net662) );
endmodule


module soda_machine_DW_bc_2_test_0 ( capture_clk, update_clk, capture_en, 
        update_en, shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, \U1/U1/ffin , \U1/ffin , net689;

  MUX21H \*cell*710  ( .A(data_in), .B(update_out), .S(mode), .Z(data_out) );
  MUX31L \*cell*709  ( .D0(data_out), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net689) );
  IV \*cell*708  ( .A(net689), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*707  ( .A(update_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(update_out) );
endmodule


module soda_machine_DW_bc_2_test_1 ( capture_clk, update_clk, capture_en, 
        update_en, shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, \U1/U1/ffin , \U1/ffin , net689;

  MUX21H \*cell*710  ( .A(data_in), .B(update_out), .S(mode), .Z(data_out) );
  MUX31L \*cell*709  ( .D0(data_out), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net689) );
  IV \*cell*708  ( .A(net689), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*707  ( .A(update_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(update_out) );
endmodule


module soda_machine_DW_bc_1_test_0 ( capture_clk, update_clk, capture_en, 
        update_en, shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, \U1/U1/ffin , \U1/ffin , net716;

  MUX31L \*cell*727  ( .D0(data_in), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net716) );
  IV \*cell*726  ( .A(net716), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*725  ( .A(temp_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  MUX21H \*cell*724  ( .A(data_in), .B(temp_out), .S(mode), .Z(data_out) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(temp_out) );
endmodule


module soda_machine_DW_bc_1_test_1 ( capture_clk, update_clk, capture_en, 
        update_en, shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, \U1/U1/ffin , \U1/ffin , net716;

  MUX31L \*cell*727  ( .D0(data_in), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net716) );
  IV \*cell*726  ( .A(net716), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*725  ( .A(temp_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  MUX21H \*cell*724  ( .A(data_in), .B(temp_out), .S(mode), .Z(data_out) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(temp_out) );
endmodule


module soda_machine_DW_bc_2_test_2 ( capture_clk, update_clk, capture_en, 
        update_en, shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, \U1/U1/ffin , \U1/ffin , net689;

  MUX21H \*cell*710  ( .A(data_in), .B(update_out), .S(mode), .Z(data_out) );
  MUX31L \*cell*709  ( .D0(data_out), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net689) );
  IV \*cell*708  ( .A(net689), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*707  ( .A(update_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(update_out) );
endmodule


module soda_machine_DW_bc_1 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, \U1/U1/ffin , \U1/ffin , net716;

  MUX31L \*cell*727  ( .D0(data_in), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net716) );
  IV \*cell*726  ( .A(net716), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*725  ( .A(temp_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  MUX21H \*cell*724  ( .A(data_in), .B(temp_out), .S(mode), .Z(data_out) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(temp_out) );
endmodule


module soda_machine_DW_bc_2_test_3 ( capture_clk, update_clk, capture_en, 
        update_en, shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, \U1/U1/ffin , \U1/ffin , net689;

  MUX21H \*cell*710  ( .A(data_in), .B(update_out), .S(mode), .Z(data_out) );
  MUX31L \*cell*709  ( .D0(data_out), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net689) );
  IV \*cell*708  ( .A(net689), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*707  ( .A(update_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(update_out) );
endmodule


module soda_machine_DW_bc_2 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, \U1/U1/ffin , \U1/ffin , net689;

  MUX21H \*cell*710  ( .A(data_in), .B(update_out), .S(mode), .Z(data_out) );
  MUX31L \*cell*709  ( .D0(data_out), .D1(si), .D2(so), .A(shift_dr), .B(
        capture_en), .Z(net689) );
  IV \*cell*708  ( .A(net689), .Z(\U1/U1/ffin ) );
  MUX21H \*cell*707  ( .A(update_out), .B(so), .S(update_en), .Z(\U1/ffin ) );
  FD1P \U1/U1/U3  ( .D(\U1/U1/ffin ), .CP(capture_clk), .Q(so) );
  FD1P \U1/U3  ( .D(\U1/ffin ), .CP(update_clk), .Q(update_out) );
endmodule


module soda_machine_Decoder_inst_design ( \soda_machine_instructions[3] , 
        \soda_machine_instructions[2] , \soda_machine_instructions[1] , 
        \soda_machine_instructions[0] , SAMPLE, PRELOAD, IDCODE, EXTEST, 
        BYPASS );
  input \soda_machine_instructions[3] , \soda_machine_instructions[2] ,
         \soda_machine_instructions[1] , \soda_machine_instructions[0] ;
  output SAMPLE, PRELOAD, IDCODE, EXTEST, BYPASS;
  wire   net919, net918, net917, net916, net924;
  assign PRELOAD = net924;

  bit[255:0] intr;
  assign intr =  SAMPLE ? "SAMPLE" : PRELOAD ? "PRELOAD" : IDCODE ? "IDCODE" : EXTEST ? "EXTEST" : BYPASS ? "BYPASS" : "ERROR" ;
 
  ND3 \*cell*851  ( .A(\soda_machine_instructions[1] ), .B(
        \soda_machine_instructions[0] ), .C(\soda_machine_instructions[3] ), 
        .Z(net918) );
  IV \*cell*850  ( .A(\soda_machine_instructions[2] ), .Z(net919) );
  NR2 \*cell*849  ( .A(net918), .B(net919), .Z(BYPASS) );
  OR3 \*cell*848  ( .A(\soda_machine_instructions[3] ), .B(
        \soda_machine_instructions[2] ), .C(\soda_machine_instructions[1] ), 
        .Z(net917) );
  NR2 \*cell*847  ( .A(\soda_machine_instructions[0] ), .B(net917), .Z(EXTEST)
         );
  NR2 \*cell*846  ( .A(\soda_machine_instructions[2] ), .B(net918), .Z(IDCODE)
         );
  IV \*cell*845  ( .A(\soda_machine_instructions[0] ), .Z(net916) );
  NR2 \*cell*844  ( .A(net916), .B(net917), .Z(SAMPLE) );
  IVDA \*cell*855  ( .A(SAMPLE), .Z(net924) );
endmodule


module soda_machine_BSR_mode_inst_design ( tck_1, soda_machine_tdo_en, 
        soda_machine_inv_in, \soda_machine_instructions[3] , 
        \soda_machine_instructions[2] , \soda_machine_instructions[1] , 
        \soda_machine_instructions[0] , soda_machine_bypass_sel, 
        soda_machine_INV_ABC_2, soda_machine_INV_ABC_1, soda_machine_INV_ABC, 
        net762, net760, net669, IDCODE, EXTEST );
  input soda_machine_inv_in, \soda_machine_instructions[3] ,
         \soda_machine_instructions[2] , \soda_machine_instructions[1] ,
         \soda_machine_instructions[0] , soda_machine_INV_ABC_2, net762,
         net760, net669;
  output tck_1, soda_machine_tdo_en, soda_machine_bypass_sel,
         soda_machine_INV_ABC_1, soda_machine_INV_ABC, IDCODE, EXTEST;
  wire   BYPASS, PRELOAD, SAMPLE, net783, net948, net947;

  IV \*cell*864  ( .A(net760), .Z(net783) );
  OR3 \*cell*863  ( .A(SAMPLE), .B(PRELOAD), .C(EXTEST), .Z(net947) );
  ND2 \*cell*862  ( .A(net783), .B(net947), .Z(soda_machine_INV_ABC) );
  AN2 \*cell*861  ( .A(net762), .B(net947), .Z(soda_machine_INV_ABC_1) );
  IV \*cell*860  ( .A(BYPASS), .Z(net948) );
  AO7 \*cell*859  ( .A(IDCODE), .B(net947), .C(net948), .Z(
        soda_machine_bypass_sel) );
  IV \*cell*858  ( .A(net669), .Z(soda_machine_tdo_en) );
  IV \*cell*857  ( .A(soda_machine_inv_in), .Z(tck_1) );
  soda_machine_Decoder_inst_design soda_machine_Decoder_inst ( 
        .\soda_machine_instructions[3] (\soda_machine_instructions[3] ), 
        .\soda_machine_instructions[2] (\soda_machine_instructions[2] ), 
        .\soda_machine_instructions[1] (\soda_machine_instructions[1] ), 
        .\soda_machine_instructions[0] (\soda_machine_instructions[0] ), 
        .SAMPLE(SAMPLE), .PRELOAD(PRELOAD), .IDCODE(IDCODE), .EXTEST(EXTEST), 
        .BYPASS(BYPASS) );
endmodule


module soda_machine_BSR_top_inst_design ( soda_machine_tdo_en, 
        soda_machine_tdi, soda_machine_si_7, soda_machine_inv_in, 
        \soda_machine_instructions[3] , \soda_machine_instructions[2] , 
        \soda_machine_instructions[1] , \soda_machine_instructions[0] , 
        soda_machine_data_out_2, soda_machine_data_out_1, 
        soda_machine_data_out, soda_machine_data_in_4, soda_machine_data_in_3, 
        soda_machine_data_in_2, soda_machine_data_in_1, soda_machine_data_in, 
        soda_machine_bypass_sel, soda_machine_INV_ABC_2, rst_core, 
        quarter_in_core, nickel_out_core, nickel_in_core, net762, net760, 
        net669, dispense_core, dime_out_core, dime_in_core, clk_core, IDCODE
 );
  input soda_machine_tdi, soda_machine_inv_in, \soda_machine_instructions[3] ,
         \soda_machine_instructions[2] , \soda_machine_instructions[1] ,
         \soda_machine_instructions[0] , soda_machine_data_in_4,
         soda_machine_data_in_3, soda_machine_data_in_2,
         soda_machine_data_in_1, soda_machine_data_in, soda_machine_INV_ABC_2,
         nickel_out_core, net762, net760, net669, dispense_core, dime_out_core;
  output soda_machine_tdo_en, soda_machine_si_7, soda_machine_data_out_2,
         soda_machine_data_out_1, soda_machine_data_out,
         soda_machine_bypass_sel, rst_core, quarter_in_core, nickel_in_core,
         dime_in_core, clk_core, IDCODE;
  wire   EXTEST, soda_machine_INV_ABC, soda_machine_INV_ABC_1, soda_machine_si,
         soda_machine_si_1, soda_machine_si_2, soda_machine_si_3,
         soda_machine_si_4, soda_machine_si_5, soda_machine_si_6, tck_1;

  soda_machine_DW_bc_2_test_0 soda_machine_clk_bsr1 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(1'b0), .si(soda_machine_tdi), .data_in(
        soda_machine_data_in), .data_out(clk_core), .so(soda_machine_si) );
  soda_machine_DW_bc_2_test_1 soda_machine_dime_in_bsr2 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(1'b0), .si(soda_machine_si), .data_in(
        soda_machine_data_in_1), .data_out(dime_in_core), .so(
        soda_machine_si_1) );
  soda_machine_DW_bc_1_test_0 soda_machine_dime_out_bsr3 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(EXTEST), .si(soda_machine_si_1), 
        .data_in(dime_out_core), .data_out(soda_machine_data_out), .so(
        soda_machine_si_2) );
  soda_machine_DW_bc_1_test_1 soda_machine_dispense_bsr4 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(EXTEST), .si(soda_machine_si_2), 
        .data_in(dispense_core), .data_out(soda_machine_data_out_1), .so(
        soda_machine_si_3) );
  soda_machine_DW_bc_2_test_2 soda_machine_nickel_in_bsr5 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(1'b0), .si(soda_machine_si_3), 
        .data_in(soda_machine_data_in_2), .data_out(nickel_in_core), .so(
        soda_machine_si_4) );
  soda_machine_DW_bc_1 soda_machine_nickel_out_bsr6 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(EXTEST), .si(soda_machine_si_4), 
        .data_in(nickel_out_core), .data_out(soda_machine_data_out_2), .so(
        soda_machine_si_5) );
  soda_machine_DW_bc_2_test_3 soda_machine_quarter_in_bsr7 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(1'b0), .si(soda_machine_si_5), 
        .data_in(soda_machine_data_in_3), .data_out(quarter_in_core), .so(
        soda_machine_si_6) );
  soda_machine_DW_bc_2 soda_machine_rst_bsr8 ( .capture_clk(
        soda_machine_inv_in), .update_clk(tck_1), .capture_en(
        soda_machine_INV_ABC), .update_en(soda_machine_INV_ABC_1), .shift_dr(
        soda_machine_INV_ABC_2), .mode(1'b0), .si(soda_machine_si_6), 
        .data_in(soda_machine_data_in_4), .data_out(rst_core), .so(
        soda_machine_si_7) );
  soda_machine_BSR_mode_inst_design soda_machine_BSR_mode_inst ( .tck_1(tck_1), 
        .soda_machine_tdo_en(soda_machine_tdo_en), .soda_machine_inv_in(
        soda_machine_inv_in), .\soda_machine_instructions[3] (
        \soda_machine_instructions[3] ), .\soda_machine_instructions[2] (
        \soda_machine_instructions[2] ), .\soda_machine_instructions[1] (
        \soda_machine_instructions[1] ), .\soda_machine_instructions[0] (
        \soda_machine_instructions[0] ), .soda_machine_bypass_sel(
        soda_machine_bypass_sel), .soda_machine_INV_ABC_2(
        soda_machine_INV_ABC_2), .soda_machine_INV_ABC_1(
        soda_machine_INV_ABC_1), .soda_machine_INV_ABC(soda_machine_INV_ABC), 
        .net762(net762), .net760(net760), .net669(net669), .IDCODE(IDCODE), 
        .EXTEST(EXTEST) );
endmodule


module soda_machine ( nickel_in, dime_in, quarter_in, clk, rst, nickel_out, 
        dime_out, dispense, tdi, tdo, tck, tms, trst_n );
  input nickel_in, dime_in, quarter_in, clk, rst, tdi, tck, tms, trst_n;
  output nickel_out, dime_out, dispense, tdo;
  wire   \U3/U2/Z_0 , n126, N73, N72, N71, N70, N69, N68, N67, \U3/U1/Z_4 ,
         \U3/U1/Z_3 , \U3/U1/Z_2 , n125, \U3/U1/Z_0 , n72, n36, n70, n110, n71,
         n35, n124, n112, n123, n111, n122, n115, n121, n116, n120, n117, n119,
         n114, n118, n113, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, \r24/B_AS_6 , nickel_in_core, dime_in_core, quarter_in_core,
         clk_core, rst_core, dispense_core, nickel_out_core, dime_out_core,
         soda_machine_inv_in, soda_machine_tdi, soda_machine_tdo,
         soda_machine_tdo_en, net669, soda_machine_tms, soda_machine_trst_n,
         \soda_machine_instructions[0] , \soda_machine_instructions[1] ,
         \soda_machine_instructions[2] , \soda_machine_instructions[3] ,
         IDCODE, soda_machine_bypass_sel, net760, net762,
         soda_machine_INV_ABC_2, soda_machine_data_in, soda_machine_data_in_1,
         soda_machine_data_out, soda_machine_data_out_1,
         soda_machine_data_in_2, soda_machine_data_out_2,
         soda_machine_data_in_3, soda_machine_data_in_4, soda_machine_si_7;
  wire   [6:0] cnt;
  wire   [2:0] Nxtstate;
  wire   [4:0] \r24/B_AS ;
  wire   [6:1] \r24/carry ;
  tri   tdo;




  bit[255:0] johnq;
  assign johnq = "HELLO";



  IBUF2 U1 ( .A(trst_n), .Z(soda_machine_trst_n) );
  IBUF2 U2 ( .A(tdi), .Z(soda_machine_tdi) );
  IBUF2 U3 ( .A(tms), .Z(soda_machine_tms) );
  IBUF2 U4 ( .A(tck), .Z(soda_machine_inv_in) );
  BIDI U5 ( .A(soda_machine_tdo), .E(soda_machine_tdo_en), .Z(tdo) );
  IBUF2 U6 ( .A(nickel_in), .Z(soda_machine_data_in_2) );
  IBUF2 U7 ( .A(dime_in), .Z(soda_machine_data_in_1) );
  IBUF2 U8 ( .A(quarter_in), .Z(soda_machine_data_in_3) );
  IBUF2 U9 ( .A(clk), .Z(soda_machine_data_in) );
  IBUF2 U10 ( .A(rst), .Z(soda_machine_data_in_4) );
  OBUF2 U11 ( .A(soda_machine_data_out_1), .Z(dispense) );
  OBUF2 U12 ( .A(soda_machine_data_out_2), .Z(nickel_out) );
  OBUF2 U13 ( .A(soda_machine_data_out), .Z(dime_out) );
  FD2 \Prst_coreate_reg[0]  ( .D(Nxtstate[0]), .CP(clk_core), .CD(rst_core), 
        .Q(n72), .QN(n36) );
  FD2 \Prst_coreate_reg[1]  ( .D(Nxtstate[1]), .CP(clk_core), .CD(rst_core), 
        .Q(n70), .QN(n110) );
  FD2 \Prst_coreate_reg[2]  ( .D(Nxtstate[2]), .CP(clk_core), .CD(rst_core), 
        .Q(n71), .QN(n35) );
  FD2 \cnt_reg[0]  ( .D(n124), .CP(clk_core), .CD(rst_core), .Q(cnt[0]), .QN(
        n112) );
  FD2 \cnt_reg[1]  ( .D(n123), .CP(clk_core), .CD(rst_core), .Q(cnt[1]), .QN(
        n111) );
  FD2 \cnt_reg[2]  ( .D(n122), .CP(clk_core), .CD(rst_core), .Q(cnt[2]), .QN(
        n115) );
  FD2 \cnt_reg[3]  ( .D(n121), .CP(clk_core), .CD(rst_core), .Q(cnt[3]), .QN(
        n116) );
  FD2 \cnt_reg[4]  ( .D(n120), .CP(clk_core), .CD(rst_core), .Q(cnt[4]), .QN(
        n117) );
  FD2 \cnt_reg[5]  ( .D(n119), .CP(clk_core), .CD(rst_core), .Q(cnt[5]), .QN(
        n114) );
  FD2 \cnt_reg[6]  ( .D(n118), .CP(clk_core), .CD(rst_core), .Q(cnt[6]), .QN(
        n113) );
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
  OR3 U99 ( .A(quarter_in_core), .B(nickel_in_core), .C(dime_in_core), .Z(n81)
         );
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
  soda_machine_DW_tap_uc_width4_id1_idcode_opcode11_version1_part2_man_num3_sync_mode1_tst_mode1 soda_machine_DW_tap_inst ( 
        .tck(soda_machine_inv_in), .trst_n(soda_machine_trst_n), .tms(
        soda_machine_tms), .tdi(soda_machine_tdi), .so(soda_machine_si_7), 
        .bypass_sel(soda_machine_bypass_sel), .sentinel_val({1'b0, 1'b0, 1'b0}), .device_id_sel(IDCODE), .user_code_sel(1'b0), .user_code_val({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .ver({1'b0, 1'b0, 1'b0, 1'b1}), 
        .ver_sel(IDCODE), .part_num({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0}), .part_num_sel(
        IDCODE), .mnfr_id({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1}), .mnfr_id_sel(IDCODE), .shift_dr(
        soda_machine_INV_ABC_2), .tdo(soda_machine_tdo), .tdo_en(net669), 
        .instructions({\soda_machine_instructions[3] , 
        \soda_machine_instructions[2] , \soda_machine_instructions[1] , 
        \soda_machine_instructions[0] }), .sync_capture_en(net760), 
        .sync_update_dr(net762), .test(1'b0) );
  soda_machine_BSR_top_inst_design soda_machine_BSR_top_inst ( 
        .soda_machine_tdo_en(soda_machine_tdo_en), .soda_machine_tdi(
        soda_machine_tdi), .soda_machine_si_7(soda_machine_si_7), 
        .soda_machine_inv_in(soda_machine_inv_in), 
        .\soda_machine_instructions[3] (\soda_machine_instructions[3] ), 
        .\soda_machine_instructions[2] (\soda_machine_instructions[2] ), 
        .\soda_machine_instructions[1] (\soda_machine_instructions[1] ), 
        .\soda_machine_instructions[0] (\soda_machine_instructions[0] ), 
        .soda_machine_data_out_2(soda_machine_data_out_2), 
        .soda_machine_data_out_1(soda_machine_data_out_1), 
        .soda_machine_data_out(soda_machine_data_out), 
        .soda_machine_data_in_4(soda_machine_data_in_4), 
        .soda_machine_data_in_3(soda_machine_data_in_3), 
        .soda_machine_data_in_2(soda_machine_data_in_2), 
        .soda_machine_data_in_1(soda_machine_data_in_1), 
        .soda_machine_data_in(soda_machine_data_in), .soda_machine_bypass_sel(
        soda_machine_bypass_sel), .soda_machine_INV_ABC_2(
        soda_machine_INV_ABC_2), .rst_core(rst_core), .quarter_in_core(
        quarter_in_core), .nickel_out_core(nickel_out_core), .nickel_in_core(
        nickel_in_core), .net762(net762), .net760(net760), .net669(net669), 
        .dispense_core(dispense_core), .dime_out_core(dime_out_core), 
        .dime_in_core(dime_in_core), .clk_core(clk_core), .IDCODE(IDCODE) );
endmodule

