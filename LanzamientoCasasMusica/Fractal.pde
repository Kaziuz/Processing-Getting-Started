
class Fractal
{
  float nBranches = random(3.0, 8.0);
  float startingLength = random(90);
  float phasor = 0.0;
  float rate = random(0.0005, 0.0001);

  PVector getVCoordinates(PVector v, float d, float a)
  {
    return new PVector(v.x + d * cos(a), v.y + d * sin(a));
  }

  Fractal()
  {
  }

  void dibujarFractal()
  {
    noStroke();
    rect(0, 0, width, height);

    float sine = sin(phasor * TWO_PI);
    float angle = map(sine, -1.0, 1.0, -HALF_PI, HALF_PI);
    float divPoint = map(sine, -1.0, 1.0, 1.0, 0.5);

    for (int i = 0; i < nBranches; i++) 
    {
      float L = startingLength;
      float a = TWO_PI / (float) nBranches * (float) i;
      PVector v1 = new PVector(width / 2, height / 2);
      PVector v2 = getVCoordinates(v1, L, a);

      while (L > 2) 
      {
        stroke(random(255), 255, 0, 32);
        L *= 0.95;

        line(v1.x, v1.y, v2.x, v2.y);
        a += angle;

        v1.x = lerp(v1.x, v2.x, divPoint);
        v1.y = lerp(v1.y, v2.y, divPoint);

        v2 = getVCoordinates(v1, L, a);
      }
    }

    phasor += rate;
    if (phasor >= 1.0)
    {
      phasor -= 1.0;
    }
  }

  void redibujarFractal()
  {
    background(0);
    nBranches = random(3.0, 8.0);
    startingLength = random(90);
    phasor = 0.0;
    rate = random(0.0005, 0.0009);
  }
}

