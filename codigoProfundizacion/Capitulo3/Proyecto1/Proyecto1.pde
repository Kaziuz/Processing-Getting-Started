
//  Proyecto 1
//  Johnny sepúlveda 2013

size(500, 500);
smooth();

// color del fondo
background(255);

//  Centro del satelite
ellipseMode(CENTER);
fill(172, 178, 177);
noStroke();
ellipse(250, 250, 100, 100);

strokeWeight(3);
stroke(0);
line(220, 275, 275, 220);
line(230, 285, 285, 230);

//  antena
rectMode(CORNER);
noStroke();
rect(243, 150, 15, 60);
rect(243, 290, 15, 60);

ellipseMode(CENTER);
noStroke();
ellipse(250.5, 363, 30, 30);
ellipse(250.5, 143, 30, 30);

//  Laterales
rectMode(CORNER);
rect(185, 249, 20, 10);
rect(295, 249, 20, 10);

//  alas
quad(  50, 220, 185, 190, 185, 310, 50, 280);
quad( 315, 190, 450, 220, 450, 280, 315, 310);
stroke(0);
strokeWeight(3);
line(55, 225, 175, 200);
line(55, 275, 175, 300);
line(320, 300, 445, 275);
line(320, 200, 445, 225);

