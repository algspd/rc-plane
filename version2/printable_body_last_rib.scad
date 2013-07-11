use <body.scad>;
use <wings.scad>;
use <nose.scad>;
use <tail.scad>;
use <body_rib.scad>;


difference(){
union(){
translate([152,0,0]) body_rib_solid(3);

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
