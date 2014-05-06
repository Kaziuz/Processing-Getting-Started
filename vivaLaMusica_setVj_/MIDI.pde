import themidibus.*;
MidiBus myBus;
MidiBus lpd8; 
MidiBus fastTrack;

int canal;
float cc[] = new float[256]; 

boolean pressed1;
boolean pressed2;
boolean pressed3;
boolean pressed4;
boolean pressed5;
boolean pressed6;
boolean pressed7;

void noteOn(int channel, int note, int vel)
{
  println("\tEstadoNota : Nota=" + note + "\tVelocity=" + vel + "\tCanalMidi=" + channel); 
  println("nota presionada");
  if (note == 59) pressed1 = true;
  if (note == 60) pressed2 = true;
  if (note == 36 || note == 2)  pressed3 = true;
  if (note == 38 ) pressed4 = true;
  if (note == 0 || note == 45) pressed5 = true;
  if (note == 43 || note == 3) pressed6 = true;
  if (note == 1 || note == 35) pressed7 = true;

  channel = canal;
}

void noteOff(int channel, int note, int vel)
{
  println("\tEstadoNota : Nota=" + note + "\tVelocity=" + vel + "\tCanalMidi=" + channel); 
  println("nota suelta");
  if (note == 59) pressed1 = false;
  if (note == 60) pressed2 = false;
  if (note == 36 || note == 2) pressed3 = false;
  if (note == 38 ) pressed4 = false;
  if (note == 0 || note == 45) pressed5 = false;
  if (note == 43 || note == 3) pressed6 = false;
  if (note == 1 || note == 35) pressed7 = false;
  channel = canal;
}

void controllerChange(int channel, int number, int value) 
{
  println("perilla: " + number);
  cc[number] = map(value, 0, 127, 0, 1);
}
