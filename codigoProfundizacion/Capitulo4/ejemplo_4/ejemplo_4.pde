//  ejemplo 4

size (480, 120);
int x = 25;
int h = 20;
int y = 25;
rect (x, y, 300, h);       // arriba
x = x + 100; 
rect (x, y + h, 300, h);   // mitad
x = x - 250;
rect (x, y + h*2, 300, h); // Abajo

