# CIU_SolarSystem
Por Alejandro García Sosa

## Descripción del proyecto:
En este proyecto para la asignatura **Creando Interfaces de Usuario** (en adelante **CIU**) se ha modelado un sistema estelar, el cual, en este caso, posee 6 planetas y 3 lunas. El sistema elegido para modelar es el sistema estelar Nanairo, procedente del videojuego **Spectrobes**.

Los 5 primeros planetas orbitan alrededor de la estrella, mientras que el sexto tiene una órbita diferente, la cual tiene como centro aproximadamente la altura del cuarto planeta. El quinto planete tiene 2 lunas, que a efectos prácticos es una luna y su espejo, y el sexto planeta tiene una luna. Cada cuerpo, a excepción del Sol, tiene su nombre encima de él. Todas las órbitas están en el mismo planto, a excepción de las lunas, las cuales orbitan en las 3 dimensiones.


## Diseño interno:
Cada cuerpo celeste está formado poar una esfera de radio determinado, los cuales tienen una textura determinada. Para realizar cada órbita, cada planeta tiene un sistema de transformaciones local, usando el **pushMatrix()** y el **popMatrix()**. Las lunas están controladas dentro del módulo de el planeta sobre el que orbitan. Cada cuerpo tiene su propio ángulo, a excepción de las lunas del quinto planeta, las cuales comparten ángulo, ya que ambas están en la misma posición relativa al planeta.

Con respecto al código, todo el contros de las órbitas está en el **draw()**, y la generación de los planetas está en el método **initPlanets()**.

## Diseño de la interfaz:
Se ha decidido mantener una vista en ángulo de 45º, colocando el sol en el cuadrante inferior izquierdo, de forma que emule a la perpectiva habitual de la fuente original. Cada planeta orbita a una velocidad distinta, decrementando con respecto a la distancia, a excepción del sexto planeta, el cual orbita un poco más rápido que el quinto para que se aprecie bien su órbita.

## Resultado en GIF:
![Screenshot](NanairoGif.gif)

## Bibliografía:
- Diapositivas de la asignatura de CIU.
- Guión de prácticas de la asignatura.
- https://www.openprocessing.org/
