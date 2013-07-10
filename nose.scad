module nose_one_hole(){
  translate([-25,18,20])
  rotate([0,90,0])
  cylinder(r=2,h=60);
  nose_one_countersunk();
}

module nose_one_countersunk(){
  translate([-30,18,20])
  rotate([0,90,0])
  cylinder(r=3.2,h=20);
}

module nose_one_screw_cylinder(){
  translate([-21,18,20]) rotate([0,90,0]) cylinder(r=3.6,h=21);
}

module nose_screw_cylinders(){
  mirror([0,0,0]) nose_one_screw_cylinder();
  mirror([0,1,0]) nose_one_screw_cylinder();
  mirror([0,0,1]) nose_one_screw_cylinder();
  mirror([0,1,0])mirror([0,0,1]) nose_one_screw_cylinder();
}

module nose_holes(){
  mirror([0,0,0]) nose_one_hole();
  mirror([0,1,0]) nose_one_hole();
  mirror([0,0,1]) nose_one_hole();
  mirror([0,1,0])mirror([0,0,1]) nose_one_hole();
}

module nose(){

difference(){
  nose_no_holes();
  nose_holes();
}

}

module nose_no_holes(){
      nose_screw_cylinders();
translate([155,0,0])
rotate([0,180,0])
  difference(){
    union(){
      difference(){
          translate([155,0,0])
          rotate([0,90,0])
          cylinder(r1=35,r2=15,h=50);

        union(){

          // Inner
          translate([154,0,0])
          rotate([0,90,0])
          cylinder(r1=32,r2=12,h=52);

          // Upper plane
          translate([1,-100,-63+1])
          cube([2000,2000,38]);

          // Down plane
          translate([1,-100,27-3])
          cube([2000,2000,40]);
        }
      }
      // Upper plane
      translate([155+0.1,-25,-27])
      cube([30,50,3]);

      // Down plane
      translate([155+0.1,-25,26-4])
      cube([30,50,3]);

    }

    // Clear perimeter of nose
    difference(){
      translate([155,0,0])
      rotate([0,90,0])
      cylinder(r1=370,r2=170,h=60);

      translate([155,0,0])
      rotate([0,90,0])
      cylinder(r1=35,r2=15,h=50);

    }
  }
}
module 
motor_hole(){
  translate([-70,15.556/2,15.556/2])
  rotate([0,90,0])
  cylinder(r1=2,r2=2,h=100);
}
module motor_holes(){
  mirror([0,0,0])motor_hole();
  mirror([0,1,0])motor_hole();
  mirror([0,0,1])motor_hole();
  mirror([0,1,1])motor_hole();

}

module motor_plate(){
    difference(){

  translate([0,-35,-30])cube([5,70,70]);
  union(){
  difference(){
    translate([-1,0,0]) rotate([0,90,0]) cylinder(r=100,h=50);
    translate([0,0,0]) rotate([0,90,0]) cylinder(r=35,h=50);
  }
      // Upper plane
      translate([-1,-25,-35])
      cube([30,50,10]);

      // Down plane
      translate([-1,-25,27])
      cube([30,50,30]);

nose_holes();
motor_holes();

  }

    }



}

nose();

motor_plate();


