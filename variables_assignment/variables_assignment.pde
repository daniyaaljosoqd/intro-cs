int y = 0;
int x = 900;

void setup() {
  size(1000,1000);
}




void draw() {
  background(100);
 square(y, 0, 100);
 y = y + 1;
 square(900, x, 100);
 x = x - 1;
}
