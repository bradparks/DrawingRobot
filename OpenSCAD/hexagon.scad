use <./pezzi/ballcaster/ballcaster.scad>;
use <./pezzi/elettronica/elettronica.scad>;
use <./pezzi/stepper/28BYJ_stepper.scad>;
use <./pezzi/servo/servo.scad>;

use <./ruota_motore2.scad>;
use <./Pen_Holder2.scad>;

render=1;

h=5;
larghezzaBarre=7.8;
Xelettronica=46.98;
DiametroBallcaster=20.955;
DiametroPenna=14;
hPenna=30;
DiametroMotori=30;
raggio=Xelettronica+DiametroBallcaster+DiametroPenna/2;
altezza=raggio*sqrt(3)/2;
echo(raggio,"raggio");

hM3=2;
yTriangolo=105;
xBoard=yTriangolo/2*sqrt(3)-9; //77.01;

module forma(lati){
    difference() {
        //raggi
        for (r=[0:1:lati]) rotate([0,0,360/lati*r]) translate([0,-larghezzaBarre/2,0]) cube([raggio-larghezzaBarre,larghezzaBarre,h]);
        //foro penna
        translate([0,0,-.1]) cylinder(h=hPenna+.2,d=DiametroPenna-2.4,$fn=30);
    }
    difference () {
        //lati
        cylinder(h=h,r=raggio, $fn=lati);
        translate([0,0,-.1]) cylinder(h=h+.2,r=raggio-larghezzaBarre, $fn=lati);
    }
}
module portapenna()difference(){
    cylinder(h=hPenna,d=DiametroPenna,$fn=30);
    translate([0,0,-.1]) cylinder(h=hPenna+.2,d=DiametroPenna-2.4,$fn=30);
}
portapenna();
rotate([0,0,45/2]) forma(8);
translate([raggio-larghezzaBarre,0,0,])rotate([0,0,0]) {
  difference () {
      //lati
      cylinder(h=h,r=raggio/2, $fn=3);
      translate([0,0,-.1]) cylinder(h=h+.2,r=raggio/2-larghezzaBarre, $fn=3);
  }}
module ballcaster_bulloni(){
    translate([altezza,0]) rotate([0,0,90]){
        ballcaster(h+.1);
        cylinder(h,d=DiametroBallcaster);
    }
}
//module ballcaster_bulloni() {
//    color("gray") for( i=fori_bulloni ) translate(i) cylinder(h=12,d=3.2,$fn=30); //M3
//    color("gray") for( i=fori_dadi ) translate(i) cylinder(h=2.125,d=5.5,$fn=6);//M3
//    translate([0,0,0]) ballcaster(h+1); //ballcaster (hBullone) //M2
//}
//difference(){
//    union() {
//    }
//    union() { //fori bulloni
//        translate([xBoard+larghezzaBarre/2,0,0]) cylinder(h=h,d=15);//foro penna
//        for( i=fori_bulloni ) translate(i) cylinder(h=12,d=3.2,$fn=30); //M3
//        for( i=fori_dadi ) translate(i) cylinder(h=hM3,d=5.5,$fn=6);//M3
//        translate([-12,0,-0.01]) ballcaster(h+1); //ballcaster (hBullone) //M2
//    }
//}

//pen e servo support
translate([0,0,0]) rotate([0,0,00]) pen_servo();
//mostra componenti
if (render==0) {
    ballcaster_bulloni();
//    translate([99.6,5.1,26]) rotate([90,0,180]) servo(32,$t);
    for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([0,altezza-2.8, 10.5]) ruota_motore(1,1,60,3,1);
    translate([altezza-Xelettronica/2-DiametroBallcaster/2,0,0]) rotate([0,0,-90]) elettronica(h,1,1);

}
if (render==1) for (m=[[0,0,0],[0,1,0]]) mirror(m) translate([0,altezza-2.8, 10.5]) ruota_motore(0,0,60,3,1); //ruota_motore(moror,wheel,wheel_diameter,raggi,oring)

//20.955 altezza ballcaster
//diametro ruote 60+ 3(o-ring) = 63/2 -20.955

//color([0.3,0.3,0.3,1]) translate([46,0,-20.955]) circle(r=200);
