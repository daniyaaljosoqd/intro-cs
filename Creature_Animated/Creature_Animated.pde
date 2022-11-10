int d = 0;
float y = 210;

void setup() {
size(750,750);
}
void draw() {
  
  System.out.println(mouseX + "," + mouseY);
  
background(#add8e6);
ellipse(375, 600, 300, 280);
ellipse(375, 400, 220, 220);
fill(#964B00);
push();
translate(485, 400);
rotate(radians(d));
d = d - 1;
rect(0, 0, 150, 10);
pop();
rect(115,400,150,10);
fill(#FFFFFF);
ellipse(375, 230, 150, 150);
fill(#000000);

ellipse(405, y, 10, 10);
ellipse(345, y, 10, 10);
y=y+.5;
if ( y > 230) {
  y=210;
  
}
  



fill(#FFA500);
triangle(300, 260, 375, 240, 375, 260);
}
