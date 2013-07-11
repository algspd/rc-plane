use <tail.scad>;
rotate([180,0,0]){
scale(0.8){
difference(){
  difference(){
     tail_back();
    tail_rod();
  }
  translate([120,65,-1])cylinder(r=2,h=200);

}

translate([117,65,30]) cylinder(r=1,h=85);

}
}