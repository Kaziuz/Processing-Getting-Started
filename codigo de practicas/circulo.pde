```

//  Para dibujar un circulo en processing, debemos usar la funcion ellipse(x, y, ancho, alto);

/*
por default, nuestro circulo se empezara a dibujar desde la esquina superior izquierda. esto es porque el circulo esta dentro de un cuadrado. Si queremos cambiar ese punto de anclaje, debemos usar otra función antes de ellipse. ellipseMode( CENTER ), permite trasladar nuestro punto de anclaje al centro de nuestro circulo, para poder trabajar mejor con ello. 

Para dibujar nuestro circulo,  seria de este modo:
*/

ellipseMode( CENTER );
fill(255, 0, 0);
ellipse(56, 56, 30, 30);

```
