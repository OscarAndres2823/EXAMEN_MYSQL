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
     SELECT  id_autor, nombre
     FROM autores
     WHERE nombre LIKE 'nombre_autor';
Obtener todos los libros de un autor especifico:
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
     
Listar todas las transacciones de prestamo:
     
Obtener los libros prestados actualmente:

Contar con el numero de transacciones de un miembro especifico:
 
Listar todos los miembros de la biblioteca 
Buscar un miembro por nombre
Obtener las transacciones de un miembro especifico 
Listar todos los libros y sus autores
Obtener el historial de prestamos de un libro en especifico 
Contar cuantos libros han sido prestados en total
Listar todos los libros junto con su utlima edicion y estado de disponibilidad


![image](https://github.com/user-attachments/assets/065c8568-bbe4-40da-bc92-7194de26e75b)


![image](https://github.com/user-attachments/assets/06a2da16-fa47-4518-95fc-a952a2729e74)

