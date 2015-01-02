
module default()
{
	cube([30, 30, 30],center=true);
}

module triangle()
{
translate ([-15,-15,0])
 polyhedron(
  points=[ [0,0,0], [30,0,0], [0,30,0], 
           [0,0,10],[30,0,10],[0,30,10]  ],
  faces=[ [0,1,2],[5,4,3], 
			 [3,1,0],[4,1,3],  [4,2,1],[5,2, 4], [2,5,0],[5,3,0] ]
 );

}



module wuerfel(a=[0,0,0]){
  union(){
    default();
    color([1,0,0])	rotate([0,0,0])	translate([0,0,15])	rotate([0,0,(a[0])*90])	triangle();
    color([0,1,0])	rotate([90,0,0])	translate([0,0,15])	rotate([0,0,(a[1])*90])	triangle();
    color([0,0,1])	rotate([0,90,0])	translate([0,0,15])	rotate([0,0,(a[2])*90])	triangle();
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


for(i=[
 [3, 1, 1], //
 [1, 1, 1], //
 [1, 1, 2], //
 [1, 4, 1], //
 [2, 1, 2], //
 [2, 1, 4], //
 [1, 4, 3], //
 [2, 4, 4]  //
 
 ])
{
//  translate(50*i)  wuerfel(i);	//rot, gruen, blau

}

wuerfel([3,1,1]);