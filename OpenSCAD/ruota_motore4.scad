h=5;
spessore_supporto=2.8;
raggio=60;
altezza=raggio*sqrt(3);
mX=[[1,0,0],[0,0,0]];
mY=[[0,0,0],[0,0,1]]; 
	difference() {
		//blocco da cui sottrarre 
		translate([0,spessore_supporto-raggio/2,-10.5])  rotate([0,0,30]) cylinder(h=24, r=raggio, $fn=3);
		//blocco motore //curva Y
		translate([0,-spessore_supporto,8])
			rotate([90,0,0])
				cylinder(h=altezza,d=29, $fn=360);
		//curva X
		translate([-raggio,-24,24-h])
			rotate([0,90,0])
				cylinder(h=raggio*2,d=48, $fn=360);
		//spiana punta
		translate([-altezza/2,-altezza,-h])
			cube([altezza,altezza-24,30]);

		//curve 30°
		for (X=mX) mirror(X) 
			translate([altezza/2,spessore_supporto,24-h]) 
				rotate([90,0,-30]) 
					cylinder(h=raggio*2,d=48, $fn=360);
		motore();
		}
module motore() {
//foro motore
translate([0,-0.1,0])rotate([-90,0,0]) cylinder(h=spessore_supporto+0.2,r=5, $fn=60);
//foro viti
for (x=mX) mirror(x) 
	translate([17.6,-0.1,8]) rotate([-90,0,0]) cylinder(h=spessore_supporto+0.2,d=3.2, $fn=60);
//foro bulloni
for (x=mX) mirror(x) 
	translate([17.6,spessore_supporto-1,8]) rotate([-90,30,0]) cylinder(h=spessore_supporto+0.2,d=6.5, $fn=6);
}