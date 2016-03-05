mx=[[1,0,0],[0,0,0]]; //mirror X
x=55;
y=85;
z=9.7;
passo=2.54;

difference() {
    translate([-x/2,0,0]) cube([x,y,z]);
    union() {
        translate([-passo/2,0,passo*2]) cube([passo,y,z-passo*2]);
        for (i=mx) mirror(i) {
            translate([x/2-10,0,passo*2]) cube([0.2,y,z-passo*2]);
            for(a=[1:1:5], b=[1:1:30]) translate([a*passo+passo/2,b*passo+passo,passo*2]) cube([1,1,z-passo*2]);
            for(a1=[8,9], b1=[1,2,3,4,5, 7,8,9,10,11, 13,14,15,16,17, 19,20,21,22,23, 25,26,27,28,29]) translate([a1*passo,b1*passo+passo*3/2,passo*2]) cube([1,1,z-passo*2]);
        }
    }
}
