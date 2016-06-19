include <functions.scad>;
include <dimensions.scad>;

module corner_table() {
    color([0.9, 0.9, 0.9])
    difference() {
        cube([120, 120, in(1)]);
        translate([120,120,-1])
        cylinder(r=120-ft(1,11), h=in(3));
        
        translate([0,0,-1])
        cylinder(r=in(2), h=in(3));
    }
}

module front_table_window_insert() {
    difference() {
        cube([room_x,ft(1),in(0.75)]);
        translate([ft(1.5),0,-1])
        cube([ft(6), in(4), in(3)]);
    }
}

module left_table() {
    cube([ft(1.5), ft(4,7), in(0.75)]);
}

module front_left_table() {
    cube([room_x-120, ft(1,11), in(0.75)]);
}


module left_upper_shelf_1() {
    cube([ft(1.5), ft(3,7), in(0.75)]);
}

module left_upper_shelf_2() {
    cube([ft(1.5), ft(3,7), in(0.75)]);
}

module left_upper_shelf_3() {
    cube([ft(1.5), ft(3,7), in(0.75)]);
}

module left_upper_shelf_4() {
    cube([ft(1.5), ft(7,6), in(0.75)]);
}

module left_upper_shelf_5() {
    cube([ft(1.5), ft(7,6), in(0.75)]);
}

module left_lower_shelf() {
    cube([ft(1.5), ft(3,6), in(0.75)]);
}

module right_hinged_table() {
    cube([ft(1,10), ft(3,4.75) - in(1.5), in(0.75)]);
}


module right_upper_shelf_1() {
    cube([ft(1.5), ft(8,4), in(0.75)]);
}

module right_upper_shelf_2() {
    cube([ft(1.5), ft(8,4), in(0.75)]);
}

module right_upper_shelf_3() {
    cube([ft(1.5), ft(4,11.25), in(0.75)]);
}
