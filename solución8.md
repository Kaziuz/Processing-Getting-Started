Para remover el color del fondo cualquier figura en processing, no solo un circulo; usamos la función 

```
noFill();
```
Precedida de una función de dibujo como

```
rect();
```
o 

```
ellipse();
```

Ejemplo:

```
noFill();
ellipse(56, 56, 60, 60);
```
Este modo permite que solo se dibujen los bordes de las figuras. Hay que tener un especial cuidado en no remover ni el fondo ni el borde porque no quedara nada dibujado.

```
noFill();
noStroke();
ellipse( 45, 45, 67, 67);
```

Nada sera dibujado en pantalla
