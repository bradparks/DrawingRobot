/* [Wheel] */
//oring=on;
module wheel(wheel_diameter,raggi,oring) translate([0,10,0]) rotate([90,90,0]) {
// Diameter of wheel in mm.
//wheel_diameter = 60;
//n°raggi
//raggi=6;
fudge_factor = 0;
fn=100; //100
difference(){
	union()	{
		//rim
        difference () {
            cylinder (r=wheel_diameter / 2, h=4, $fn=fn);
            translate([0,0,-0.1]) cylinder (r=(wheel_diameter / 2)-1.8, h=4.2, $fn=fn);
        }
        // add spokes (circular cut-outs) raggi       
        for(i = [0:raggi]) rotate([0, 0, i * 360 / raggi+1]) translate([-0.9, 0, 0]) cube([1.8, (wheel_diameter/2)-0.9, 4]);
		//boss
		cylinder(r=12 / 2, h=10, $fn=fn);
        //profilo interno
        translate([0, 0, 0]) rotate_extrude(convexity=10, $fn=fn) translate([(wheel_diameter / 2)-1.8,2, 0]) rotate([0,0,45]) square([4/sqrt(2),4/sqrt(2)],center=true);
	}
	union()	{
		//shaft cutout (shaft with flat)
		translate([0, 0, 0.6]) intersection(){
			cylinder(r=5.5 / 2 + fudge_factor, h=12, $fn=fn*2/5); // was 5
			translate([0, 0, 4]) cube([3.0 + fudge_factor, 12, 12], center=true); // was 2.5
		}
		// set screw for M3
		translate([0, 0, 7]) rotate([90, 0, 90]) cylinder(r=1.5, h=60, center=true, $fn=fn*2/5); // was 1
		//rim groove cutout
		translate([0, 0, 2]) rotate_extrude(convexity=10, $fn=fn) translate([wheel_diameter / 2, 0, 10]) rotate([0,0,45]) square([2,2],center=true);
	}
}
if ( oring==1) { color([0.08,0.08,0.08,1]) translate([0, 0, 2]) rotate_extrude(convexity=10, $fn=fn) translate([wheel_diameter / 2, 0, 10]) rotate([0,0,45]) circle(3/2);}
//if ( oring==0){};
}
use <./pezzi/stepper/28BYJ_stepper.scad>;
translate([0,16.55-6.1/2-9.5,0]) {
wheel(60,6,0);
StepMotor28BYJ();
}