use <./pezzi/protoboard/ArduinoNano/ArduinoNano.scad>;
use <./pezzi/protoboard/ArduinoNano/pinF.scad>;
use <./pezzi/ballcaster/ballcaster.scad>;
use <./pezzi/batt_electronics.scad>;
use <./pezzi/stepper/28BYJ_stepper.scad>;
use <./pezzi/servo/servo.scad>;

use <./wheel.scad>;
use <./ruota_motore2.scad>;
use <./Pen_Holder2.scad>;

render=1;
cuore=0;

h=5;
hM3=2.125;
yTriangolo=105;
xBoard=yTriangolo/2*sqrt(3)-9; //77.01;
larghezzaBarre=7.8;
fori_bulloni=[[66.069,0,-h], [10.871,0,-h]];    //h=10,d=3.2
fori_dadi=[[66.069,0,h-hM3+1], [10.871,0,h-hM3+1]];//h=2.125,d=5.5
module ottagono(a,h) {
r=2*a/sqrt(2+sqrt(2));  //raggio > apotema
	rotate([0,0,360/16])
		cylinder(h,r,r,$fn=8);
}


difference(){
    union() {
       // Se cuore = 1
        if (cuore==1) for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([xBoard+15,(yTriangolo+20)/4,0]) difference () {
            h=h-1;
            cylinder(h=h,d=(yTriangolo+35)/2,$fn=90);
            translate([0,0,-0.05]) cylinder(h=h+0.1,d=(yTriangolo+9)/2,$fn=90);
            translate([-40,-28,-0.05]) cube([40,54,h+0.1]);
        }
		translate([xBoard+7.8/2,0,0]) {	//ottagono e raggi
		difference(){
			ottagono((yTriangolo+larghezzaBarre)/2,h);
			translate([0,0,-.05]) ottagono(60-larghezzaBarre,h+.1);
			translate([-60,-60,-.05]) cube([75,60*2,h+.1]);
		}
		for(r=[-4:1:1]) rotate([0,0,360/8*r+67.5]) translate([0,-larghezzaBarre/2,0]) cube([59,larghezzaBarre,h]);
		//rinforzi penna
			intersection(){
		for(r=[-4:1:1]) rotate([0,0,360/8*r+67.5]) translate([0,-larghezzaBarre/6,h]) cube([25,larghezzaBarre/3,30]);
		translate([0,0,h]) cylinder(h=15,d1=50,d2=12,$fn=360);
		}
	}
		
        translate([-11.1252,0,0]) rotate([0,0,60]) cylinder(h=5,r=11.1252*2,$fn=3); //triangolo punta
      
        translate([-0.5,-larghezzaBarre/2,0]) cube([xBoard,larghezzaBarre,h]);//barra trasversale
//        translate([xBoard+7.8/2-21.6/2,-(yTriangolo)/2,0]) cube([21.6,yTriangolo,h]); //barra orizzontale (43 è un valora arbitrario)
        for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([-larghezzaBarre*cos(30)-11.1252,0,0]) rotate([0,0,30]) cube([yTriangolo-5.6,larghezzaBarre,h]); //lati esterni -17.8
    }
    union() { //fori bulloni
        translate([xBoard+larghezzaBarre/2,0,0]) cylinder(h=30,d=15);//foro penna
        for( i=fori_bulloni ) translate(i) cylinder(h=12,d=3.2,$fn=30); //M3
//        for( i=fori_dadi ) translate(i) cylinder(h=hM3,d=5.5,$fn=6);//M3
        translate([-12,0,-0.01]) ballcaster(h+1); //ballcaster (hBullone) //M2
    }
}
//mostra componenti
module ballcaster_bulloni() {
    color("gray") for( i=fori_bulloni ) translate(i) cylinder(h=12,d=2.8,$fn=30); //M2
    color("gray") for( i=fori_dadi ) translate(i) cylinder(h=2.125,d=5.7,$fn=6);//M2
    translate([-12,0,0]) ballcaster(h+1); //ballcaster (hBullone) //M2
}
//pen e servo support
translate([xBoard+7.8/2,0,0]) rotate([0,0,180]) pen_servo();
//mostra componenti
if (render==0) {
    ballcaster_bulloni();
    batt_electronics();
    translate([99.6,5.1,26]) rotate([90,0,180]) servo(32,$t);
    for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([xBoard+larghezzaBarre/2,(yTriangolo+larghezzaBarre)/2-2.8, 10.5]) ruota_motore(300,1,1,60,3,1); //ruota_motore(fn,moror,wheel,wheel_diameter,raggi,oring)
}    
if (render==1) for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([xBoard+larghezzaBarre/2,(yTriangolo+larghezzaBarre)/2-2.8, 10.5]) ruota_motore(300,0,0,60,3,1); //ruota_motore(fn,moror,wheel,wheel_diameter,raggi,oring)
    
//20.955 altezza ballcaster
//diametro ruote 60+ 3(o-ring) = 63/2 -20.955
   
//color([0.3,0.3,0.3,1]) translate([46,0,-20.955]) circle(r=200);

