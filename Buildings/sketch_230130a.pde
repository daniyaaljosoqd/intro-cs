void setup() {
  size(1000, 600);
    
}

void draw() {
  background(100);
  
//build(500);
//build(300);
fill(200, 1, 50);

building(500, 600, 300, 5, 6, false);

}

//void build(float x) {
//  rect(x, 500, 100, 100);
  
//}

void building(float xCenter, float yBottom, float w, int numFloors, int numWindows, boolean isDouble) {
rectMode(CENTER);

float floorHeight = 50;
float buildingHeight = numFloors * floorHeight;

rect(xCenter, yBottom - buildingHeight / 2, w, numFloors * floorHeight);

  float xLeft = xCenter - w/2;  
  //int numWindows = 2; 
  fill(0); 
  float step = w/(numWindows + 1);
  float y = 1;
  while(numWindows >= y) {
    rect(xLeft + y * step, 500, 20, 20); 
        y = y + 1;
  }
  //rect(xLeft + step , 300, 20, 20);
  //rect(xLeft + 2 * step , 300, 20, 20);
  //rect(xLeft + 3 * step , 300, 20, 20);

//w/(numWindows + 1) 
}
