
float radius = 100; //  radio de nuestra forma
int centX = 250;    //  centro en el eje X
int centY = 150;    //  centro en el eje Y

void setup () 
{ 
  size(500, 300); 
  background(255); 
  strokeWeight(5); 
  smooth();  //  esta función ayuda a alisar las formas, para que se visualmente se vean mas definidas

  stroke(0, 30);
  noFill(); 
  ellipse(centX, centY, radius*2, radius*2);
  stroke(20, 50, 70);
  strokeWeight(1);

  float x, y;
  float noiseval = random(10);  //  creamos una variable que generara valores aleatorios entre 0 y 10

  //  valores de random en el start point
  float radVariance, thisRadius, rad;
 
  //  empezamos a crear nuestra forma
  beginShape();
  fill(20, 50, 70, 50); //  color de relleno de nuestra forma

  // realizamos un loop desde 0 hasta 360 grados en incrementos de 1
  for (float ang=0;ang<=360;ang+=1) 
{
    // valores de random en el start point
    noiseval += 0.1; //  incrementamos la variable noiseval en valores de 0.1

    /* a la variable radVariance le asignamos la función customNoise con el parámetro noiseval,
       el cual se esta incrementado y lo multiplicamos por 30.
    */
    
    radVariance = 30 * customNoise(noiseval);

    /*  con esta variable, el dibujo en Processing no dibujo un circulo perfecto, sino que 
        realiza pequeños cambios para realizar pétalos.
    */
   
    thisRadius = radius + radVariance; 
    rad = radians(ang);
    x = centX + (thisRadius * cos(rad)); 
    y = centY + (thisRadius * sin(rad));
    curveVertex(x, y);
  }
  endShape();
  
    save("imagenGenerativa1.jpg");

}

//  función personalizada para realizar el cambio de periodicidad del punto de dibujo
float customNoise(float value) 
{ 
  float retValue = pow(sin(value), 3); 
  return retValue;
}

