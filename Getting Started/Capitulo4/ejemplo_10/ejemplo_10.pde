//  ejemplo 10

size (480, 120);
background (0);
smooth ();
fill (255);
stroke (102);
for (int y = 20; y <= height-20; y += 10)
{
  for (int x = 20; x <= width-20; x += 20) 
  {

    ellipse (x, y, 4, 4);
    //  Dibujamos una linea en el centro de la pantalla

    line(x, y, 240, 60);
  }
}


