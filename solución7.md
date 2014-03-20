```
//  Para cambiar el color de cualquier figura en processing, no solo un circulo; usamos la función 

//  stroke();

//  Precedida de una función de dibujo como

//  rect();

//  o 

//  ellipse();

//  Ejemplo:

stroke(234);
ellipse(56, 56, 60, 60);

//  Hay tres modos de pintado de rellenos en processing.

/*
1. Escala de grises:
--> Este es usado solo para colorear usando un color que va de blanco a negro. Sus intermedios pueden ser grises oscuros o grises claros.

2. RGB
--> Esta función nos permite usar una gran posibilidad de colores, normalmente se usan 3 parámetros los cuales corresponden a RGB o Rojo, verde y azul. Por ejemplo si queremos usar el rojo para colorear un color, entonces escribiríamosde esta manera:
*/

stroke( 255, 0, 0 );
ellipse(45, 45, 78, 78);

/*
3. RGBA
--> Es igual al modo anterior, solo que agregamos un cuarto parametro que es la opacidad o Alpha. Esto permite que los colores de las figuras se unan.
*/

fill( 255, 0, 0, 120 );
ellipse(45, 45, 78, 78);

