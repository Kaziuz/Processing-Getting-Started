
Fractal fractal  = new Fractal();
Cubo cubo;
Circulo circulo;
Linea linea;
color bg = color(0, 8);

void setup()
{
  size(640, 480);
  MidiBus.list();
  myBus = new MidiBus(this, 0, 0);
  lpd8 = new MidiBus(this, 1, 0);
  cubo = new Cubo();
  circulo = new Circulo();
  linea = new Linea();
} 

void draw()
{
  //ellipse(cc[12] * width, cc[13]*height, cc[14]*50, cc[14]*50);
  fill(bg);

  if (pressed1 == true && canal == 0) fractal.dibujarFractal();
  if (pressed1 == false && canal == 0)fractal.redibujarFractal();
  if (pressed2 == true && canal == 0)fondo();
     if (pressed5 == true && canal == 0) linea.dibujarLinea();

  if (pressed3 == true && canal == 0) cubo.dibujarCubo();
  if (pressed3 == false && canal == 0) cubo.redibujarCubo();
  if (pressed4 == true && canal == 0) circulo.dibujarCirculo();
  if (pressed4 == false && canal == 0)circulo.redibujarCirculo();
  
  //  monitoreo de la aplicacion
  //fill(255);
  //text(frameRate, 10, 20);

}

void fondo()
{
  int count = 700;
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(width/2, height/2, count, count);
  println(count);
}






