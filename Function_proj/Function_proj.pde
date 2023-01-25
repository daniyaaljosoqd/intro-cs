void setup() {
  size(640, 360);
}

void draw() 


{
  background(102);
  translate (-100,-100);
  push();
  rotatingcircle(); 
  pop();
  translate (100,125);
  rotatingcircle();
  
  translate (300,100);
  rotatingcircle();
}

void rotatingcircle() {
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  polygon(0, 0, 80, 20);  // Icosagon
  popMatrix();
}
 


void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE); // I took this code from processing's web site
}
