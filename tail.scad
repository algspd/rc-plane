

module tail_front(){
  difference(){
  scale(0.6)
  linear_extrude(file = "tail/front.dxf",height = 200, convexity = 10);

  union(){
    translate([110,80,-1])
    cube([36,70,20]);
    translate([110,80,101])
    cube([36,70,20]);
    translate([110,80,30])
    cube([16,70,60]);

  }
}

}

module tail_back(){

  difference(){
  scale(0.6)
  scale([0.6,1,1])
  translate([120,0,0])
  linear_extrude(file = "tail/back.dxf",height = 200, convexity = 10);
  union(){
    translate([110,80,18])
    cube([22,70,120-36]);
  }
}
}

module tail_rod(){
      translate([110, 0, -12])rotate([0,90,0])cylinder(r=3.7,h=400);
}

module tail(){
difference(){
union(){
  tail_front();
  tail_back();
}
    translate([120,130,18])
cylinder(r=2,h=200);

}
}

// FIXME --------------------------------------------------------------------- FIXME
// Align tail to the rod

tail();
tail_rod();

