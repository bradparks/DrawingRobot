use <./pezzi/protoboard/ArduinoNano/ArduinoNano.scad>;
use <./pezzi/protoboard/ArduinoNano/pinF.scad>;
use <./pezzi/ballcaster/ballcaster.scad>;
use <./pezzi/batt_electronics.scad>;
use <./pezzi/stepper/28BYJ_stepper.scad>;
use <./wheel.scad>;


use <./Pen_Holder2.scad>;
//struttura coda ballcaster+batt+elettronica
//$fn=90;
//$fn=45;
h=5;
hM3=2.125;
xBoard=90; //77.01;
yTriangolo=110+11.1252;
larghezzaBarre=7.8;

fori_bulloni=[[66.069,0,-h], [10.871,0,-h]];    //h=10,d=3.2
fori_dadi=[[66.069,0,h-hM3+1], [10.871,0,h-hM3+1]];//h=2.125,d=5.5


difference(){
    union() {
        translate([-11.1252,0,0]) rotate([0,0,60]) cylinder(h=5,r=11.1252*2,$fn=3); //triangolo punta
        translate([0,-larghezzaBarre/2,0]) cube([xBoard,larghezzaBarre,h]);
        translate([xBoard,-yTriangolo/2,0]) cube([larghezzaBarre,yTriangolo,h]); //barra orizzontale
        for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([-larghezzaBarre*cos(30)-11.1252,0,0]) rotate([0,0,30]) cube([yTriangolo,larghezzaBarre,h]); //lati esterni -17.8
    }
    union() { //fori bulloni
        for( i=fori_bulloni ) translate(i) cylinder(h=12,d=3.2,$fn=30); //M3
        for( i=fori_dadi ) translate(i) cylinder(h=hM3,d=5.5,$fn=6);//M3
        translate([-12,0,0]) ballcaster(h); //ballcaster (hBullone) //M2
    }
}
//mostra componenti
union() {
    color("gray") for( i=fori_bulloni ) translate(i) cylinder(h=12,d=3.2,$fn=30); //M3
    color("gray") for( i=fori_dadi ) translate(i) cylinder(h=2.125,d=5.5,$fn=6);//M3
    translate([-12,0,0]) ballcaster(h+1); //ballcaster (hBullone) //M2
}

module ruota_motore() translate([0,16.55-6.1/2-9.5,0]) {
wheel(60,3,1);    //wheel(diametro,raggi,oring[0,1])
StepMotor28BYJ();
color("purple") translate([0,-4,0]){
for (   mX=[[1,0,0],[0,0,0]],
        mY=[[0,0,0],[0,0,1]]) mirror(mX) {
    mirror(mY) cube([21.1,3.6,8]);
    cube([17.6,3.6,8+3.5]);
    translate([17.6,0,8]) rotate([-90,0,0]) cylinder(h=3.6,r=3.5, $fn=30);
}
}
}

batt_electronics();
for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([xBoard+7.8/2,+yTriangolo/2, 63/2-20.955]){
    ruota_motore();
    //20.955 altezza ballcaster
    //diametro ruote 60+ 3(o-ring) = 63/2 -20.955
}   
//color([0.3,0.3,0.3,1]) translate([46,0,-20.955]) circle(r=200);
//translate([xBoard+7.8/2,0,0]) rotate([0,0,180]) pen_servo();
