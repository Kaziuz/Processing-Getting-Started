/*  Una libreria en general, es una implementación que se le hace
    al lenguaje de programación con la finalidad de extender su funcionalidad.
    Esto hace que processing no solo sirva para hacer dibujos digitales.
    Existen librerías para processing por ejemplo para trabajar con vídeo,
    trabajar con puertos seriales, exportar archivos PDF, trabajar con sonido
    y muchas mas. Mas información de las librerías que puedes usar en processing
    en: http://processing.org/reference/libraries/
    
    Procesing por defecto trae algunas librerías predeterminadas.
    Comenzaremos a trabajar con la librería de sonido.
*/

//  Importamos la librería de Audio
import ddf.minim.*;

//  La librería trae por defecto unas funcionalidades que podemos usar, 
//  instaciaremos esos paquetes.

Minim minim;       //  hacemos un llamado a la librería de audio y la nombramos minim
AudioSample kick;  //  Hacemos un llamado al paquete AudioSample contenido en minim y lo nombramos kick
AudioSample snare; //  Hacemos un llamado al paquete AudioSample contenido en minim y lo nombramos snare

//  El paquete AudioSample nos permitirá cargar muestras de audio para usarlas en processing,
//  especificando el tamaño de buffer (buferSize) el cual nos permitirá contrarestar la latencia
//  en el programa de processing.

void setup()
{
  size( 512, 200 );        //  Tamaño de la ventana
  minim = new Minim(this); //  instanciamos la libreria minim para poder usarla en el programa.
  
  //  Cargamos dos archivo de audio en formato mp3.
  kick = minim.loadSample("BD.mp3"  // nombre del archivo de Audio
                            , 512); // Buffer size
  snare = minim.loadSample("SD.wav", 512);
  smooth();
}


void draw()
{
  
  background(255);
  
  //  Presionamos las teclas para que podamos mirar figuras y reproducir los sonidos
  if ( keyPressed )
  {
    if ( key == 's' )
    {
      stroke( 0, 0, 255 );
      fill(0, 0, random(255) );
      ellipse(width/2, height/2, random(-100, 100), random(-100, 100) );
    }
    
   if ( key == 'k' )
    {
      stroke( 0, 255, 0 );
      fill(0, random(-20, 202),0 );
      rect(width/2, height/2, random(-100, 100), random(-100, 100) );
    }
  }
  
}

void keyPressed()
{
  if ( key == 's') snare.trigger();  //  Presionamos s para reproducir el redoblante
  if ( key == 'k') kick.trigger();   //  presionamos k para reproducir el kick
}



    
