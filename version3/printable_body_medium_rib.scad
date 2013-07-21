use <body.scad>;
use <wings.scad>;
use <nose.scad>;
use <tail.scad>;
use <body_rib.scad>;

rotate([0,90,0]){
difference(){
union(){
translate([80,0,0]) body_rib(3);

}

union(){
  carbon_fiber_holes();
  nose_holes();
  tail_rod();
  tail_rod_screws();
  tail_rod_support();
  bottom_plate();

}
}
}