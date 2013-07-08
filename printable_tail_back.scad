use <tail.scad>;
scale(0.8)
difference(){



  difference(){
     tail_back();
    tail_rod();
  }
  translate([120,65,-1])cylinder(r=2,h=200);

}

