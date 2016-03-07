use <./protoboard/ArduinoNano/ArduinoNano.scad>;
use <./protoboard/ArduinoNano/pinF.scad>;
//$fn=90;
module cnc(){
	board_thickness = 1.600000;
	eta = 0.1;
	board_size = [78.410000-1.4,40.630000,board_thickness];
	board_origin = [0.000000,0.000000];
    XYpinF=[
            [	30.480	,	10.160	,board_thickness	],
            [	50.800	,	10.160	,board_thickness	],
            [	66.040	,	27.940	,board_thickness	],
            [	63.500	,	27.940	,board_thickness	],
            [	60.960	,	27.940	,board_thickness	],
            [	58.420	,	27.940	,board_thickness	],
            [	55.880	,	27.940	,board_thickness	],
            [	53.340	,	27.940	,board_thickness	],
            [	22.860	,	25.400	,board_thickness	],
            [	22.860	,	10.160	,board_thickness	],
            [	50.800	,	25.400	,board_thickness	],
            [	53.340	,	10.160	,board_thickness	],
            [	55.880	,	10.160	,board_thickness	], //
            [	40.640	,	25.400	,board_thickness	],
            [	43.180	,	25.400	,board_thickness	],
            [	45.720	,	25.400	,board_thickness	],
            [	48.260	,	25.400	,board_thickness	],
            [	55.880	,	25.400	,board_thickness	],
            [	58.420	,	25.400	,board_thickness	],
            [	27.940	,	25.400	,board_thickness	],
            [	30.480	,	25.400	,board_thickness	],
            [	33.020	,	25.400	,board_thickness	],
            [	35.560	,	25.400	,board_thickness	],
//            [	22.860	,	33.020	,board_thickness	],
            [	22.860	,	30.480	,board_thickness	],
//            [	22.860	,	27.940	,board_thickness	],
            [	50.800	,	27.940	,board_thickness	],
            [	48.260	,	27.940	,board_thickness	],
            [	45.720	,	27.940	,board_thickness	],
            [	43.180	,	27.940	,board_thickness	],
            [	40.640	,	27.940	,board_thickness	],
            [	38.100	,	27.940	,board_thickness	],
//            [	50.800	,	12.700	,board_thickness	],
//            [	58.420	,	15.240	,board_thickness	],//x
//            [	50.800	,	22.860	,board_thickness	],//y
//            [	50.800	,	15.240	,board_thickness	],
            [	25.400	,	30.480	,board_thickness	],
            [	27.940	,	30.480	,board_thickness	],
            [	30.480	,	30.480	,board_thickness	],
            [	33.020	,	30.480	,board_thickness	],
            [	35.560	,	30.480	,board_thickness	],
            [	38.100	,	30.480	,board_thickness	],
            [	58.420	,	10.160	,board_thickness	]
            ];
	union(){
		color("green")difference(){
			translate(board_origin)cube(board_size); //Board
			translate([53.340,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([30.480,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([50.800,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([66.040,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([63.500,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([60.960,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([58.420,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([55.880,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([53.340,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
			translate([22.860,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([22.860,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([50.800,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([55.880,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([40.640,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 1
			translate([43.180,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 2
			translate([45.720,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 3
			translate([48.260,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 4
			translate([55.880,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X02 1
			translate([58.420,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X02 2
			translate([27.940,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 1
			translate([30.480,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 2
			translate([33.020,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 3
			translate([35.560,25.400,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 4
			translate([22.860,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X03 1
			translate([22.860,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X03 2
			translate([22.860,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X03 3
			translate([50.800,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([48.260,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([45.720,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([43.180,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([40.640,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([38.100,27.940,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
			translate([50.800,12.700,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$1
			translate([58.420,12.700,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$2  ///
			translate([58.420,15.240,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$1
			translate([50.800,15.240,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$2
			translate([25.400,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([27.940,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([30.480,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([33.020,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([35.560,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([38.100,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
			translate([58.420,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
            //BATTERY_PACK_18650 
			translate([75.970-1.8,29.820,-eta])cylinder(r=0.600000, h=board_thickness+eta*2); //+3.7V_1
			translate([2.770,10.820,-eta])cylinder(r=0.600000, h=board_thickness+eta*2); // +3.7V_2
			translate([2.770,29.820,-eta])cylinder(r=0.600000, h=board_thickness+eta*2); // GND_1
			translate([75.970-1.8,10.820,-eta])cylinder(r=0.600000, h=board_thickness+eta*2); // GND_2
            //inserire dado e bullone qui
			translate([10.871,20.320-0.2,-eta])cylinder(r=1.600000, h=board_thickness+eta*2); //hole
			translate([67.869-1.8,20.320-0.2,-eta])cylinder(r=1.600000, h=board_thickness+eta*2); //hole
            //BATTERY_PACK_18650 
		}
        for (i=XYpinF) translate(i) pinF();
//		translate([53.340,10.160,0])rotate([0,0,270])1X01();  //+5V 
//		translate([30.480,10.160,0])rotate([0,0,180])1X01();  //A0 
//		translate([50.800,10.160,0])rotate([0,0,180])1X01();  //A7 
//		translate([66.040,27.940,0])rotate([0,0,180])1X06();  //BLUETOOTH 
//		translate([22.860,25.400,0])rotate([0,0,180])1X01();  //D12 
//		translate([22.860,10.160,0])rotate([0,0,180])1X01();  //D13 
//		translate([50.800,25.400,0])rotate([0,0,270])1X01();  //GND 
//		translate([55.880,10.160,0])rotate([0,0,270])1X01();  //GND1 
//		translate([40.640,25.400,0])1X04();  //JP1 
//		translate([55.880,25.400,0])1X02();  //JP2 
//		translate([27.940,25.400,0])1X04();  //JP3 
//		translate([22.860,33.020,0])rotate([0,0,270])1X03();  //JP4 
//		translate([50.800,27.940,0])rotate([0,0,180])1X06();  //LEFT_M 
//		translate([54.610,12.700,0])AXIAL_0_3EZ();  //R3 1k
//		translate([50.800,19.050,0])rotate([0,0,270])AXIAL_0_3EZ();  //R4 1k
//		translate([25.400,30.480,0])1X06();  //RIGHT_M 
//		translate([39.370,20.320,0])BATTERY_PACK_18650();  //U$3 18650
//		translate([10.871,20.320,0])3_2();  //U$15 
//		translate([67.869,20.320,0])3_2();  //U$16 
//		translate([58.420,10.160,0])rotate([0,0,270])1X01();  //VIN0 
	}
}
module batt_electronics() translate ([0,-20.120,-1.6]) {
    echo ("fori bulloni=[67.869-1.8, 0], [10.871, 0];");
translate ([36.05,20,-12]) rotate([90,180,90]) import("./supporto batterie/batt.stl", convexity=3);
cnc(); //Show module
translate([62.2,17.8,8]) rotate ([0,0,90]) ArduinoNano();
}
batt_electronics();
//Created by generate-scad.ulp version 0.1
