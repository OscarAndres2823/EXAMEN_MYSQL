BIBLIOTECA CAMPUS

CARACTERISTICAS PRINCIPALES:
Manejo de Libros: La Biblioteca Campus debe ser capaz de registrar y gestionar la información

sobre cada libro, incluyendo su título, género, ISBN y disponibilidad.

Asociación de Autores: Dado que muchos libros pueden ser coescritos por varios autores y un autor puede haber escrito múltiples libros, es crucial establecer una relación clara entre los autores y sus obras a través de una entidad intermedia LibroAutor. Gestión de Publicaciones: A lo largo del tiempo, un mismo libro puede tener múltiples ediciones y publicaciones. La Biblioteca Campus necesita un sistema que registre no solo el libro, sino también sus diferentes ediciones, la fecha de publicación y el editor correspondiente, para mantener un historial adecuado de cada obra.

Transacciones de Libros: La gestión de las transacciones de préstamo y devolución es fundamental para el funcionamiento de la Biblioteca Campus. Sin un registro eficiente de estas transacciones, se puede perder el control sobre los libros prestados, lo que puede generar conflictos y malentendidos con los miembros sobre la disponibilidad de los libros.

Manejo de Miembros: Finalmente, es esencial que el sistema permita gestionar la información de los miembros que utilizan la biblioteca. Esto incluye el registro de sus datos, así como el seguimiento de las transacciones realizadas, para ofrecer un servicio más personalizado y
eficiente

Estructura del Proyecto:
     biblioteca_campus/
     ├── README.md
     └── storage/
         ├── mysql/
         │ ├── db.sql
         │ └── insert.sql
         └── diagrams/
             ├── diagrama_logico.png #La extensión de la imagen puede ser PNG o JPG.
             └── diagrama_fisico.png
             └── ERM.png

CONSULTAS:
Listar todos los libros disponibles:
     SELECT id_libro, titulo, genero, isbn
     FROM libros
     WHERE disponibilidad = 'disponible';
Buscar libros por genero:
     SELECT id_libro, titulo, genero, isbn
     FROM libros
     WHERE genero = 'nombre_genero';
Obtener informacion de un libro por ISBN:
     SELECT id_libro, titulo, genero, isbn
     FROM libros
     WHERE isbn = 'numero_isbn';
Contar el numero de libros en la biblioteca:
     SELECT COUNT(*) AS total_libros
     FROM libros;
Listar todos los autores:
     SELECT  id_autor, nombre
     FROM autores;
Buscar autores por nombre:
     SELECT  id_autor, nombrn autor especifico:
     SELECT id_libro, titulo, genero, isbn
     FROM libros
     JOIN autores ON autorid = id_autor
     WHERE nombre = 'nombre_autor';
Listar todas las ediciones de un libro:
     SELECT id_libro, id_publicacion, fecha_publicaion, editor
     FROM publicaciones
     JOIN libros ON titulo
     WHERE titulo = 'nombre_libro';
Obtener la ultima edicion de un libro: 
     SELECT id_libro, id_publicacion, fecha_publicaion, editor
     FROM publicaciones
     JOIN libros ON titulo
     WHERE titulo = 'nombre_libro'
     ORDER BY fecha_publicacion DESC LIMIT 1;
Contar cuantas ediciones hay de un libro especifico:
      SELECT id_libro, disponibilidad
      FROM libros;
Listar todas las transacciones de prestamo:
      SELECT id_transaccion, fecha_prestamo
      FROM transacciones;
Obtener los libros prestados actualmente:
      SELECT id_libro, nombre
      FROM libros 
      JOIN transacciones ON fecha_prestamo
      WHERE fecha_prestamo = 'nombre_libro';
Contar con el numero de transacciones de un miembro especifico:
      SELECT id_transaccion, id_miembro, nombre
      FROM transacciones
      ORDER BY id_miembro DESC LIMIT 1;
Listar todos los miembros de la biblioteca:
      SELECT id_miembro, nombre
      FROM miembros;
Buscar un miembro por nombre:
      SELECT id_miembro, nombre 
      FROM miembros 
      WHERE nombre LIKE 'nombre_miembro';
Obtener las transacciones de un miembro especifico:
      SELECT id_transaccion, id_miembro
      FROM transacciones
      WHERE id_miembro = 'nombre_miembro'
      ORDER BY id_miembro DESC LIMIT 1;
Listar todos los libros y sus autores:
      SELECT id_libro, nombre AS autor
      FROM libros
      WHERE autor = 'nombre_autor';
Obtener el historial de prestamos de un libro en especifico:
      SELECT id_prestamos, fecha_prestamos, id_libro
      FROM prestamos
      WHERE id_libro = 'nombre_libro';
Contar cuantos libros han sido prestados en total:
      SELECT COUNT(*) AS total_libros
      FROM prestamos;
Listar todos los libros junto con su utlima edicion y estado de disponibilidad:
      SELECT id_libro, disponibilidad
      FROM libros
      WHERE disponibilidad = 'disponible';
