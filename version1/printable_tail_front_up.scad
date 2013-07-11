use <tail.scad>;

difference(){
  difference(){

    difference(){
      tail_up_front();
      union(){
        scale(0.8) translate([500,-65.2,-13]){
        translate([120,65,-1]) cylinder(r=2.5,h=200);
        translate([100,65,-1]) cylinder(r=2.5,h=200);
        translate([72.5,65,-1]) cylinder(r=2.5,h=200);
        translate([45,65,-1]) cylinder(r=2.5,h=200);
}

      }
    }
    tail_rod();
  }
}

//tail_socket();


//elevator_fixed();

        scale(0.8) translate([500,-65.2,-13])
translate([126.5,65,21])cube([2,10,32],center=true);