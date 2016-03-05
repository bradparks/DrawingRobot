use <pin.scad>;
module ArduinoNano (){
    board_thickness = 1.600000;
//    $fn=12;
    xyz=[
    [	1.270	,	39.370	,	board_thickness	]	,
    [	1.270	,	36.830	,	board_thickness	]	,
    [	1.270	,	34.290	,	board_thickness	]	,
    [	1.270	,	31.750	,	board_thickness	]	,
    [	1.270	,	29.210	,	board_thickness	]	,
    [	1.270	,	26.670	,	board_thickness	]	,
    [	1.270	,	24.130	,	board_thickness	]	,
    [	1.270	,	21.590	,	board_thickness	]	,
    [	1.270	,	19.050	,	board_thickness	]	,
    [	1.270	,	16.510	,	board_thickness	]	,
    [	1.270	,	13.970	,	board_thickness	]	,
    [	1.270	,	11.430	,	board_thickness	]	,
    [	1.270	,	8.890	,	board_thickness	]	,
    [	1.270	,	6.350	,	board_thickness	]	,
    [	1.270	,	3.810	,	board_thickness	]	,
    [	16.510	,	39.370	,	board_thickness	]	,
    [	16.510	,	36.830	,	board_thickness	]	,
    [	16.510	,	34.290	,	board_thickness	]	,
    [	16.510	,	31.750	,	board_thickness	]	,
    [	16.510	,	29.210	,	board_thickness	]	,
    [	16.510	,	26.670	,	board_thickness	]	,
    [	16.510	,	24.130	,	board_thickness	]	,
    [	16.510	,	21.590	,	board_thickness	]	,
    [	16.510	,	19.050	,	board_thickness	]	,
    [	16.510	,	16.510	,	board_thickness	]	,
    [	16.510	,	13.970	,	board_thickness	]	,
    [	16.510	,	11.430	,	board_thickness	]	,
    [	16.510	,	8.890	,	board_thickness	]	,
    [	16.510	,	6.350	,	board_thickness	]   ,
    [	16.510	,	3.810	,	board_thickness	]	
    ]  ;        
   icsp=[   
    [	11.430	,	41.808	,	0	]	,
    [	11.430	,	39.268	,	0	]	,
    [	8.890	,	41.808	,	0	]	,
    [	8.890	,	39.268	,	0	]	,
    [	6.350	,	41.808	,	0	]	,
    [	6.350	,	39.268	,	0	]
    ]  ; 
	eta = 0.1;
	board_size = [17.780000,43.180000,board_thickness];
	board_origin = [-17.78/2,0.000000];

rotate([0,180,0]) translate([-17.78/2,0.000000,-4.14]) {
	union(){
		color("green") difference() {
			cube(board_size); //Board
			translate([1.270,1.270,-0.1])cylinder(r=0.825500, h=board_thickness+0.2); //Hole
			translate([16.510,1.270,-0.1])cylinder(r=0.825500, h=board_thickness+0.2); //Hole
			translate([16.510,41.910,-0.1])cylinder(r=0.825500, h=board_thickness+0.2); //Hole
			translate([1.270,41.910,-0.1])cylinder(r=0.825500, h=board_thickness+0.2); //Hole
			translate([11.090,4.161,-eta]) cylinder(r=0.406400, h=board_thickness+eta*2); //hole
			translate([6.690,4.161,-eta])cylinder(r=0.406400, h=board_thickness+eta*2); //hole
			translate([1.270,39.370,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 1
			translate([1.270,36.830,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 2
			translate([1.270,34.290,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 3
			translate([1.270,31.750,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 4
			translate([1.270,29.210,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 5
			translate([1.270,26.670,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 6
			translate([1.270,24.130,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 7
			translate([1.270,21.590,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 8
			translate([1.270,19.050,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 9
			translate([1.270,16.510,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 10
			translate([1.270,13.970,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 11
			translate([1.270,11.430,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 12
			translate([1.270,8.890,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 13
			translate([1.270,6.350,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 14
			translate([1.270,3.810,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS 15
			translate([16.510,39.370,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 1
			translate([16.510,36.830,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 2
			translate([16.510,34.290,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 3
			translate([16.510,31.750,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 4
			translate([16.510,29.210,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 5
			translate([16.510,26.670,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 6
			translate([16.510,24.130,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 7
			translate([16.510,21.590,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 8
			translate([16.510,19.050,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 9
			translate([16.510,16.510,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 10
			translate([16.510,13.970,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 11
			translate([16.510,11.430,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 12
			translate([16.510,8.890,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 13
			translate([16.510,6.350,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 14
			translate([16.510,3.810,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD15-NOSS-1 15
			translate([11.430,41.808,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD3X2 1
			translate([11.430,39.268,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD3X2 2
			translate([8.890,41.808,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD3X2 3
			translate([8.890,39.268,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD3X2 4
			translate([6.350,41.808,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD3X2 5
			translate([6.350,39.268,-eta])cylinder(r=0.457200, h=board_thickness+eta*2); //HEAD3X2 6
		}
        for (x=xyz) translate(x) pin();
        for (x=icsp) translate(x) rotate([180,0,0]) pin();
		translate([13.208,3.810,0])rotate([0,0,90])CAP0805_NP();  //C1 0.1uF
		translate([6.883,30.124,0])rotate([0,0,270])TAN_A();  //C2 4.7uF
		translate([7.087,16.434,0])rotate([0,0,270])CAP0805_NP();  //C3 0.1uF
		translate([10.338,18.720,0])rotate([0,0,90])CAP0805_NP();  //C4 0.1uF
		translate([8.890,3.810,0])rotate([0,0,90])CAP0805_NP();  //C7 0.1uF
		translate([4.572,3.607,0])rotate([0,0,90])TAN_A();  //C8 4.7uF
		translate([3.937,30.023,0])rotate([0,0,270])CAP0805_NP();  //C9 0.1uF
		translate([7.214,27.940,0])rotate([0,0,180])SOD_123();  //D1 MBR0520
		translate([1.270,39.370,0])rotate([0,0,270])HEAD15_NOSS();  //J1 HEAD15-NOSS
		translate([16.510,39.370,0])rotate([0,0,270])HEAD15_NOSS_1();  //J2 HEAD15-NOSS-1
        
		color ([0.9,0.9,0.9,]) translate([5.2,4.2,0])rotate([0,180,180])    cube ([7.7,9.2,3.1]);  //J3 USB-MINI-B%C
        
		translate([11.430,41.808,0])rotate([0,0,180])HEAD3X2();  //J4 HEAD3X2
		translate([6.807,27.838,0])rotate([0,0,90])LED0805();  //LED1 RED_RX
		translate([4.064,27.838,0])rotate([0,0,90])LED0805();  //LED2 GREEN_TX
		translate([13.716,30.124,0])rotate([0,0,270])LED0805();  //LED3 L_AMBER
		translate([10.287,30.124,0])rotate([0,0,270])LED0805();  //LED4 BLUE
		translate([10.846,24.511,0])RES4NT();  //RP1 1K
		translate([7.620,22.860,0])rotate([0,0,180])RES4NT();  //RP2 330
		translate([7.366,24.130,0])157SW();  //SW1 RESET
		translate([13.691,38.633,0])FIDUCIAL_1X2();  //U$4 FIDUCIAL1X2
		translate([12.573,35.052,0])LOGO_G_117X105();  //U$36 LOGO-G%117X105
		translate([3.835,10.262,0])FIDUCIAL_1X2();  //U$37 FIDUCIAL1X2
		translate([13.691,38.633,0])rotate([0,0,180])FIDUCIAL_1X2();  //U$53 FIDUCIAL1X2
		translate([2.845,2.946,0])rotate([0,0,180])FIDUCIAL_1X2();  //U$54 FIDUCIAL1X2
		translate([8.026,20.320,0])rotate([0,0,225])QFP032();  //U1 ATMEGA328
		translate([12.446,14.605,0])rotate([0,0,90])SSOP28();  //U2 FT232RL
		translate([13.716,29.972,0])rotate([0,0,180])SOT223();  //U3 UA78M05
		translate([4.826,20.828,0])rotate([0,0,45])RESONATOR();  //Y1 16MHz
	}
}
}
ArduinoNano(); //Show module
//Created by generate-scad.ulp version 0.1
