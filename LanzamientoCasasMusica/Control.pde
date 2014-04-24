//  Este código lo e puesto aquí, para que no haga ruido en la parte principal del código
//  Pero normalmente, toda esta parte iria en donde se escribe void setup() y void draw().

import themidibus.*;
MidiBus myBus;


//  Variables para las entradas MIDI
float cc[] = new float[256]; //  canales
boolean pressed;             //  Cuando tengo algún pad presionado
int canal;                   //  Canal MISI

//  funciones MIDI
void controllerChange(int channel, int number, int value) //  Función de la perilla
{
  println("perilla: " + number);
  cc[number] = map(value, 0, 127, 0, 1);
}

void noteOn(int channel, int nota, int velocity)   // pad presionado
{
  if (nota == 0)
  {
    pressed = true;
  }
  canal = channel;
}

void noteOff(int channel, int nota, int velocity) //  pad suelto
{
  if (nota == 0)
  {
    pressed = false;
  }
  canal = channel;
}
