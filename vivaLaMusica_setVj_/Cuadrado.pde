
class Cubo
{
  float tam = 0.0;
  boolean run, pressed;

  Cubo()
  {
    run = true;
  }

  void dibujarCubo()
  {
    rectMode(CENTER);
    noFill();
    stroke(255);
    strokeWeight(3);
    rect(width/2, height/2, tam, tam);
    
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

  void redibujarCubo()
  {
    pressed = false;
    tam = 0;
  }
}

