//  importamos la librería MIDIBUS
import themidibus.*;

// Instanciamos la librería, esto es necesario para poder usar la librería en nuestro codigo.
MidiBus myBus; 

void setup()
{
  size(500, 500);
  
  //  Hace una lista de todos los dispositivos MIDi conectados al computador
  MidiBus.list();

  //  seleccionamos el controlador Midi de entrada, el cual seria el 1 por mi configuración,
  //  y luego el canal midi, por defecto seleccionamos el 0
  myBus = new MidiBus(this, 1, 0);
  background(0);
}

void draw()
{

}

/*  Este método tiene 3 parámetros, 1 canal MIDI, 2 la nota presionada y 
    el tercero es la dinámica,
    además de indicar cuando presionamos una tecla o un pad de nuestro controlador MIDI.
*/

void noteOn(int channel, int pit, int vel)
{
  /*  Este println nos sirve para monitorizar lo que esta pasando con nuestro 
      código y el controlador midi.
  */
  
  println("\tEstadoNota : Nota=" + pit + "\tVelocity=" + vel + "\tCanalMidi=" + channel); 
  
  //  Si presiono el pad que genera la nota 0 saldra un circulo en la pantalla.
  if (pit == 0 )
  {
    noFill();
    strokeWeight(1);
    stroke(255);
    ellipseMode(CENTER);
    ellipse(width/2, height/2, 400, 400);
  }
  
  //  Si presiono el pad que genera la nota 1 saldrá un rectángulo en la pantalla.
  if (pit == 1)
  {
    noFill();
    strokeWeight(1);
    stroke(255);
    rectMode(CORNERS);
    rect(120, 100, 380, 400);
  }
  
  //  Si presiono el pad que genera la nota 2 saldrá un rectángulo en la pantalla pintado de color rojo.
  if (pit == 2)
  {
    fill(255, 0, 0);
    strokeWeight(1);
    noStroke();
    rectMode(CORNERS);
    rect(120, 100, 380, 400);
  }
  
}

/*  Este método tiene 3 parámetros, 1 canal MIDI, 2 la nota presionada 
    y el tercero es la dinámica, además de indicar cuando soltamos una tecla o un
    pad de nuestro controlador MIDI.
*/

void noteOff(int channel, int pit, int vel)
{
  println("\tEstadoNota : Nota=" + pit + "\tVelocity=" + vel + "\tCanalMidi=" + channel); 

  //  Si cualquiera de las notas presionadas anteriormente son soltadas regresa el fondo a su color original.
  if (pit == 0 || pit == 1)
  {
    background(0);
  }
  if (pit == 2)
  {
    background(0);
  }
}
