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

table_z = 29.25;

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

left_lower_shelf_x = ft(1.5);
left_lower_shelf_y = ft(3,6);

right_hinged_table_x = ft(1,10);
right_hinged_table_y = ft(3,4.75) - in(1.5);

right_upper_shelf_1_x = ft(1.5);
right_upper_shelf_1_y = ft(8,4);

right_upper_shelf_2_x = ft(1.5);
right_upper_shelf_2_y = ft(8,4);

right_upper_shelf_3_x = ft(1.5);
right_upper_shelf_3_y = ft(4,11.25);



