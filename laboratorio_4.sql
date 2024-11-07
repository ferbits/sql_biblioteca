CREATE DATABASE biblioteca;

USE biblioteca;
CREATE TABLE Autor(
	ID_Autor INT PRIMARY KEY AUTO_INCREMENT,
	Nombre VARCHAR(100)NOT NULL,
	Nacionalidad VARCHAR(100)NOT NULL,
	Fecha_Nacimiento DATE NOT NULL
);


USE biblioteca;
CREATE TABLE Categoria(
	ID_Categoria INT PRIMARY KEY AUTO_INCREMENT,
	Nombre_Categoria VARCHAR(100) NOT NULL
);


USE biblioteca;
CREATE TABLE Libro(
	ID_Libro INT PRIMARY KEY AUTO_INCREMENT,
	Titulo VARCHAR(100) NOT NULL,
	ID_Autor INT NOT NULL,
	ID_Categoria INT NOT NULL,
	Año_Publicacion DATE NOT NULL,
	Disponible BOOLEAN,
	FOREIGN KEY (ID_Autor) REFERENCES Autor (ID_Autor),
	FOREIGN KEY (ID_Categoria) REFERENCES Categoria (ID_Categoria)
);



USE biblioteca;
CREATE TABLE Usuario(
	ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
	Nombre VARCHAR(100)NOT NULL,
	Direccion VARCHAR(100)NOT NULL,
	Telefono VARCHAR (50) NOT NULL
);



USE biblioteca;
CREATE TABLE Prestamos(
	ID_Prestamo INT PRIMARY KEY AUTO_INCREMENT,
	ID_Libro INT NOT NULL,
	ID_Usuario INT NOT NULL,
	Fecha_Prestamo DATE NOT NULL,
	Fecha_Devolucion DATE NOT NULL,
	FOREIGN KEY (ID_Libro) REFERENCES Libro (ID_Libro)
);



USE biblioteca;
INSERT INTO Autor (Nombre,Nacionalidad,Fecha_Nacimiento)VALUES 
('Gabriel García Márquez', 'Colombiano', 19270306),
('J.K. Rowling', 'Británica', 19650731),('George Orwell','Británica',19030625);


USE biblioteca;
INSERT INTO Categoria (ID_Categoria,Nombre_Categoria)VALUES ('Novela'),('Ciencia Ficción'),('Fantasía'),('Ensayo');

//SINO FUERA AUTOINCREMENTAL

INSERT INTO categoria (ID_categoria, Nombre_Categoria) VALUES 
(1, 'Novela'), 
(2, 'Ciencia Ficción'), 
(3, 'Fantasía'), 
(4, 'Ensayo');



USE biblioteca;
INSERT INTO Libro(Titulo,ID_Autor,ID_Categoria,Año_Publicacion,Disponible) 
VALUES ('Cien Años de Soledad', 1, 1, 1967,TRUE),
('Harry Potter y la Piedra Filosofal', 2, 3, 1997,FALSE),
('La era de 1984', 3, 2, 1949,TRUE);


INSERT INTO Usuario(Nombre,Direccion,Telefono)
VALUES ('Carlos Martínez', 'Calle Luna','123456789'),
('Lucía Fernández', 'Avenida Sol', '987654321');

USE biblioteca;
INSERT INTO Prestamos (ID_Libro,ID_Usuario,Fecha_Prestamo,Fecha_Devolucion) 
VALUES (1,1,20240801, 20240815),(2,2, 20240802,20240816);

