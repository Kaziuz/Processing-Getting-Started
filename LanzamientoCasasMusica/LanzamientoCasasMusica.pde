
Fractal fractal = new Fractal();

color bg = color(0, 8);

void setup()
{
  size(400, 400);
  frameRate(60);
  myBus = new MidiBus(this, 1, 1);
}

void draw()
{  
  fill(bg);
  //ellipse(cc[12] * width, cc[13]*height, cc[14]*50, cc[14]*50);

  if (pressed == true && canal == 0)
  {
    fractal.dibujarFractal();
  }
  
  if (pressed == false && canal == 0)
  {
    fractal.redibujarFractal();
  }
}

