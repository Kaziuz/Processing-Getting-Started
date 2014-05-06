
class Cubos
{
  float tam = 0.0;
  boolean run, pressed;

  Cubos()
  {
    run = true;
    tam = 0.0;
  }

  void dibujarCubos()
  {

    for (int i=0; i < width; i += 40)
    {
      rectMode(CENTER);
      noFill();
      stroke(#80E800);
      strokeWeight(3);
      rect(width/9 - 10,i, tam/4, tam/4);
      rect(width/2 * 1.8, i , tam/4, tam/4);
    }
    if (pressed == true)
    {
      tam = 0;
      run = true;
    }
    else if (pressed == false)
    {
      if (run != false)
      {
        if (tam < (width+height)/4 )
          tam += 40.0;
        else
          tam = (width+height)/4;
      }
    }
  }

  void redibujarCubos()
  {
    pressed = false;
    tam = 0;
  }
}

