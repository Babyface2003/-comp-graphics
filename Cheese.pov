#include "colors.inc" 
 
background{ 
rgb<0.2,0.2,0.4> 
} 
camera { 
 angle 50 
 location <5,4,2> 
 look_at 0 
} 
 
light_source { 
 <10,30,-3> 
 color White 
} 
 
cylinder { 
 0, 10*x, 0.03 
 pigment { Red } 
} 
cylinder { 
 0, 10*y, 0.03 
 pigment { Green } 
} 
cylinder { 
 0, 10*z, 0.03 
 pigment { Blue } 
} 
prism{ 
 -0.5,0,4 
 <5,5>,<-5,5>,<-5,-5>,<5,-5> 
 pigment { 
 checker Black White scale .5 
 } 
} 
 
 //�������� ��� 
#declare Cheese_Color = rgb <1, 0.8, 0.3>; 
 
 
 
difference { 
// linear prism in y-direction: from .. ,to ..,number of points (first = last) 
prism { 0.00 ,2.00 , 4 
 <-1.00, 0.00>, // first point 
 < 1.00, 0.00>, 
 < 0.00,-1.50>, 
 <-1.00, 0.00> // last point = first point !!! 
pigment { Cheese_Color } 
 } 
 cylinder { <-1,3,-1>,<1,0,-1>, 0.15 
 
 scale <1,1,1> rotate<0,0,0> translate<0,0,0> 
 pigment { Cheese_Color } 
 } // end of cylinder �--------------------------------� 
 
 cylinder { <0,0,0>,<1,1,-0.4>, 0.10 
 pigment { Cheese_Color } 
 } // end of cylinder �--------------------------------� 
 cylinder { <-0.2,0.3,0>,<-1,1,-0.4>, 0.15 
 pigment { Cheese_Color } 
 } // end of cylinder �--------------------------------� 
 cylinder { <0,0,-0.5>,<0,4,-0.5>, 0.150 
 
 pigment { Cheese_Color } 
 } // end of cylinder �---------------------------------� 
 
 
}