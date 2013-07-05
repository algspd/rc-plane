$fn=20;
use <wings.scad>
use <nose.scad>;
use <cover.scad>;
use <tail.scad>;


module boxing(){
      difference() {
        // Down cylinder
        rotate([0, 90, 0]) cylinder(r = 70 / 2, h = 155);
        union () {
          // Remove top
          translate([-10,-100,25]) cube([200,200,200]);
          // Remove inner
          translate([1,0,0]) rotate([0,90,0]) cylinder(r=69/2,h=153);
        }
      }
}

module outer_body_cuts(){
  //translate([-30,-70/2-200,5]) rotate([-10/2,0,0]) cube([200, 200, 40]);
  //mirror([0,1,0])translate([-30,-70/2-200,5]) rotate([-10/2,0,0]) cube([200, 200, 40]);
  rods_both_wings();
  translate([-1,-100,-75]) cube([2000,2000,50]);

}


module rod_supports(){
  // Supports for wing rods (without holes)

difference(){
union(){
  // rod suport front (with cover screw holes)
    translate([1, -40, 7]) cube([18, 80, 17]);
    translate([1, -3/2, -40]) cube([18, 3, 60]);
    translate([1, -40, -25]) cube([18, 80, 8]);

  difference(){
    union(){
      // rod suport back (with cover screw holes)
      translate([135, -40, 1]) cube([18, 80, 23]);
      translate([136, -3/2, -40]) cube([18, 3, 48]);
    }
    union(){
      translate([134, -46/2, 12])
      cube([19+2, 46, 30]);
    }
  }
}
  difference(){
    rotate([0, 90, 0]) cylinder(r = 100 / 2, h = 155);
    rotate([0, 90, 0]) cylinder(r = 70 / 2, h = 155);
  }
}

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

module cover_supports(){

  // Right cover support
  right_cover_support();
  mirror([0,1,0]){right_cover_support();}
}
module motor_wiring_holes(){
  // Motor wiring holes
  translate([-1,-20,-16]) cube([20,15,13]);
  translate([-1,5,-16]) cube([20,15,13]);
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
}

module body(){

    difference() {
      union () {
        boxing();
        rod_supports();
        cover_supports();
        front_back_covers();
        bottom_plate();
        tail_rod_support();
        tail_rod_cover();
      }
      union () {
        motor_wiring_holes();
        cover_holes();
        outer_body_cuts();
        nose_holes();
        tail_rod();
        tail_rod_screws();
      }
    }
  }

module tail_rod_screws(){
  translate([122, -7, -24]) cylinder(r=2,h=22);
  mirror([0,1,0])translate([122, -7, -24]) cylinder(r=2,h=22);

  translate([129, -7, -24]) cylinder(r=2,h=22);
  mirror([0,1,0])translate([129, -7, -24]) cylinder(r=2,h=22);
}

module tail_rod_support(){
    translate([135, -10, -24]) cube([18, 20, 20]);
    translate([135-18, -10, -24]) cube([18, 20, 10]);
}

module tail_rod_cover(){
    translate([135-18, -10, -14+2]) cube([16, 20, 8]);
}

// FIXME <--------------------------------------------------------- FIXME
// Faltan las tuercas del tail_rod_cover, tienen que ir empotradas en la parte de abajo


  body();
  nose();
  //cover();
  //both_wings();