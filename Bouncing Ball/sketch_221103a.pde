int x = 25;
int dx = 3;
int y = 25;
int dy = 6;

void setup()   {
  size (1000,1000);
  
}

void draw () {
  background(200);
circle(x,y,50);

x=x + dx; 
if (x > 975) {
  dx = -3;
}
if (x < 25) {
  dx =3;
}

y=y + dy; 
if (y > 975) {
  dy = -6;
}
if (y < 25) {
  dy =6;
}
}
