include <spoolhold.scad>

/* Thread rods: M3
** Bearings: 5x11x4
** Spool: 52x200x70
*/

// spool dimensions (DevilDesign 1kg)
spool_d=200;
spool_h=70;
spool_hole=52;
spool_above=5; // clearance from floor level

clearance=0.5;  // contact surface clearance

foot_sides=4;
foot_rotate=90+180/foot_sides;

h_bottom=2;
d_bottom=10;

h_mid=3;

h_top=20;
d_top=10;


h_hole1=15; // 1st hole height
h_hole2=20; // 2nd hole height

feet_distance=110;

// bearing dimensions
d1_kuglager=5;
d2_kuglager=11;
h_kuglager=4;

// threaded rod dimensions
d_rod=3; // M3 threaded rod diameter
l_rod_over=10;
l_rod=[spool_h+2*d_top+l_rod_over,
       feet_distance+d_top+l_rod_over];
h_rod=[h_hole1,h_hole2];
distance_rod=[feet_distance,spool_h+d_top+2*clearance];

spacer_inner_clearance=0.5; // rod clearance
spacer_outer_clearance=0.0; // bearing clearance
spacer_rim_h=0.5;

d_hole1=d_rod+spacer_inner_clearance; // hole diameter
d_hole2=d_hole1;

echo(l_rod);


// foot();
// spacer();

//all_feet();
//all_spacers();

full_assembly();

