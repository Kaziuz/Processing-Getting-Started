//  Ejemplo 2

void setup()
{
  size(480, 120);
  smooth();
}
void draw()
{
  if (mousePressed) 
  {
    fill(0);
  } 
  else 
  {
    fill(255);
  }
  ellipse(mouseX, mouseY, 50, 50);
}

