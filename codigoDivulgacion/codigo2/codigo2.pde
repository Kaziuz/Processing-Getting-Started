//  método de inicialización
void setup()
{
  size(250, 250);  //  Tamaño de la hoja de dibujo
  background(0);   //  Color de fondo de la hoja de dibujo
}

//  método donde se repite el código dentro, hasta que se presione el botón stop o se cierre la ventana 
void draw()
{
  fill(255, 0, 0);                  //  color del circulo
  ellipse(mouseX, mouseY, 60, 60);  //  pintamos un circulo
  //  mouseX y mouseY se usan para obtener las coordenadas de la posición del cursor
}

