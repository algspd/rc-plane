use <wings.scad>;

module rod_supports(){
  difference(){
  union(){
  translate([19+0.5,-24+4+0.5,25]) cube([155-8-30-1,40-1,5]);

  translate([19+0.5-18,-24+4+0.5-10,30]) cube([155-8-30-1+36,40-1+20,18]);
  }
  union(){
    rods_both_wings();
    translate([19.5,-20.5,33]) cube([155-8-30-1,40-1,50]);
    rotate([0,3,0]) translate([19+0.5-18,-24+4+0.5-10,49]) cube([155-8-30-1+36,40-1+20,18]);
  }
  }
}


  //both_wings();

//
//module rod_supports(){
//  // Supports for wing rods (without holes)
//
//difference(){
//union(){
//  // rod suport front (with cover screw holes)
//    translate([1, -40, 7]) cube([18, 80, 17]);
//    translate([1, -3/2, -40]) cube([18, 3, 60]);
//    translate([1, -40, -25]) cube([18, 80, 8]);
//
//  difference(){
//    union(){
//      // rod suport back (with cover screw holes)
//      translate([135, -40, 1]) cube([18, 80, 23]);
//      translate([136, -3/2, -40]) cube([18, 3, 48]);
//    }
//    union(){
//      translate([134, -46/2, 12])
//      cube([19+2, 46, 30]);
//    }
//  }
//}
//  difference(){
//    rotate([0, 90, 0]) cylinder(r = 100 / 2, h = 155);
//    rotate([0, 90, 0]) cylinder(r = 70 / 2, h = 155);
//  }
//}
//
//}
rod_supports();