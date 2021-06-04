# CIU_SolarSystem
Por Alejandro García Sosa

# Parte 1:

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

# Parte 2:

## Descripción del proyecto:
En esta segunda parte del proyecto, se ha añadido una nave, la cual se puede desplazar utilizando las teclas W,A,S,D,Q y E.


## Diseño interno:
El código generador de los planetas no se ha modificado, pero se ha modularizado, añadiendo el método **drawPlanets()**, el cual contiene la gestión del dibujo del sistema, así como la gestión de órbitas. También se ha añadido una PShape, la cual tiene un modelo y una textura propios, que representa a la nave. La nave tiene guardada su posición en tres variables de tipo float, que representan los tres ejes. 

## Diseño de la interfaz:
Para simplificar el cambio a primera persona, se ha eliminado el ángulo de la primera parte. También se ha eliminado el nombre de los planetas, a fin de simplificar la interfaz. Cuando se está con la cámara de la nave. Para evitar que el modelo de la nave aparezca en la cámara de la nave, se desactiva el modelo cuando se pulsa el botón del ratón para cmabiar de cámara, y se reactiva al volver a la vista general.

## Controles:

### 2D:
- W: Arriba
- S: Abajo
- A: Izquierda
- D: Derecha

### 3D:
- W: Delante
- S: Atrás
- A: Izquierda
- D: Derecha
- Q: Arriba
- E: Abajo

## Resultado en GIF:
![Screenshot](NanairoGifCam.gif)

## Bibliografía:
- Diapositivas de la asignatura de CIU.
- Guión de prácticas de la asignatura.
- https://www.openprocessing.org/
- Modelo de la nave: https://www.models-resource.com/
