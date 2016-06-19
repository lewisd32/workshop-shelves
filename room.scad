include <functions.scad>;

room_x = ft(8,11);
room_y = ft(9,11);
room_z = ft(8);

wireframe_t = 1;

closet_x = 1.375;

module closet_door() {
    wireframe_cube([ft(closet_x), in(1), room_z], wireframe_t);
}

module wireframe_cube(vect, wireframe_t=5) {
    room_x = vect[0];
    room_y = vect[1];
    room_z = vect[2];

    // along the x axis (short dimension of the room)
    cube([room_x, wireframe_t, wireframe_t]);
    
    translate([0,room_y-wireframe_t,0])
    cube([room_x, wireframe_t, wireframe_t]);

    translate([0,0,room_z-wireframe_t])
    cube([room_x, wireframe_t, wireframe_t]);
    
    translate([0,room_y-wireframe_t,room_z-wireframe_t])
    cube([room_x, wireframe_t, wireframe_t]);

    // verticals
    cube([wireframe_t, wireframe_t, room_z]);
    
    translate([room_x-wireframe_t, 0, 0])
    cube([wireframe_t, wireframe_t, room_z]);
    
    translate([0, room_y-wireframe_t, 0])
    cube([wireframe_t, wireframe_t, room_z]);
    
    translate([room_x-wireframe_t, room_y-wireframe_t, 0])
    cube([wireframe_t, wireframe_t, room_z]);
    
    // along the y axis (long dimension of the room)
    
    cube([wireframe_t, room_y, wireframe_t]);
    
    translate([0, 0, room_z-wireframe_t])
    cube([wireframe_t, room_y, wireframe_t]);

    translate([room_x-wireframe_t, 0, room_z-wireframe_t])
    cube([wireframe_t, room_y, wireframe_t]);
    
    translate([room_x-wireframe_t, 0, 0])
    cube([wireframe_t, room_y, wireframe_t]);
}

module room_wireframe() {
    // room
    wireframe_cube([room_x, room_y, room_z], wireframe_t);
    
    // window
    translate([ft(1.75),0,ft(2)])
    wireframe_cube([ft(5,5), in(1), ft(5)], wireframe_t);
    
    // above window
    translate([0,0,room_z-in(9)])
    wireframe_cube([room_x, ft(1), in(9)], wireframe_t);
    

    // entry
    translate([room_x-ft(2,11),room_y,0])
    wireframe_cube([ft(2,11),ft(2,6),ft(8)], wireframe_t);

    // closet
    translate([0,room_y,0])
    wireframe_cube([ft(5,6),ft(2),ft(8)], wireframe_t);


    translate([0,room_y,0]) {
        rotate([0,0,-85])
        closet_door();
        
        translate([ft(closet_x)*1-32.5,-41.8,0])
        rotate([0,0,85])
        closet_door();
        
        
        translate([ft(closet_x)*2+69.5,0,0])
        rotate([0,0,-85])
        closet_door();
        
        translate([ft(closet_x)*3+37,-41.8,0])
        rotate([0,0,85])
        closet_door();
    }
    
}



room_wireframe();

