use <./pezzi/stepper/28BYJ_stepper.scad>;
use <./wheel.scad>;

module ruota_motore(moror,wheel,wheel_diameter,raggi,oring) translate([0,16.55-6.1/2-9.5,0]) {
if ( wheel==1) wheel(wheel_diameter,raggi,oring);    //wheel(diametro,raggi,oring[0,1])
if ( moror==1)StepMotor28BYJ();
    
h=5;
spessore_supporto=3.6;

mX=[[1,0,0],[0,0,0]];
mY=[[0,0,0],[0,0,1]];    
color ("purple")  translate([0,-4,0]){
    difference () {
        union() { //placca viola
            translate([0,-21.6/3*sqrt(3),-10.5]) rotate([0,0,30]) cylinder(h=h,r=21.6*2/3*sqrt(3), $fn=3);//triangolo
            translate([-21.6,0,-10.5])cube([21.6*2,spessore_supporto,8]);
            for (x=mX, y=mY) mirror(x) {
                mirror(y) cube([21.6,spessore_supporto,8]);
                cube([17.6,spessore_supporto,8+4]);
                translate([17.6,0,8]) rotate([-90,0,0]) cylinder(h=spessore_supporto,r=4, $fn=30);
                }
        }
        translate([0,-(21.6-spessore_supporto*2)/3*sqrt(3),-10.55]) rotate([0,0,30]) cylinder(h=h+0.1,r=(21.6-spessore_supporto*2)*2/3*sqrt(3), $fn=3);//triangolo
        //foro motore
        translate([0,-0.1,0])rotate([-90,0,0]) cylinder(h=spessore_supporto+0.2,r=3.7, $fn=60);
        //foro viti
        for (x=mX) mirror(x) 
            translate([17.6,-0.1,8]) rotate([-90,0,0]) cylinder(h=spessore_supporto+0.2,d=3.2, $fn=60);
        //foro bulloni
        for (x=mX) mirror(x) 
            translate([17.6,spessore_supporto-1,8]) rotate([-90,30,0]) cylinder(h=spessore_supporto+0.2,d=6.5, $fn=6);
    }
}
}
ruota_motore(1,1,60,6,1); //ruota_motore(moror,wheel,wheel_diameter,raggi,oring)