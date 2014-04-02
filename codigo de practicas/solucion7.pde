//  definimos variables globales

//line1
float step;
float step_ant = step;
float y_ubicacion = height-150;

//line2
float step_2;
float step_ant_2 = step_2;
float x_ubicacion = height-150;

//line3
float step_3 = 300;
float step_ant_3 = step_3;
float y_ubicacion_2 = 150;

//line4
float step_4 = 300;
float x_ubicacion_3 = 150;
float step_ant_4 = step_4;

void setup()
{
  size(300, 300);
  background(255);
  frameRate(29);
  smooth();
}

void draw()
{
   fill(255, 5);
   rect(0, 0, width, height);
   
  //  Si presionamos alguna tecla, las lineas cambiaran de direción
  if (keyPressed)
  {
    lineNoise_1(); //  Se genera la linea 1
    lineNoise_3(); //  se genera la linea 2
  }
  else
  { 
    lineNoise_2(); //  se genera la linea 2, la cual es la linea 1 pero cambia de direccion
    lineNoise_4(); //  se genera la linea 3, la cual es la linea 2 pero cambia de direccion
  }
}

//  El código dentro de esta función, es llamado en el bloque draw, de esta manera, el codigo 
//  se ejecuta constantemente sin tener que escribir todas esas lineas de codigo
//  dentro del bloque draw.
//  En principio todas las funciones llamadas lineNoise_X hacen lo mismo, lo unico que cambia
//  son sus posiciones.


void lineNoise_2()
{
  //  Creamos la linea dibujada por las variables
  line(x_ubicacion, step_2, x_ubicacion, step_2);
  
  step_2++; //  incrementamos la variable step_2, que vendria ser el eje Y del circulo.
  
  //  si ese incremento es mayor a 150, se ejecuta todo lo que esta dentro de el condicional.
  if (step_2 >= 150)
  {
    pushMatrix();
    translate(random(step_4)-150, 0.0);
    fill(255, 20);
    rect(150, 0, 150, 150);
    step_2 = -1;
    x_ubicacion = random(150)+150;
    popMatrix();
  }
  step_ant_2 = step_2;
}

void lineNoise_3()
{
  line(step_3, y_ubicacion_2, step_3, y_ubicacion_2);
  if (step_3 <= 150)
  {
    pushMatrix();
    translate(0.0, (random(step_3)-150) );
    fill(255, 20);
    rect(150, 150, 150, 150);
    y_ubicacion_2 = random(150) + 150;
    popMatrix();
  }
  step_3--;
  if (step_3 < 150) step_3 = 300;
  step_ant_3 = step_3;
}

void lineNoise_4()
{
  line(x_ubicacion_3, step_4, x_ubicacion_3, step_4);
  step_4--;
  if (step_4 <= 150) 
  {
    pushMatrix();
    translate(random(step_4), 0.0);
    fill(255, 20);
    rect(0, 150, 150, 150);
    step_4 = 300;
    x_ubicacion_3 = random(150);
    popMatrix();
  }
  step_ant_4 = step_4;
}

void lineNoise_1() 
{
  line(step, y_ubicacion, step_ant, y_ubicacion);
  step++;
  if (step >= 150)
  {
    pushMatrix();
    translate(0.0, (random(step_3)+150) );

    fill(255, 20);
    rect(0, 0, 150, 150);
    step = -1;
    y_ubicacion = random(150);
    popMatrix();
  }
  step_ant = step;
}



