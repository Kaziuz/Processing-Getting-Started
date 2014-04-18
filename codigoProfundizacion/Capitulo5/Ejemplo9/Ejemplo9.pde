float x;
float y;
float posx;
float posy;
float easing = 0.05;

void setup() 
{
  size(480, 120);
  smooth();
  stroke(0, 102);
}

void draw() 
{
  float targetX = mouseX;
  x = x + (targetX - x) * easing;
  
  float targetY = mouseY;
  y = y + (targetY - y) * easing;
  
  float ancho = dist(x, y, posx, posy);
  
  strokeWeight(ancho);
  line(x, y, posx, posy);
  
  posx = x;
  posy = y;
}


