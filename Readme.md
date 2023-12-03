# Dart

## ¿Qué es Dart?

- Lenguaje del lado del cliente optimizado para aplicaciones.
- Optimizado para el UI. Sintaxis amigable.

## Caracteristicas

- Futures
- Async/await
- Código non-blocking
- Streams

## Variables

- ``final``: Solo se puede asignar una vez. Tiempo de ejecución.
- ``late``: Se puede asignar una vez, pero no es necesario hacerlo al inicio. Inicialización tardía.
- ``const``: Se asigna en tiempo de compilación. No se puede cambiar.
- ``dynamic``: Es un tipo de variable que puede cambiar de tipo en tiempo de ejecución. Dynamic siempre es un valor que en un inicio es null. No se recomienda usarlo.

## Interpolación de Strings

- ``$variable``
- ``${variable.metodo()}``

## Datos importantes

- El operador ? en Dart se utiliza para la verificación de nulos. Es parte de la sintaxis de Dart para manejar valores que podrían ser nulos (null).
- El operador ?? en Dart se llama operador de coalescencia nula. Se utiliza para proporcionar un valor por defecto en caso de que la expresión a la izquierda sea nula.

## Iterable

- Un Iterable en Dart es una colección de elementos que se pueden recorrer o iterar. Los objetos de tipo Iterable son colecciones de elementos que se pueden acceder secuencialmente o a través de un iterador.

## Future

- Es un objeto que contiene un valor que se calculará en algún momento en el futuro.
- Es asíncrono

## Constructores

- Los constructores se definen al igual que otros lenguajes con el nombre de la clase. No se puede crear varios constructores, para lograrlo se debe utilizar constructores con nombre.
- Los constructores por nombre son una forma de definir constructores en Dart. Los constructores por nombre se definen utilizando el nombre de la clase seguido de un punto y el nombre del constructor.

## Datos

- La idea de interfaces y clases abstractas son diferentes entre Java y Dart.
