
difference(){
  cube([10,24+3+3,4]);
  union(){
    translate([5,3,0]) cylinder(r=2.2,h=100);
    translate([5,24+3,0]) cylinder(r=2.2,h=100);
  }
}

difference(){
  union(){
    translate([0,7.5,0])cube([10,5,20]);
    translate([0,30-7.5-5,0])cube([10,5,20]);
  }
  translate([5,50,15])  rotate([90,0,0]) cylinder(r=2.2,h=100);
}




translate([0,0,-10]){
difference(){
  cube([10,24+3+3,4]);
  union(){
    translate([5,3,0]) cylinder(r=2.2,h=100);
    translate([5,24+3,0]) cylinder(r=2.2,h=100);
  }
}
}