Para remover el color del borde de cualquier figura en processing, no solo un circulo; usamos la función 

```
noStroke();
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
noStroke();
ellipse(56, 56, 60, 60);
```
Este modo permite que solo se dibuje la figura sin su borde. Hay que tener un especial cuidado en no remover ni el fondo ni el borde porque no quedara nada dibujado.

```
noFill();
noStroke();
ellipse( 45, 45, 67, 67);
```

Nada sera dibujado en pantalla
