int r =400;
int x = 1;
int y = 100;
int z = 0;



void setup() {
  size(1000,1000);


}

void draw() {
  background(100);
  fill(255,0,0, x);
  x = x +1;
  circle(500,500,300);
  
  fill(0,0,255);
 square(0,0, r);
 r = r-5;
 
 fill(0,0,400);
triangle(1, 1, 1, 100, y, 50);
y=y+2;

fill(255,255,255);
square(600,z,50);
 z=z+3;
if (z>1000) {
  z=0;
}
}
