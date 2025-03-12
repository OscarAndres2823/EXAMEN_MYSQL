CREATE DATABASE biblioteca_campus;
USE biblioteca_campus;

CREATE TABLE biblioteca(
    id_biblioteca INT,
    nombre VARCHAR(50),
    direccion VARCHAR(50),
    telefono VARCHAR(50)
);
CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    genero VARCHAR(50),
    isbn VARCHAR(20) UNIQUE NOT NULL,
    disponibilidad BOOLEAN DEFAULT TRUE
);

CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL
);
CREATE TABLE libro_autor (
    id_libro INT,
    id_autor INT,
    PRIMARY KEY (id_libro, id_autor),
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro) ON DELETE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor) ON DELETE CASCADE
);

CREATE TABLE publicaciones (
    id_publicacion INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    fecha_publicacion DATE,
    editor VARCHAR(50),
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro) ON DELETE CASCADE
);
CREATE TABLE miembros (
    id_miembro INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE transacciones (
    id_transaccion INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    id_miembro INT,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro) ON DELETE CASCADE,
    FOREIGN KEY (id_miembro) REFERENCES miembros(id_miembro) ON DELETE CASCADE
);
