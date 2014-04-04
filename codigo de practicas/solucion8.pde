//  Johnny Sepúlveda
//  2013

//  Variables globales
float radius = 100; 
int centX = 250; 
int centY = 250;
float lastx_1 = -999;
float lasty_1 = -999;
float lastx_2 = 999;
float lasty_2 = 999;
float x1, y1, x2, y2;
float radio_noise = random(10);
float angulo;

void setup()
{
  size(500, 500); 
  background(255); 
  strokeWeight(5); 
  smooth();
  frameRate(29);
  //stroke(0, 30);
  //noFill(); 
  //ellipse(centX, centY, radius*2, radius*2);
}

void draw()
{
  angulo++; 
  radio_noise += 0.05;

  if ( angulo > 360) angulo = -360;

  //  Debemos presionar alguna tecla de nuestro computador para que la figura pueda evolucionar
  if (keyPressed == true)
  {
    float rad_1 = radians(angulo);
    float rad_2 = rad_1 + PI ;
    float mi_radio_1 = noise((radio_noise) * rad_2) * random(width-500); 
    float mi_radio_2 = noise((radio_noise) * rad_2) * random(height-500); 
    x1 = centX +(mi_radio_1  +  miRuido_1(random(100))  * cos( rad_1) ) ;
    y1 = centY +(mi_radio_2  +  miRuido_2(random(100))  * sin( rad_1) );
    x2 = centX + (noise(mi_radio_1)*random(250)  * cos(rad_2));
    y2 = centY + (noise(mi_radio_2)*random(250)  * sin(rad_2));
  }

  if ((lastx_1 > -999) && (lastx_2 < 999))
  {
    strokeWeight(0.5);
    stroke(random(20), random(50), random(15), random(150));
    fill (255, 0, 0, 20);
    line(x1, y1, x2, y2);
  }

  //  Con estas asignaciones, estamos diciéndole al programa que el punto actual es igual al punto anterior.
  lastx_1 = x1;
  lasty_1 = y1;
  lastx_2 = x2;
  lasty_2 = y2;
}

//  funciones personalizadas que retornan un valor flotante.
float miRuido_1(float value)
{
  value = random(10);
  float counter = int( value % width);
  float retValue = pow(sin(value), counter);
  float rev = retValue + noise(value)-100;
  return rev;
}

float miRuido_2(float value)
{
  value = random(10);
  float counter = int( value % height);
  float retValue = pow(cos(value), counter);
  float rev = retValue + noise(value)-100;
  return rev;
}
