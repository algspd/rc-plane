use <body.scad>;
use <wings.scad>;
use <nose.scad>;
use <tail.scad>;
use <body_rib.scad>;


difference(){
union(){
translate([5,0,0]) body_rib(3);

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
