module tail_front(){
  difference(){
  translate([0,-22,0])
  scale([0.6,0.4,0.6])
  linear_extrude(file = "tail/front.dxf",height = 200, convexity = 10);

  union(){
    translate([110,60-5,-1])
    cube([36,70+5,20+15]);
    translate([110,60-5,101])
    cube([36,70+5,20]);
    translate([110,60-5,30+15])
    cube([16,70+5,60-15]);

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
    translate([110,60,18+15])
    cube([22,70,120-36-15]);
    translate([110,0,0]) rotate([0,45+14,0]) cube([100,297,300]);
    translate([110,0,-1-5+3]) cube([60,297,11]);
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
  difference(){
    scale(0.8) translate([500,-65.2,-13]) tail_unstranlated();
    tail_rod();
  }
}

module tail_socket(){
  difference(){
    translate([450,0,-10]) cube([70,20,5],center=true);
    union(){
      tail_rod();
      translate([450,-7,-100]) cylinder(r=2,h=400);
     translate([475,-8,-100]) cylinder(r=2,h=400);
     translate([425,-6,-100]) cylinder(r=2,h=400);
     translate([450,7,-100]) cylinder(r=2,h=400);
     translate([475,8,-100]) cylinder(r=2,h=400);
     translate([425,6,-100]) cylinder(r=2,h=400);
    }
  }
}

module tail_socket_bottom(){
  back_wheel();
  difference(){
    translate([450,0,-19]) cube([70,20,5],center=true);
    union(){
      tail_rod();
      translate([450,-7,-100]) cylinder(r=2,h=400);
     translate([475,-8,-100]) cylinder(r=2,h=400);
     translate([425,-6,-100]) cylinder(r=2,h=400);
     translate([450,7,-100]) cylinder(r=2,h=400);
     translate([475,8,-100]) cylinder(r=2,h=400);
     translate([425,6,-100]) cylinder(r=2,h=400);
    }
  }
}

module back_wheel(){
difference(){
 translate([470,0,-28]) cube([20,6,20],center=true);
 translate([470-10,-6+12,-28-20]) rotate([0,45,0]) cube([40,40,40],center=true);
}
}

module elevator_fixed(){
difference(){
  union(){
    translate([500*0.8,48/0.7,-66]) rotate([90,0,0])
    scale([0.48,0.24,0.7]) linear_extrude(file = "tail/front.dxf",height = 200, convexity = 10);
  }
  union(){
    tail_rod();
      translate([450,-7,-100]) cylinder(r=2,h=400);
     translate([475,-8,-100]) cylinder(r=2,h=400);
     translate([425,-6,-100]) cylinder(r=2,h=400);
     translate([450,7,-100]) cylinder(r=2,h=400);
     translate([475,8,-100]) cylinder(r=2,h=400);
     translate([425,6,-100]) cylinder(r=2,h=400);
    translate([150,-200,-17-5/2]) cube([1000,1000,5]);
    translate([490,-60,-100]) cube([50,117,300]);
    translate([497,200,-12.5]) rotate([90,0,0]) cylinder(r=1,h=400);
  }
}
}

module elevator(){
    elevator_fixed();
  difference(){
    difference(){
      translate([500*0.8-3+35,48/0.7,-66]) rotate([90,0,0]) scale([0.3,0.24,0.7])
      linear_extrude(file = "tail/back.dxf",height = 200, convexity = 10);
      union(){
        translate([150,-200,-17-5/2]) cube([1000,1000,5]);
        translate([490,-90,-100]) cube([16,31,300]);
        translate([490,-60+117+1-2,-100]) cube([16,297,300]);
      }
  }
    translate([497,200,-12.5]) rotate([90,0,0]) cylinder(r=1,h=400);
  }
  
}

tail();
tail_rod();
tail_socket();
tail_socket_bottom();
elevator();

