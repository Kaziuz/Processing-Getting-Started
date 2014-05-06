

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
    noStroke();
    rect(0, 0, width, height);
    rectMode(CENTER);
    noFill();
    stroke(#ED6B9F);
    rect(width/2, height/2, tam, tam);
    
    //  Muchas gracias fabio 
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

