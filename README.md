# Demo Refactoring

Este repositorio contiene el código de una tienda de arriendo de películas. Es bastante simple y un par de archivos:

* `movie.rb`: Clase para representar a cada película, con su título y tipo para determinar su precio.
* `rental.rb`: Clase para representar la acción de arrentar una película, incluyendo por cuántos días se arrienda.
* `customer.rb`: Clase para representar a cada cliente, con su nombre y el historial de arriendos.
* `rental_test.rb`: Test simple implementado con el framework [minitest](https://github.com/minitest/minitest). Prueba el "happy path" (caso exitoso) en que el historial de arriendos se imprime correctamente.

En la rama principal se encuentra el código en su estado inicial, sobre el cual se aplicará refactoring.
