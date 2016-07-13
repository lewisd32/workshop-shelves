include <functions.scad>;
include <dimensions.scad>;

/*
room_x = ft(8,11);
room_y = ft(9,11);
room_z = ft(8);

shelves_x = room_x - in(2);
shelves_y = room_y - in(2);
shelves_z = room_z - in(2);
*/

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
    translate([in(16.25),0,ft(2)])
    wireframe_cube([ft(6,4.75), in(0.5), ft(5,1.5)], wireframe_t);

    translate([in(18.25),0,ft(2,2)])
    wireframe_cube([ft(6,0.75), in(0.5), ft(4,9.5)], wireframe_t);
    
    // above window
    translate([0,0,room_z-in(10)])
    wireframe_cube([room_x, in(8), in(10)], wireframe_t);
    

    // entry
    translate([room_x-ft(3),room_y,0])
    wireframe_cube([ft(3),ft(2,3),room_z], wireframe_t);

    // closet
    translate([0,room_y,0])
    wireframe_cube([ft(5,5.5),ft(2),room_z], wireframe_t);


    translate([0,room_y,0]) {
        rotate([0,0,-85])
        closet_door();
        
        translate([ft(closet_x)*1-32.5,-41.8,0])
        rotate([0,0,85])
        closet_door();
        
        
        translate([ft(closet_x)*2+69.5 - in(6),0,0])
        rotate([0,0,-85])
        closet_door();
        
        translate([ft(closet_x)*3+37 - in(6),-41.8,0])
        rotate([0,0,85])
        closet_door();
    }
    
}

translate([0,0,10])
#cube([1,ft(8),1]);

room_wireframe();

