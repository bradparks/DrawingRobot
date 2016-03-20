use <./ArduinoNanoXY/ArduinoNanoXY.scad>;
use <./ArduinoNanoXY/pinMxy.scad>;
use <./ArduinoNanoXY/pinFxy.scad>;
//import("./batt/batt.stl", convexity=3);   

module elettronica(h,componenti,battery){
	board_thickness = 1.600000;
	eta = 0.1;
	board_size = [72.695000,46.980000,board_thickness];
	board_origin = [9.525000,-0.635000];
    rialzo=[0,0,h];
    echo (board_thickness,"board_thickness");
    echo (board_size, "board_size");
    
    translate (rialzo) translate(-board_size/2-board_origin) {
	union(){
		color("green")difference(){
			translate(board_origin)cube(board_size); //Board
			translate([73.370,22.860,-eta])cylinder(r=1.600000, h=board_thickness+eta*2); //hole
			translate([18.070,22.860,-eta])cylinder(r=1.600000, h=board_thickness+eta*2); //hole
			translate([55.880,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([33.020,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([53.340,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([68.580,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([66.040,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([63.500,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([60.960,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([58.420,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([55.880,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
			translate([25.400,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([53.340,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([58.420,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
			translate([50.800,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 1
			translate([48.260,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 2
			translate([45.720,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 3
			translate([43.180,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 4
			translate([58.420,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X02 1
			translate([60.960,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X02 2
			translate([25.400,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 1
			translate([27.940,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 2
			translate([30.480,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 3
			translate([33.020,30.480,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X04 4
			translate([25.400,12.700,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X03 1
			translate([25.400,10.160,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X03 2
			translate([25.400,7.620,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X03 3
			translate([53.340,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([50.800,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([48.260,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([45.720,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([43.180,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([40.640,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
			translate([53.340,17.780,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$1
			translate([60.960,17.780,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$2
			translate([53.340,27.940,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$1
			translate([53.340,20.320,-eta])cylinder(r=0.450000, h=board_thickness+eta*2); //AXIAL-0.3EZ P$2
			translate([22.860,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 1
			translate([25.400,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 2
			translate([27.940,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 3
			translate([30.480,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 4
			translate([33.020,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 5
			translate([35.560,33.020,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X06 6
			translate([73.660,38.278,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //SWITCH-SPDT_LOCK.007S 1
			translate([73.660,35.560,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //SWITCH-SPDT_LOCK.007S 2
			translate([73.660,32.842,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //SWITCH-SPDT_LOCK.007S 3
			translate([82.420,32.360,-eta])cylinder(r=0.700000, h=board_thickness+eta*2); //BATTERY_PACK_18650 +3.7V_1
			translate([9.020,13.360,-eta])cylinder(r=0.700000, h=board_thickness+eta*2); //BATTERY_PACK_18650 +3.7V_2
			translate([9.020,32.360,-eta])cylinder(r=0.700000, h=board_thickness+eta*2); //BATTERY_PACK_18650 GND_1
			translate([82.420,13.360,-eta])cylinder(r=0.700000, h=board_thickness+eta*2); //BATTERY_PACK_18650 GND_2
			translate([60.960,15.240,-eta])cylinder(r=0.508000, h=board_thickness+eta*2); //1X01 1
		}
        if (componenti==1){
		translate([55.880,15.240,board_thickness])rotate([0,0,270])pinF(1,1);  //+5V 
		translate([33.020,15.240,board_thickness])rotate([0,0,180])pinF(1,1);  //A0 
		translate([53.340,15.240,board_thickness])rotate([0,0,180])pinF(1,1);  //A7 
		translate([68.580,33.020,board_thickness])rotate([0,0,180])pinF(6,1);  //BLUETOOTH 
		translate([25.400,15.240,board_thickness])rotate([0,0,180])pinF(1,1);  //D13 
		translate([53.340,30.480,board_thickness])rotate([0,0,270])pinF(1,1);  //GND 
		translate([58.420,15.240,board_thickness])rotate([0,0,270])pinF(1,1);  //GND1 
		translate([50.800,30.480,board_thickness])rotate([0,0,180])pinF(4,1);  //JP1 
		translate([58.420,30.480,board_thickness])pinF(2,1);  //JP2 
		translate([25.400,30.480,board_thickness])pinF(4,1);  //JP3 
		translate([25.400,12.700,board_thickness])rotate([0,0,270])pinM(3,1);  //JP4 
		translate([53.340,33.020,board_thickness])rotate([0,0,180])pinF(6,1);  //LEFT_M 
		translate([57.150,17.780,board_thickness+1])rotate([0,90,0])cylinder(h=6,d=2,$fn=30,center=true);  //R3 1k
		translate([53.340,24.130,board_thickness+1])rotate([0,0,270]) rotate([0,90,0])cylinder(h=6,d=2,$fn=30,center=true);  //R4 1k
		translate([22.860,33.020,board_thickness])pinF(6,1);  //RIGHT_M 
//		translate([73.660,35.560,0])SWITCH_SPDT_LOCK_007S();  //S1 
		translate([60.960,15.240,board_thickness])rotate([0,0,270])pinF(1,1);  //VIN0 
            
//Arduino
        translate([64.8,23,8])rotate([0,0,90])ArduinoNano();
//Supporto batteria 18650    
        if(battery==1) color([0.15,0.15,0.15,1]) translate ([43.3,22.77,-11.11]-rialzo) rotate([90,180,90]) import("./batt/batt.stl", convexity=3);  //U$3 18650
        }
	}
}
}

elettronica(10,1,1);