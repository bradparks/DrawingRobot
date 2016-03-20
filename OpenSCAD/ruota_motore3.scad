use <./pezzi/stepper/28BYJ_stepper.scad>;
use <./wheel.scad>;

module ruota_motore(raggio,moror,wheel,wheel_diameter,raggi,oring) translate([0,16.55-6.1/2-9.5,0]) {
if ( wheel==1) translate([0,-1,0]) wheel(wheel_diameter,raggi,oring);    //wheel(diametro,raggi,oring[0,1])
if ( moror==1)StepMotor28BYJ();
    
h=5;
spessore_supporto=2.8;

mX=[[1,0,0],[0,0,0]];
mY=[[0,0,0],[0,0,1]];    
//color ("purple")
translate([0,-4,0]){
	difference () {
		union() { 

            difference() {
				//blocco da cui sottrarre 
				translate([raggio/2,spessore_supporto,-10.5]) rotate([0,0,180]) cube([raggio,raggio,24]);
				translate([-raggio/2-.1,-raggio-.1,-6.5])cube([raggio+.2,raggio*2/3+.1,22]);
                //blocco motore //curva Y
				translate([0,0,8])rotate([90,0,0])cylinder(h=raggio,d=29, $fn=360);
				//curva X
                translate([-raggio/2-.1,-24,24-6.5])rotate([0,90,0])cylinder(h=raggio+.2,d=48, $fn=360);
for (X=mX) mirror(X) translate([5,-raggio,13]) rotate([-90,0,-30]) cylinder(h=raggio*2+.2,d=48, $fn=360);
            }
        }

        //foro motore
        translate([0,-0.1,0])rotate([-90,0,0]) cylinder(h=spessore_supporto+0.2,r=5, $fn=60);
        //foro viti
        for (x=mX) mirror(x) 
            translate([17.6,-0.1,8]) rotate([-90,0,0]) cylinder(h=spessore_supporto+0.2,d=3.2, $fn=60);
        //foro bulloni
        for (x=mX) mirror(x) 
            translate([17.6,spessore_supporto-1,8]) rotate([-90,30,0]) cylinder(h=spessore_supporto+0.2,d=6.5, $fn=6);
    }
}
}
ruota_motore(100,1,1,60,6,1); //ruota_motore(moror,wheel,wheel_diameter,raggi,oring)