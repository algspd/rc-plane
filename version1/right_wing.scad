 
use<rib.scad>;
use <left_wing.scad>



module vrib(){
rotate([90,0,0])
rib(8,6);
}

module rods_right_wing(){

mirror([0,1,0])
rods_left_wing();

}

module right_wing(){
mirror([0,1,0])
left_wing();

}

right_wing();