# Revisión del Trabajo Práctico final por Lucas Campaner
## Estado del repositorio el día 24/06/2016 a las 10:40 hs.

* Observacion 1: Las clases del dominio (los objetos espaciales) estado y metodos muy similares, incluso algunos iguales. 
* Concepto afectado: Se esta duplicando codigo. 
* Sugerencia: tener una superclase para esas clases para utilizar la herencia.
* Respuesta: aceptado. Se ha creado la clase 'ObjetoEspacial' para englobarlas, ya que todas SON un objeto espacial, y esto además permite ahorrar código.

* Observacion 2: Las clases del dominio (los objetos espaciales) no tienen ningun metodo que permita extender las posibilidades de "efectos". 
* Concepto afectado: viola open/close. Si hay otro efecto, el mismo no se podria agregar sin tocar la clase correspondiente.
* Sugerencia: implementar algun metodo que permita agregar "efectos".
* Respuesta: aceptado. Se incorporó el método 'agregar_colision' para poder incorporar nuevos efectos.

* Observacion 3: En las clases del dominio (los objetos espaciales) no es evidente porque se agregan "efectos" con parametro 0.
* Concepto afectado: tiene "smell" no es claro el codigo.
* Sugerencia: agregar los comentarios correspondientes.
* Aceptado: se incorporan comentarios a las clases aclarando el funcionamiento de los efectos, y se agregan comentarios a los efectos detallando el uso de los parámetros.

* Observacion 4: En las clases del dominio (los objetos espaciales) el metodo definir_estado tiene un if debajo del otro.
* Concepto afectado: claridad, serie de if.
* Sugerencia: escribir las condiciones de evaluacion en un solo if.
* Respuesta: rechazado. Efectivamente ES un smell, pero no pude encontrar otra forma de hacer que se analicen individualmente los atributos 'vida' y 'masa' para ponerlos en 0 si son negativos.

* Observacion 5: Me gusto el modelado de los "efectos".