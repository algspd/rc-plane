module solid_rib(){
linear_extrude(file = "rib/NACA_4415_circles_lighter.dxf",
height = 4, convexity = 10
);
}


module rib(rod_leading){
difference(){
solid_rib();
translate([3.8,10.2,-1])
cylinder(r=rod_leading/2,h=100);

translate([146,0,-10])
cube([30,4,100]);

translate([54,0,-10])
cube([5,6,100]);

translate([54,21,-10])
cube([5,6,100]);

}
}

rib(8,6);


