module solid_rib(){
scale(0.42)
linear_extrude(file = "rib/NACA_4415_circles_lighter.dxf",
height = 10, convexity = 10
);
}


module rib(rod_leading,rod_trailing){
difference(){
solid_rib();
translate([12,11,-1])
cylinder(r=rod_leading/2,h=100);

translate([146,5,-1])
cylinder(r=rod_trailing/2,h=100);

}
}

rib(8,6);

