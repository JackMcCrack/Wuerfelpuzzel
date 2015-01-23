
module default()
{
	cube([15, 15, 15],center=true);
}

module triangle()
{
translate ([-7.5,-7.5,0])
 polyhedron(
  points=[ [0,0,0], [15,0,0], [0,15,0], 
           [0,0,5],[15,0,5],[0,15,5]  ],
  faces=[ [0,1,2],[5,4,3], 
			 [3,1,0],[4,1,3],  [4,2,1],[5,2, 4], [2,5,0],[5,3,0] ]
 );

}



module wuerfel(a=[0,0,0]){
  union(){
    default();
    color([1,0,0])	rotate([0,0,0])	translate([0,0,7.5])	rotate([0,0,(a[0])*90])	triangle();
    color([0,1,0])	rotate([90,0,0])	translate([0,0,7.5])	rotate([0,0,(a[1])*90])	triangle();
    color([0,0,1])	rotate([0,90,0])	translate([0,0,7.5])	rotate([0,0,(a[2])*90])	triangle();
  }
}


for ( i = [0 : 3] )
{
 for ( j = [0 : 3] )
 {
  for ( k = [0 : 3] )
  {
//	translate([i*70,j*70,k*70]) wuerfel([i,j,k]);
  }
 }
}

b=0;
i=[
 [3, 1, 1], //
 [1, 1, 1], //
 [1, 1, 2], //
 [1, 4, 1], //
 [2, 1, 2], //
 [2, 1, 4], //
 [1, 4, 3], //
 [2, 4, 4]  //
 
 ];

translate ([7.5, 17.5, 7.5])
for(x=[0:len(i)-1])
{
 translate([0,x*30,0])  rotate([0,-90,0]) wuerfel(i[x]);	//rot, gruen, blau
}

//translate ([0, -5, 0]) cube([8*30-5,5,20]);
//translate ([0, 30, 0]) cube([8*30-5,5,20]);
//translate ([8*30-5, -5, 0]) cube([5,40,20]);


//wuerfel([3,1,1]);