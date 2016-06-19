include <dimensions.scad>;
use <room.scad>;
use <panels.scad>;

PI=3.1415;

enableAnimation = true;
showPivots = true;

table_z = 29.25;

//anim_t = enableAnimation ? 1-$t : 0;

// smooth loop
anim_t = enableAnimation ? cos(($t+0.5)*360)/2+0.5 : 0;


echo(anim_t);

color("white")
room_wireframe();

// MAIN DESK

translate([0,ft(1),in(table_z-1)])
corner_table();

translate([0, 0, in(table_z)-in(0.75)])
front_table_window_insert();

translate([120,ft(1),in(table_z)-in(0.75)])
front_left_table();

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

translate([room_x-ft(1.5),ft(2,11),in(table_z-0.75)])
left_table();

translate([room_x-ft(1.5),ft(3,11),in(table_z-0.75) + in(8)])
left_upper_shelf_1();

translate([room_x-ft(1.5),ft(3,11),in(table_z-0.75) + in(16)])
left_upper_shelf_2();

translate([room_x-ft(1.5),ft(3,11),in(table_z-0.75) + in(24)])
left_upper_shelf_3();

translate([room_x-ft(1.5),0,in(table_z-0.75) + in(32)])
left_upper_shelf_4();

translate([room_x-ft(1.5),0,in(table_z-0.75) + in(40)])
left_upper_shelf_5();

module stud(l) {
    cube([in(3.5), in(1.5), l]);
}

// supports

// front right corner
translate([0,0, 0])
stud(ft(7,3));

// front left corner
translate([room_x-in(3.5),0, 0])
stud(ft(7,3));

// front top crossbeam
translate([0,in(1.5),ft(7,3)])
rotate([0,90,0])
stud(room_x);

// under front desk crossbeam
// TODO: don't forget need 0.25" spacers on left!!
translate([0,ft(2),in(table_z-1-1.5)])
rotate([0,90,0])
rotate([0,0,90])
stud(room_x);

// under right desk crossbeam
// TODO: don't forget need 0.25" spacers under hinghed surface!!
translate([in(3.5),in(1.5),in(table_z-1-1.5)])
rotate([0,90,90])
rotate([0,0,90])
stud(ft(8,1));


// support under front desk
translate([(room_x-in(3.5))/2,in(6),0])
stud(in(table_z-in(0.75)));

// right rear corner
translate([0,ft(8,4) - in(1.5), 0])
stud(ft(8));

// left rear corner
translate([room_x-in(3.5),ft(7,6)-in(1.5),0])
stud(ft(8));

// right wall middle
translate([0,ft(4,11.25) - in(1.5), 0])
stud(ft(8));

// left wall middle
translate([room_x-in(3.5),ft(4,0.5)-in(1.5),0])
stud(ft(5,8.5));

// left wall top rear
*translate([room_x-in(1.5),ft(4,0.5),room_z-in(3.5)])
rotate([0,-90,0])
rotate([-90,0,0])
stud(ft(3,4));

// right wall top rear
translate([0,ft(4,11),room_z-in(0.5)])
rotate([0,-90,0])
rotate([-90,0,0])
stud(ft(3,3.5));

// rear top crossbeam
translate([in(1.5),ft(7,3),ft(8)])
rotate([0,90,0])
stud(room_x-in(1.5));
