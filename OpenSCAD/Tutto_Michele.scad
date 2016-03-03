use <./pezzi/stepper/28BYJ_stepper.scad>;
use <./pezzi/servo/SG90_servo.scad>;

spessore=2.4;

module supportoStepper()
{
for(i = [ [0,0,0],
         [0,1,0] ])
mirror(i) 
difference() {
    union() {
        translate([0,17.5,0]) rotate ([0,0,0]) cylinder(r=6, h=spessore, $fn=32);
        translate([-14,0,0]) cube ([14,17.5+6,spessore]);
        translate([-14,23.5-spessore,-14])  cube ([14,spessore,14]);
    }

    rotate([0,180,0]) color("green") translate([8,0,-1.5]) cylinder(h = 19, r = 4.5, center = true, $fn = 32);
    rotate([0,180,0]) color("green") translate([0,0,-spessore])    cube([8,11.5,10]);
    color("red") translate([0,17.5, 0])  cylinder(h = 10, r = 2,  $fn = 32);
    translate([0,23.5-spessore,-14]) rotate([270,0,0]) cylinder(r=14, h=spessore);
}
}
for(e = [ [0,0,0],
          [1,0,0] ])
mirror(e) translate([30,0,0]) rotate([0,90,0]) 
{
translate ([14,0,0])
{
    supportoStepper();
    rotate([0,180,0]) translate([0,0,9.5]) StepMotor28BYJ();
}
translate([-spessore, -23.5, spessore-40])    cube([spessore,spessore,40]);
translate([-spessore, 23.5-spessore, spessore-40])    cube([spessore,spessore,40]);
}
difference ()
{
    union() {
        translate ([0,0,-30]) cylinder (r=6,h=30+spessore);
        translate ([-30-spessore,-spessore/2,0]) cube([60+2*spessore,spessore,spessore]);
//        translate ([-30-spessore,-23.5,-17.5+spessore]) cube([60+2*spessore,spessore,spessore]);
//        translate ([-30-spessore,23.5-spessore,-17.5+spessore]) cube([60+2*spessore,spessore,spessore]);
        rotate ([0,0,35])        translate ([-sqrt(pow(60,2)+pow(40,2))/2-spessore,-spessore/2,0]) cube([sqrt(pow(60,2)+pow(40,2))+2*spessore,spessore,spessore]);
        rotate ([0,0,-35])        translate ([-sqrt(pow(60,2)+pow(40,2))/2-spessore,-spessore/2,0]) cube([sqrt(pow(60,2)+pow(40,2))+2*spessore,spessore,spessore]);

        translate ([-spessore/2,-20-spessore,0]) cube([spessore,40+2*spessore,spessore]);
        translate ([-30-spessore,-20-spessore,0]) cube([spessore,40+2*spessore,spessore]);
        translate ([30,-20-spessore,0]) cube([spessore,40+2*spessore,spessore]);
    }
    translate ([0,0,-30]) cylinder (r=4,h=30+spessore);
    }
    rotate([0,90,90]) translate([0,-6.2,-35]) servoSG90(32);