void setup()
{
  size(480, 120);
  smooth();
  stroke(0, 102);
}

void draw()
{
  float ancho = dist(mouseX, mouseY, pmouseX, pmouseY);
  strokeWeight(ancho);
  line(mouseX, mouseY, pmouseX, pmouseY);
}



