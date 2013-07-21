use <body.scad>;
use <wings.scad>;
use <nose.scad>;
use <tail.scad>;
use <body_rib.scad>;

rotate([180,0,0]){
difference(){
upper_plate();
union(){
  carbon_fiber_holes();
  nose_holes();
  tail_rod();
  tail_rod_screws();
}
}
}