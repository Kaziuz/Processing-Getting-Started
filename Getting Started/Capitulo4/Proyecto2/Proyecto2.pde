
//  Proyecto 2
//  Johnny sepúlveda 2013

//  Definición de las variables

int posXcirculo = 250;                        //  posicion en X
int posYcirculo = 250;                        //  posicion en y
int radio = posXcirculo + posYcirculo - 400;  //  radio del circulo


size(500, 500);
smooth();

// color del fondo
background(255);

//  Centro del satelite
ellipseMode(CENTER);
fill(172, 178, 177);
noStroke();
ellipse(posXcirculo, posYcirculo, radio, radio);

strokeWeight(3);
stroke(0);
line(posXcirculo - 30, posYcirculo + 25, radio + 175, radio + 120);
line(posXcirculo - 20, posYcirculo + 35, radio + 185, radio + 130);

//  antena
rectMode(CORNER);
noStroke();
rect(posXcirculo - 7, posYcirculo - 100, radio - 85, radio - 40);
rect(posXcirculo - 7, posYcirculo + 40,  radio - 85, radio - 40);

ellipseMode(CENTER);
noStroke();
ellipse(posXcirculo + 0.5, posYcirculo + 113, radio - 70, radio - 70);
ellipse(posXcirculo + 0.5, posYcirculo - 107, radio - 70, radio - 70 );

//  Laterales
rectMode(CORNER);
rect(posXcirculo - 65, posYcirculo - 1, radio - 80, radio - 90);
rect(posXcirculo + 45, posYcirculo - 1, radio - 80, radio - 90);

//  alas
quad(  50, 220, 185, 190, 185, 310, 50, 280);
quad( 315, 190, 450, 220, 450, 280, 315, 310);
stroke(0);
strokeWeight(3);
line(55, 225, 175, 200);
line(55, 275, 175, 300);
line(320, 300, 445, 275);
line(320, 200, 445, 225);

