module tail_front(){
  difference(){
  scale([0.6,0.3,0.6])
  linear_extrude(file = "tail/front.dxf",height = 200, convexity = 10);

  union(){
    translate([110,60,-1])
    cube([36,70,20]);
    translate([110,60,101])
    cube([36,70,20]);
    translate([110,60,30])
    cube([16,70,60]);

  }
}

}

module tail_back(){

  difference(){
  scale([0.6,0.3,0.6])
  scale([0.6,1,1])
  translate([120,0,0])
  linear_extrude(file = "tail/back.dxf",height = 200, convexity = 10);
  union(){
    translate([110,60,18])
    cube([22,70,120-36]);
  }
}
}

module tail_rod(){
      translate([110, 0, -12])rotate([0,90,0])cylinder(r=3.7,h=370);
}

module tail_unstranlated(){
difference(){
union(){
  tail_front();
  tail_back();
}
    translate([120,65,-1])
cylinder(r=2,h=200);

}
}

module tail(){
  translate([400,-65.2,-13]) tail_unstranlated();
}

module tail_socket(){
  difference(){
    translate([460,0,-11]) cube([90,20,5],center=true);
    union(){
      tail_rod();
      translate([460,-6,-30]) cylinder(r=2,h=400);
     translate([500,-6,-30]) cylinder(r=2,h=400);
     translate([425,-6,-30]) cylinder(r=2,h=400);
     translate([460,6,-30]) cylinder(r=2,h=400);
     translate([500,6,-30]) cylinder(r=2,h=400);
     translate([425,6,-30]) cylinder(r=2,h=400);
    }
  }
}

module tail_socket_bottom(){
  difference(){
    translate([460,0,-17]) cube([90,20,5],center=true);
    union(){
      tail_rod();
      translate([460,-6,-30]) cylinder(r=2,h=400);
     translate([500,-6,-30]) cylinder(r=2,h=400);
     translate([425,-6,-30]) cylinder(r=2,h=400);
     translate([460,6,-30]) cylinder(r=2,h=400);
     translate([500,6,-30]) cylinder(r=2,h=400);
     translate([425,6,-30]) cylinder(r=2,h=400);

    }
  }
}

module back_wheel(){
difference(){
 translate([485,0,-28]) cube([20,6,20],center=true);
 translate([485-10,-6+12,-28-20]) rotate([0,45,0]) cube([40,40,40],center=true);
}
}

difference(){
tail();
    tail_rod();
}
//tail_rod();
tail_socket();
tail_socket_bottom();

back_wheel();

