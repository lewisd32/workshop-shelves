include <dimensions.scad>;
use <panels.scad>;

kerf=0.3;

translate([0,0,-1])
cube([ft(4), ft(8), in(0.75)]);

translate([ft(5),0,-1])
cube([ft(4), ft(8), in(0.75)]);

translate([ft(10),0,-1])
cube([ft(4), ft(8), in(0.75)]);

translate([ft(15),0,-1])
cube([ft(4), ft(8), in(0.75)]);


// first sheet
translate([0,0,0]) {
    translate([0,0,0])
    right_upper_shelf_1();

    translate([ft(1.5)+kerf,0,0])
    right_upper_shelf_2();

    translate([front_table_window_insert_y+(ft(1.5)+kerf)*2,0,0])
    rotate([0,0,90]) {
        intersection() {
        front_table_window_insert();
        translate([-in(1),-10,-5])
        cube([front_table_window_insert_x/2+in(1),50,10]);
        }
    }
}

// second sheet
translate([ft(5),0,0]) {

    translate([0,0,0])
    left_upper_shelf_4();

    translate([ft(1.5)+kerf,0,0])
    left_upper_shelf_5();

    translate([front_table_window_insert_y+(ft(1.5)+kerf)*2,0,0])
    rotate([0,0,90]) {
        intersection() {
        front_table_window_insert();
        translate([-in(1),-10,-5])
        cube([front_table_window_insert_x/2+in(1),50,10]);
        }
    }
}

// third sheet
translate([ft(10),0,0]) {
    translate([ft(1.5)+kerf,left_upper_shelf_3_y+kerf,0])
    left_table();

    translate([ft(1.5)+kerf,0,0])
    left_upper_shelf_1();

    translate([0,0,0])
    left_upper_shelf_2();

    translate([0,left_upper_shelf_2_y+kerf,0])
    left_upper_shelf_3();

    translate([(ft(1.5)+kerf)*2,0,0])
    front_center_table();
}

// fourth sheet
translate([ft(15),0,0]) {
    translate([0,0,0])
    right_upper_shelf_3();

    translate([ft(1.5)+kerf,0,0])
    right_hinged_table();

}