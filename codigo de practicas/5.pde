´´´
//  Iniciamos el código 

void setup()
{
  size(500, 500); //  creamos el tamaño de la ventana
  smooth();       //  Ayuda a suavizar el dibujo
  noLoop();       //  se usa para que el programa completo se ejecute solo una vez
}

void draw()
{
  background(255);  //  pintamos el fondo de color blanco
  strokeWeight(5);  //  fijamos el grosor de la linea
  stroke(255, 0, 0);//  pintamos la linea de clor rojo
  line(10, height/2, width - 10, height/2);

  // Usando un bloque for, podremos también dibujar lineas.
  for (int i = 10; i <= width -10; i+=10 )
  {
    strokeWeight(5);       // fijamos un grosor de 5 pixeles para la linea
    stroke(100, 255, 23);  // pintamos los puntos de verde
    line(i, height/4, i + 3, height/4);    // dibujamos una sucesión de puntos en el sketch

    //  Ahora usaremos la función random(), esta función se usa para que 
    //  el computador genere numeros al azar con el numero contenido dentro de
    //  la función random(). Por ejemplo si escribimos random(5);
    //  El computador generar numeros flotantes entre 0 y 5.

    //  Agreguemos algo de aleatoriedad a nuestra linea para saber y observar que pasa
    strokeWeight(5);       // fijamos un grosor de 5 pixeles para la linea
    stroke(0, 55, 223);  // pintamos los puntos de verde
    line(i, random(height/5), i + 3, random(height/5));    // dibujamos una sucesión de puntos en el sketch
  }
}

```
