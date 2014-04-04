/*    Teniendo claro como funciona el sistema de coordenadas, debemos usar la función line( x1, y1, x2, y2);
      Donde ( X1, Y1 ) representan el punto de partida, y ( X2,Y2 ) representan el punto de llegada.
      Es como esto, imagínate que sales de tu casa y te diriges a la casa de un amigo. Si tomaras un papel y
      dibujas el punto de partida ( tu casa ) con el punto de llegada (la casa de tu amigo ) y 
      trazaras una linea entre esos dos puntos, diríamos entonces que ( x1, y1 ) vienen siendo las 
      coordenadas de tu casa y ( x2, y2) vienen siendo las coordenadas de la casa de tu amigo.
      Finalmente para dibujar una linea en processing debemos escribir de la siguiente manera:
*/
    line(0, 0, 70, 80);
/*
      La anterior función dibujara una línea que tiene de partida el punto de origen con 
      coordenadas finales  en x = 70 y Y = 80;
    
      Si solo quieres es dibujar un punto, solo hace falta escribir point( X, Y );
      Este punto se dibujara en el medio de la pantalla de render:
*/
      point( 50, 50 );



