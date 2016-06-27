include <functions.scad>;

/*
room_x = ft(8,11) - in(2); // room for padding on either side
room_y = ft(9,11) - in(2); // room for padding against the window side
room_z = ft(8) - in(3); // room for lots of padding underneath, and ceiling clearance
*/

room_x = ft(8,11);
room_y = ft(9,11);
room_z = ft(8);

shelves_x = room_x - in(2);
shelves_y = room_y - in(2);
shelves_z = room_z - in(2);

table_z = 29.25 - 1; // 1 inch off for rubber under

wireframe_t = 1;

closet_x = 1.375;

corner_table_x = 120;
corner_table_y = 120;


front_table_window_insert_x = shelves_x;
front_table_window_insert_y = ft(1);

left_table_x = ft(1.5);
left_table_y = ft(2,6.75);

front_center_table_x = shelves_x-120*2;
front_center_table_y = ft(1,11);

left_lower_shelf_1_x = ft(1.5);
left_lower_shelf_1_y = ft(7,6);

left_upper_shelf_1_x = ft(1.5);
left_upper_shelf_1_y = ft(3,7);

left_upper_shelf_2_x = ft(1.5);
left_upper_shelf_2_y = ft(3,7);

left_upper_shelf_3_x = ft(1.5);
left_upper_shelf_3_y = ft(3,7);

left_upper_shelf_4_x = ft(1.5);
left_upper_shelf_4_y = ft(7,6);

left_upper_shelf_5_x = ft(1.5);
left_upper_shelf_5_y = ft(7,6);

right_hinged_table_x = ft(1,10);
right_hinged_table_y = ft(3,0.75) - in(1.5);

right_upper_shelf_1_x = ft(1.5);
right_upper_shelf_1_y = ft(8,0);

right_upper_shelf_2_x = ft(1.5);
right_upper_shelf_2_y = ft(8,0);

right_upper_shelf_3_x = ft(1.5);
right_upper_shelf_3_y = ft(4,11.25);

stud_front_right_corner_l = shelves_z - in(8);

stud_front_left_corner_l = shelves_z - in(8);

stud_front_top_crossbeam_l = shelves_x;

stud_under_front_desk_crossbeam_l = shelves_x-2*in(1.5);

stud_under_right_front_desk_crossbeam_l = ft(4,8.25);

stud_under_right_rear_desk_crossbeam_l = ft(2,11.25);

stud_under_left_front_desk_crossbeam_l = ft(3,9.5);

stud_under_left_rear_desk_crossbeam_l = ft(3,4);

stud_support_under_front_desk_l = in(table_z-in(0.75));

stud_right_rear_corner_l = shelves_z;

stud_left_rear_corner_l = shelves_z;

stud_right_wall_middle_l = shelves_z;

stud_left_wall_middle_l = ft(5,8.5);

stud_right_wall_top_rear_l = ft(2,11.5);

stud_rear_top_crossbeam_l = shelves_x-in(1.5);

stud_hinged_table_support_l = in(table_z -0.75);
