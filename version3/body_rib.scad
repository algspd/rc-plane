module body_rib_solid(height){
difference(){
  translate([0,-35,-35])cube([height,70,70]);
  union(){
    difference(){
      translate([-1,0,0]) rotate([0,90,0]) cylinder(r=100,h=height+2);
      translate([-1,0,0]) rotate([0,90,0]) cylinder(r=35,h=height+2);
    }
    // Down plane
    translate([-1,-25,-35])cube([height+1,50,10]);
    // Upper plane
    translate([-1,-25,27])cube([height+1,50,30]);
  }
}
}


module body_rib(height){
  difference(){
    body_rib_solid(height);
    scale([1.1,0.7,0.7]) body_rib_solid(height);
  }
}


body_rib(3);