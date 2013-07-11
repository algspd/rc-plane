
use <wings.scad>;
use <nose.scad>;
use <tail.scad>;
use <body_rib.scad>;
use <wings_support.scad>;

module boxing(){

  // First rib
  translate([5,0,0]) body_rib(3);

  // Last rib
  translate([152,0,0]) body_rib_solid(3);

  // Medium rib (if necessary)
  translate([80,0,0]) body_rib(3);

}


module right_cover_support(){
  // Right cover support
  difference(){
    translate([0,60/2-15,14])
    cube([155,10,10]);
    translate([-1,60/2-15-20-6,13])
    rotate([-55,0,0])
    cube([157,30,30]);
  }
}


module front_back_covers(){
  difference(){
    union(){
      rotate([0,90,0]) cylinder(r = 70 / 2, h = 2);
      translate([155-2,0,0]) rotate([0, 90, 0]) cylinder(r = 70 / 2, h = 2);
    }
    translate([-10,-100,24]) cube([200,200,200]);
  }
}

module bottom_plate(){
  translate([0,-24,-25]) cube([155,48,2]);
  translate([8,-24,-25]) cube([10,10,10]);
  translate([8,-24+48-10,-25]) cube([10,10,10]);

  translate([155-10-3.5,-24,-25]) cube([10,10,10]);
  translate([155-10-3.5,-24+48-10,-25]) cube([10,10,10]);
}

module upper_plate(){
translate([0,0,2])
difference(){
  rotate([180,0,0])bottom_plate();
  translate([19,-24+4,20]) cube([155-8-30,40,20]);
}
}


module carbon_fiber_holes(){
  translate([0,33,0])
  rotate([0,90,0])
  cylinder(r=2,h=155);
  translate([0,-33,0])
  rotate([0,90,0])
  cylinder(r=2,h=155);

  translate([0,-30,14])
  rotate([0,90,0])
  cylinder(r=2,h=155);
  translate([0,30,14])
  rotate([0,90,0])
  cylinder(r=2,h=155);

  translate([0,-30,-14])
  rotate([0,90,0])
  cylinder(r=2,h=155);
  translate([0,30,-14])
  rotate([0,90,0])
  cylinder(r=2,h=155);


}

module body(){

    difference() {
      union () {
        boxing();
        //rod_supports();
        //front_back_covers();
        bottom_plate();
        upper_plate();
        tail_rod_support();
        tail_rod_cover();
        carbon_fiber_holes();
        
      }
      union () {
        nose_holes();
        tail_rod();
        tail_rod_screws();
        carbon_fiber_holes();

      }
    }
  }

module tail_rod_screws(){
  translate([121, -7, -50]) cylinder(r=2,h=100);
  mirror([0,1,0])translate([121, -7, -50]) cylinder(r=2,h=100);

  translate([128, -7, -50]) cylinder(r=2,h=100);
  mirror([0,1,0])translate([128, -7, -50]) cylinder(r=2,h=100);
}

module tail_rod_support(){
    translate([134, -10, -24]) cube([18, 20, 20]);
    translate([134-18, -10, -24]) cube([18, 20, 10]);
}

module tail_rod_cover(){
    translate([134-18, -10, -14+2]) cube([16, 20, 8]);
}


  body();
  nose();
  motor_plate();
  both_wings();
  //tail_full();
  tail_rod();
  rod_supports();