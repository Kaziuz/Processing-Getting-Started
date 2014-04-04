// creación de circulo con funciones trigonométricas

//radio del circulo
float radius = 45;  

//Angulo de inicio
int angle = 180;

//Coordenadas centrales del circulo
int centerx = 250;
int centery = 150;

void setup()
 {
  size(500, 300);   //  Tamaño de la hoja de dibujo
  background(255);  //  Color de fondo de la hoja de dibujo
  strokeWeight(5);  //  Grosor de la línea de dibujo del circulo

  //creacion del circulo con la función de Processing
  stroke(0, 30);                                  //  color de la línea de dibujo
  noFill();                                       //  quitamos el relleno del circulo
  ellipse(centerx, centery, radius*2, radius*2);  //  pintamos un circulo
}

void draw()
 {

  angle ++;  // incrementamos el circulo sumándole 1 infinitamente
  float rad = radians(angle); 

  /*  Creamos una variable llamada rad, la cual se incrementara toma el incremento
      de angle y lo convierte en radianes.
  */

  /*  Creamos una variable llamada x, y le asignamos el valor almacenado en centerx, a 
      este le sumamos el valor almacenado en radius y lo multiplicamos por el 
      coseno de la variable rad
  */

  float x = centerx + (radius * cos(rad));  

  /*  Creamos una variable llamada y, y le asignamos el valor almacenado en centery,
      a este le sumamos el valor almacenado en radius y lo multiplicamos por el seno
      de la variable rad
  */

  float y = centery + (radius * sin(rad)); 
  stroke(20, 50, 70);

  //  Dibujamos un punto y este a su vez dibujara un circulo
  point(x, y);
}

void keyPressed()
{
  save("imagendeCirculo.jpg");
}
