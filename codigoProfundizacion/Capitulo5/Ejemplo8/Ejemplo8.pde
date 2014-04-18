float x;
float easing = 0.01;
float diametro = 12;

void setup() 
{
  size(220, 120);
  smooth();
}
void draw() 
{
  float targetX = mouseX;
  x = x + (targetX - x) * easing;
  ellipse(x, 40, diametro, diametro);
  println(targetX + " : " + x);
}



