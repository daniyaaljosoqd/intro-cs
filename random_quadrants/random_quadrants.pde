int x;
int y; 
float circleSize;
 int shapeType;

void setup() {
  size(500,500);
}
void draw() {
 x = (int) random(500);
 y=(int) random(500);
if (x>=250 && y>=250) { 
  fill(#FFC0CB);
circle (x,y,10); }
  else if (x<=250 && y>=250) { 
  fill(#FFFF00);
  circle (x,y,10); }
  else if (x>=250 && y<=250) { 
  fill(#FF0000);
  circle (x,y,10); }
  else  {
  fill(#0000FF);
  circle (x,y,10); }
  
}
