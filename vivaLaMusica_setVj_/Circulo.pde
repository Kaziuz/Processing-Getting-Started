
class Circulo
{
  float tam = 0.0;
  boolean run, pressed;

  Circulo()
  {
    run = true;
  }

  void dibujarCirculo()
  {
    ellipseMode(CENTER);
    noStroke();
    fill(255, 34, 100, 200);
    ellipse(width/2, height/2, tam, tam);
    
    if (pressed == true)
    {
      tam = 0;
      run = true;
    }
    else if (pressed == false)
    {
      if (run != false)
      {
        if (tam < (width+height)/4)
          tam+=40.0;
        else
          tam=(width+height)/4;
      }
    }
  }

  void redibujarCirculo()
  {
    pressed = false;
    tam = 0;
  }
}

