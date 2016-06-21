include <dimensions.scad>;
use <panels.scad>;

kerf = 0.3;

offset = 1;

// 3x 2x4x10'
// 9x 2x4x8'

translate([10, offset, 0])
cube([in(3.5), in(1.5), ft(10)]);

translate([20, offset, 0])
cube([in(3.5), in(1.5), ft(10)]);

translate([30, offset, 0])
cube([in(3.5), in(1.5), ft(10)]);

translate([40, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([50, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([60, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([70, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([80, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([90, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([100, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([110, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);

translate([120, offset, 0])
cube([in(3.5), in(1.5), ft(8)]);




translate([10,0,0])
stud_front_top_crossbeam();

translate([20,0,0])
stud_rear_top_crossbeam();

translate([30,0,0])
stud_under_front_desk_crossbeam();

translate([40,0,0])
stud_right_rear_corner();

translate([50,0,0])
stud_left_rear_corner();

translate([60,0,0])
stud_right_wall_middle();

translate([70,0,0])
stud_front_right_corner();

translate([80,0,0])
stud_front_left_corner();

translate([90,0,0])
stud_left_wall_middle();
translate([90,0,stud_left_wall_middle_l+kerf])
stud_support_under_front_desk();


translate([100,0,0])
stud_under_right_front_desk_crossbeam();
translate([100,0,stud_under_right_front_desk_crossbeam_l+kerf])
stud_right_wall_top_rear();

translate([110,0,0])
stud_under_right_rear_desk_crossbeam();
translate([110,0,stud_under_right_rear_desk_crossbeam_l+kerf])
stud_under_left_rear_desk_crossbeam();

translate([120,0,0])
stud_under_left_front_desk_crossbeam();
translate([120,0,stud_under_left_front_desk_crossbeam_l+kerf])
stud_hinged_table_support();
