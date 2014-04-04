/*
   Para dibujar un cuadrado en processing, debemos usar la función rect(x, y, ancho, alto);
   por defecto, nuestro cuadrado se empezara a dibujar desde la esquina superior izquierda. Si queremos
   cambiar ese punto de anclaje, debemos usar otra función antes de rect. rectMode( CENTER ), permite 
   trasladar nuestro punto de anclaje al centro de nuestro rectángulo, para poder trabajar mejor con ello.
   Para dibujar nuestro triangulo seria de este modo:
*/

rectMode( CENTER );
fill(255, 0, 0);  
rect(56, 56, 30, 30);

//  La función fill sirve para pintar las figuras. Por defecto fill funciona con el estandar RGB, en este caso, 
//  estamos pintando el rectangulo de rojo porque solo estamos asignando un parámetro con un numeral alto al
//  primer parámetro.
