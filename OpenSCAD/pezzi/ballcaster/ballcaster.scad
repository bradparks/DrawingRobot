//    https://www.pololu.com/product/955

module ballcaster(hBull) rotate([180,0,0]) {
//$fn=90;
inch=25.4;
r=0.438*inch;
h=0.825*inch;
DistScrew=0.610*inch/2;
DiaScrew=0.095*inch;
HScrew=8;
sfera=0.75*inch/2;
echo(r,h,0.75*inch);

color ([.1,.1,.1,1]) {
    echo ("diametro=[11.1252,0,0]");
    cylinder(h=h-sfera, r=r);
    translate ([0,0,h-sfera])
        cylinder(h=2, r1=r,r2=r-2);
}
color ("gray") {
    translate ([0,0,h-sfera])sphere(sfera);
//    viti
    for (m=[[0,0,0],[1,0,0]] ) mirror(m){
        translate([DistScrew,0,-HScrew]) cylinder(h=HScrew,d=DiaScrew);
        translate([DistScrew,0,-hBull]) cylinder(h=2.12,d=5.25,$fn=6);
    }
}
}
ballcaster(5);