int x = 280;
int y = -100;
int diametro = 380;

void setup()
{
  size(480, 120);
  smooth();
  fill(102);
}
void draw () 
{
  background (204);
  ellipse (x, y, diametro, diametro);
}

