use <tail.scad>;

difference(){
  difference(){
    scale(0.8) translate([500,-65.2,-13]) 
    difference(){
      tail_front();
      union(){
        translate([120,65,-1]) cylinder(r=2.5,h=200);
        translate([100,65,-1]) cylinder(r=2.5,h=200);
        translate([72.5,65,-1]) cylinder(r=2.5,h=200);
        translate([45,65,-1]) cylinder(r=2.5,h=200);

      }
    }
    tail_rod();
  }
}

tail_socket();


elevator_fixed();
