include <functions.scad>;
include <dimensions.scad>;
include <lib/dimlines.scad>;

showDimensions = true;
panel_color = [0.95, 0.75, 0.3, 1];

stud_color = [1, 0.9, 0.8, 1];

module stud(l) {
    cube([in(3.5), in(1.5), l]);
}

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
    color(panel_color)
    difference() {
        cube([front_table_window_insert_x,front_table_window_insert_y,in(0.75)]);
        translate([ft(1.5),0,-1])
        cube([ft(6), in(4), in(3)]);
    }
    if (showDimensions) {
        color("black")
        translate([0,7,2])
        dimensions(length=front_table_window_insert_x/2);
        color("black")
        translate([7,0,2])
        rotate([0,0,90])
        dimensions(length=front_table_window_insert_y);
    }
}

module left_table() {
    color(panel_color)
    cube([left_table_x, left_table_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_table_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_table_y);
    }
}

module front_center_table() {
    color(panel_color)
    cube([front_center_table_x, front_center_table_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=front_center_table_x);
        color("black")
        translate([5,0,2])
        rotate([0,0,90])
        dimensions(length=front_center_table_y);
    }
}

module left_lower_shelf_1() {
    color(panel_color)
    cube([left_lower_shelf_1_x, left_lower_shelf_1_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_lower_shelf_1_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_lower_shelf_1_y);
    }
}


module left_upper_shelf_1() {
    color(panel_color)
    cube([left_upper_shelf_1_x, left_upper_shelf_1_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_upper_shelf_1_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_upper_shelf_1_y);
    }
}

module left_upper_shelf_2() {
    color(panel_color)
    cube([left_upper_shelf_2_x, left_upper_shelf_2_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_upper_shelf_2_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_upper_shelf_2_y);
    }
}

module left_upper_shelf_3() {
    color(panel_color)
    cube([left_upper_shelf_3_x, left_upper_shelf_3_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_upper_shelf_3_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_upper_shelf_3_y);
    }
}

module left_upper_shelf_4() {
    color(panel_color)
    cube([left_upper_shelf_4_x, left_upper_shelf_4_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_upper_shelf_4_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_upper_shelf_4_y);
    }
}

module left_upper_shelf_5() {
    color(panel_color)
    cube([left_upper_shelf_5_x, left_upper_shelf_5_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=left_upper_shelf_5_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=left_upper_shelf_5_y);
    }
}

module right_hinged_table() {
    color(panel_color)
    cube([right_hinged_table_x, right_hinged_table_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=right_hinged_table_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=right_hinged_table_y);
    }
}

module right_upper_shelf_1() {
    color(panel_color)
    cube([right_upper_shelf_1_x, right_upper_shelf_1_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=right_upper_shelf_1_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=right_upper_shelf_1_y);
    }
}

module right_upper_shelf_2() {
    color(panel_color)
    cube([right_upper_shelf_2_x, right_upper_shelf_2_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=right_upper_shelf_2_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=right_upper_shelf_2_y);
    }
}

module right_upper_shelf_3() {
    color(panel_color)
    cube([right_upper_shelf_3_x, right_upper_shelf_3_y, in(0.75)]);
    if (showDimensions) {
        color("black")
        translate([0,10,2])
        dimensions(length=right_upper_shelf_3_x);
        color("black")
        translate([10,0,2])
        rotate([0,0,90])
        dimensions(length=right_upper_shelf_3_y);
    }
}

// ============= STUDS ==================

module stud_front_right_corner() {
    color(stud_color)
    stud(stud_front_right_corner_l);
}

module stud_front_left_corner() {
    color(stud_color)
    stud(stud_front_left_corner_l);
}

module stud_front_top_crossbeam() {
    color(stud_color)
    stud(stud_front_top_crossbeam_l);
}

module stud_under_front_desk_crossbeam() {
    color(stud_color)
    stud(stud_under_front_desk_crossbeam_l);
}

module stud_under_right_front_desk_crossbeam() {
    color(stud_color)
    stud(stud_under_right_front_desk_crossbeam_l);
}

module stud_under_right_rear_desk_crossbeam() {
    color(stud_color)
    stud(stud_under_right_rear_desk_crossbeam_l);
}

module stud_under_left_front_desk_crossbeam() {
    color(stud_color)
    stud(stud_under_left_front_desk_crossbeam_l);
}

module stud_under_left_rear_desk_crossbeam() {
    color(stud_color)
    stud(stud_under_left_rear_desk_crossbeam_l);
}

module stud_support_under_front_desk() {
    color(stud_color)
    stud(stud_support_under_front_desk_l);
}

module stud_right_rear_corner() {
    color(stud_color)
    stud(stud_right_rear_corner_l);
}

module stud_left_rear_corner() {
    color(stud_color)
    stud(stud_left_rear_corner_l);
}

module stud_right_wall_middle() {
    color(stud_color)
    stud(stud_right_wall_middle_l);
}

module stud_left_wall_middle() {
    color(stud_color)
    stud(stud_left_wall_middle_l);
}

module stud_right_wall_top_rear() {
    color(stud_color)
    stud(stud_right_wall_top_rear_l);
}

module stud_rear_top_crossbeam() {
    color(stud_color)
    stud(stud_rear_top_crossbeam_l);
}

module stud_hinged_table_support() {
    color(stud_color)
    stud(stud_hinged_table_support_l);
}


echo(ft(1.5));
echo(convert_to_inches(ft(0.5)));
echo(convert_to_inches(ft(1.0)));
echo(convert_to_inches(ft(1.05)));
echo(convert_to_inches(ft(1.5)));
echo(convert_to_inches(ft(1.55)));

length = ft(1.5);
inches_denominator=32;

echo(round(((remove_feet(length)/units_per_inch) - floor(remove_feet(length)/units_per_inch))*inches_denominator));
