use <left_wing.scad>;
use <right_wing.scad>;



// wings 
dihedral_angle = 10;

module both_wings(){
    translate([2, 10, 0])
	rotate([-dihedral_angle / 2, 0, 0])
	left_wing();
    translate([2, -10, 0])
	rotate([dihedral_angle / 2, 0, 0])
	right_wing();
}

module rods_both_wings(){
    translate([2, 10, 0])
	rotate([-dihedral_angle / 2, 0, 0])
	rods_left_wing();
    translate([2, -10, 0])
	rotate([dihedral_angle / 2, 0, 0])
	rods_right_wing();
}


  


both_wings();
//translate([0,0,30])
//rods_both_wings();