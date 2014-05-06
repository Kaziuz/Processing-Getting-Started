
// objetos
Fractal fractal;
Cubo cubo;
Circulo circulo;
Cubos cubos;
Spectro spc;

// Fondo
color bg = color(0, 16);

void setup()
{
  size(1280/2, 800/2);

  //  Instanciamos librerias
  MidiBus.list();

  // Entradas MIDI
  myBus = new MidiBus(this, 0, 0);       //  MIDI Interno
  lpd8 = new MidiBus(this, 1, 0);        //  Controlador
  //fastTrack = new MidiBus(this, 2, 0); //  MIDI de la targeta de sonido

  fractal = new Fractal();
  cubo = new Cubo();
  circulo = new Circulo();
  cubos = new Cubos();
  spc = new Spectro();
} 

void draw()
{
  fill(bg);

  if (pressed1 == true && canal == 0) 
  {  
    fractal.dibujarFractal();
  }
  else if (pressed1 == false && canal == 0)
  {
    fractal.redibujarFractal();
  }

  if (pressed2 == true && canal == 0)
  {
    fondo();
  }

  if (pressed2 == false && canal == 0)
  {
  }

  if (pressed3 == true && canal == 0)
  {
    cubo.dibujarCubo();
  }
  else if (pressed3 == false && canal == 0)
  {
    cubo.redibujarCubo();
  }

  if (pressed6 == true && canal == 0)
  {
    linea();
  }

  if (pressed4 == true && canal == 0)
  {
    circulo.dibujarCirculo();
  }
  else if (pressed4 == false && canal == 0)
  {
    circulo.redibujarCirculo();
  }

  if (pressed6 == false && canal == 0)
  {
  }

  if (pressed7 == true && canal == 0)
  {
    spc.dibujarSpectro();
  }
  else if (pressed7 == false && canal == 0)
  {
    //println("noPresioando");
  }

  if (pressed5 == true && canal == 0)
  { 
    cubos.dibujarCubos();
  }
  else if (pressed5 == false && canal == 0)
  {
    cubos.redibujarCubos();
  }
}

void fondo()
{
  fill(#F7052F);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
}

void linea()
{
  strokeWeight(1);
  rectMode(CENTER);
  noStroke();
  fill(#DB0058);
  rect(width/2, height/2, circulo.tam, circulo.tam);
}

