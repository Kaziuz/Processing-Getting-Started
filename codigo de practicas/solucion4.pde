```
/* El bloque setup() es donde se inicializa el programa. Imagínate que estas jugando super mario, 
   cuando empieza el juego, tu decides si deseas iniciar el juego para dos jugadores o un jugador, 
   cuando realizas esto; solo se hace una vez en el juego y eso es exactamente lo mismo que se hace en el 
   bloque setup().
   Inicializamos el tamaño de la pantalla y elegimos un color de fondo para nuestra pantalla de dibujo.
   Después, el código que esta dentro de draw se repite constantemente hasta que se presione el botón
   de stop de processing o se cierre la ventana.
   Es un bucle que se esta actualizando constantemente para informar al usuario de que esta 
   pasando con el programa. En este ejemplo, estamos actualizando la posición del circulo mediante las 
   variables mouseX y mouseY, las cuales son variables especiales que trae procesing por defecto para usar 
   la posición del mouse en nuestros dibujos.
   El programa esta comentado para facilitar la lectura y el procesamiento de cada función en el programa.
*/

//  Iniciamos el programa con el bloque setup
void setup()
{
  size( 640, 480 ); //  El tamaño de la ventana sera de 640 pixeles de ancho x 480 pixeles de alto
  smooth();         //  Es una función predeterminada de processing que se usa para que los dibujos se ven mas                     // bonitos
}

void draw()
{
  
  background( 255, 0, 0 );          //  El fondo de nuestra pantalla estara cubierto de rojo
  fill( 255, 255, 0);               //  Nuestro circulo sera pintado de amarillo
  ellipseMode( CENTER );            //  El centroide de nuestro circulo sera su centro
  ellipse(mouseX, mouseY, 40, 40);  //  Circulo que se dibujara en la posición del mouse con un ancho y alto                                       // de 40 pixeles.
}
```
