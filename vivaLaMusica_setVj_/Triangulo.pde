
class Circulo
{
  float tam = 0.0;
  boolean run, pressed;
  PImage img;

  Circulo()
  {
    run = true;
    img = loadImage("triangulo.png");
  }

  void dibujarCirculo()
  {

    ellipseMode(CENTER);
    noStroke();
    imageMode(CENTER);
    tint(#A4295B); 
    image(img, width/2, height/2, tam-10, tam-10);

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

