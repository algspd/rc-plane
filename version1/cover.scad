

module cover(){
difference(){
translate([5-2.2-2,5-58/2-0.5,25.1])
cube([154,49,2]);
cover_holes();
}
}


module cover_holes(){
translate([7.5,5-58/2+4,20])
cylinder(r=2,h=15);
translate([7.5-12+140+5,-5-58/2-4+58,20])
cylinder(r=2,h=15);
translate([7.5-12+140+5,5-58/2+4,20])
cylinder(r=2,h=15);
translate([7.5,-5-58/2-4+58,20])
cylinder(r=2,h=15);
}




cover();
//cover_holes();

