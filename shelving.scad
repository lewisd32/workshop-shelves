include <dimensions.scad>;
use <room.scad>;
use <panels.scad>;

PI=3.1415;

enableAnimation = true;
showPivots = true;

// smooth loop
anim_t = enableAnimation ? cos(($t+0.5)*360)/2+0.5 : 0;

echo(anim_t);

color("white")
room_wireframe();


translate([in(1), in(2), in(1)]) {

// MAIN DESK

translate([0,ft(1),in(table_z-1)])
corner_table();

translate([shelves_x,ft(1),in(table_z-1)])
rotate([0,0,90])
corner_table();

translate([0, 0, in(table_z)-in(0.75)])
front_table_window_insert();

translate([120,ft(1),in(table_z)-in(0.75)])
front_center_table();

// RIGHT

translate([in(1), ft(1)+120, in(table_z-0.75)])
rotate([0,anim_t*-90,0])
right_hinged_table();

translate([0,0,in(table_z-0.75) + ft(2,2)])
right_upper_shelf_1();

translate([0,0,in(table_z-0.75) + ft(3,3)])
right_upper_shelf_2();

translate([0,0,in(table_z-0.75) + ft(4,4)])
right_upper_shelf_3();

// LEFT

translate([shelves_x-ft(1.5),ft(1,0)+120,in(table_z-0.75)])
left_table();

translate([shelves_x-ft(1.5),ft(3,11),in(table_z-0.75) + in(8)])
left_upper_shelf_1();

translate([shelves_x-ft(1.5),ft(3,11),in(table_z-0.75) + in(16)])
left_upper_shelf_2();

translate([shelves_x-ft(1.5),ft(3,11),in(table_z-0.75) + in(24)])
left_upper_shelf_3();

translate([shelves_x-ft(1.5),0,in(table_z-0.75) + in(32)])
left_upper_shelf_4();

translate([shelves_x-ft(1.5),0,in(table_z-0.75) + in(40)])
left_upper_shelf_5();

// supports

// front right corner
translate([0,0, 0])
stud_front_right_corner();

// front left corner
translate([shelves_x-in(3.5),0, 0])
stud_front_left_corner();

// front top crossbeam
translate([0,in(1.5),shelves_z - in(8)])
rotate([0,90,0])
stud_front_top_crossbeam();

// under front desk crossbeam
// TODO: don't forget need 0.25" spacers in middle!!
translate([in(3.5),ft(2),in(table_z-1-1.5)])
rotate([0,90,0])
rotate([0,0,90])
stud_under_front_desk_crossbeam();

// under right front desk crossbeam
translate([in(3.5),in(1.5),in(table_z-1-1.5)])
rotate([0,90,90])
rotate([0,0,90])
stud_under_right_front_desk_crossbeam();

// under right rear desk crossbeam
translate([in(3.5),ft(4,11.25),in(table_z-1-1.5)])
rotate([0,90,90])
rotate([0,0,90])
stud_under_right_rear_desk_crossbeam();

// under left front desk crossbeam
translate([shelves_x,in(1.5),in(table_z-1-1.5)])
rotate([0,90,90])
rotate([0,0,90])
stud_under_left_front_desk_crossbeam();

// under left rear desk crossbeam
translate([shelves_x,ft(4,0.5),in(table_z-1-1.5)])
rotate([0,90,90])
rotate([0,0,90])
stud_under_left_rear_desk_crossbeam();



// support under front desk
translate([(shelves_x-in(3.5))/2,in(6),0])
stud_support_under_front_desk();

// right rear corner
translate([0,ft(8,0) - in(1.5), 0])
stud_right_rear_corner();

// left rear corner
translate([shelves_x-in(3.5),ft(7,6)-in(1.5),0])
stud_left_rear_corner();

// right wall middle
translate([0,ft(4,11.25) - in(1.5), 0])
stud_right_wall_middle();

// left wall middle
translate([shelves_x-in(3.5),ft(4,0.5)-in(1.5),0])
stud_left_wall_middle();

// right wall top rear
translate([0,ft(4,11),shelves_z-in(3.5)])
rotate([0,-90,0])
rotate([-90,0,0])
stud_right_wall_top_rear();

// rear top crossbeam
translate([in(1.5),ft(7,3),shelves_z])
rotate([0,90,0])
stud_rear_top_crossbeam();

// under hinged shelf (on a locking hinge)
translate([in(0.75), ft(7,10), in(table_z -0.75)])
rotate([0, -90*anim_t, 0]) {
    *rotate([90, 0, 0])
    cylinder(d=5, h=50);

    translate([ft(1,9), 0, 0])
    rotate([0,0,-90])
    rotate([-90*anim_t, 0, 0]) {
        *rotate([0,90, 0])
        cylinder(d=5, h=50);
        
        translate([0,0,-in(table_z -0.75)])
        stud_hinged_table_support();
    }
}




}