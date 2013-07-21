difference(){
union(){
scale([0.4,0.4,1]) linear_extrude(file = "servo_stick.dxf",
height = 4, convexity = 10
);
 translate([11,3.5,4])cube([16,4,10]);
}

union(){

translate([15,20,9])rotate([90,0,0])cylinder(r=2.1,h=100);
translate([23,20,9])rotate([90,0,0])cylinder(r=2.1,h=100);
translate([8,11,-10])cylinder(r=1.2,h=100);
translate([8,16,-10])cylinder(r=1.2,h=100);
translate([8,21,-10])cylinder(r=1.2,h=100);
translate([8,26,-10])cylinder(r=1.2,h=100);
translate([8,31,-10])cylinder(r=1.2,h=100);

}
}

difference(){
 translate([11,3.5-4,0])rotate([90,0,0])cube([16,4,10]);
union(){
translate([15,-5.5,-1])cylinder(r=2.1,h=100);
translate([23,-5.5,-1])cylinder(r=2.1,h=100);
}
}
