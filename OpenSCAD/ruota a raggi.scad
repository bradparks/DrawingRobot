/* [Wheel] */
// Diameter of wheel in mm.
wheel_diameter = 60;
//n°raggi
raggi=11;
// Increase shaft cutout size in mm if your printer is not calibrated.
fudge_factor = 0;
// Qualità render (numero di facce nelle curve)
fn=360;

difference(){
	union()	{
		//rim
		difference () {
			cylinder (r=wheel_diameter / 2, h=4, $fn=fn);
			translate([0,0,-.05]) cylinder (r=(wheel_diameter / 2)-1.8, h=4.1, $fn=fn);
		}
		// add spokes (circular cut-outs) raggi
		for(i = [0:raggi]){
			rotate([0, 0, i * 360 / raggi+1])
			translate([-0.9, 0, 0])
			cube([1.8, (wheel_diameter/2)-0.9,  4]);
		}
		//boss
		cylinder(r=12 / 2, h=10, $fn=fn);
		//profilo interno
		translate([0, 0, 0]) 		rotate_extrude(convexity=10, $fn=fn)		translate([(wheel_diameter / 2)-1.8,2, 0])		rotate([0,0,45])
		square([4/sqrt(2),4/sqrt(2)],center=true);
	}
	union()	{
		//shaft cutout (shaft with flat)
		translate([0, 0, 0.6])
		intersection(){
			cylinder(r=5.5 / 2 + fudge_factor, h=12, $fn=fn/4); // was 5
			translate([0, 0, 4]) cube([3.0 + fudge_factor, 12, 12],
				center=true); // was 2.5
			}
			// set screw for M3
			translate([0, 0, 7])
			rotate([90, 0, 90])
			cylinder(r=1.5, h=60, center=true, $fn=fn/4); // was 1
			//rim groove cutout
			translate([0, 0, 2])
			rotate_extrude(convexity=10, $fn=fn)
			translate([wheel_diameter / 2, 0, 10])
			rotate([0,0,45])
			square([2,2],center=true);
		}
	}
