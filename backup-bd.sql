CREATE DATABASE APP_ESTUDIANTES;
USE APP_ESTUDIANTES;

-- Crear la tabla usuarios
CREATE TABLE usuarios (
    documento VARCHAR(20),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    telefono VARCHAR(15),
    grado VARCHAR(10),
    acudiente_documento VARCHAR(20),
    rol VARCHAR(50),
    PRIMARY KEY (documento)
);

--Crear la tabla notas
CREATE TABLE notas (
    id INT AUTO_INCREMENT,
    nota INT (4),
    asignatura VARCHAR (45)
    );


-- Insertar datos de acudientes
INSERT INTO usuarios (documento, nombre, apellido, telefono, rol)
SELECT documento, nombre, apellido, telefono, 'Acudiente' AS rol
FROM acudientes;

-- Insertar datos de profesores_directivos
INSERT INTO usuarios (documento, nombre, apellido, email, telefono, rol)
SELECT documento, nombre, apellido, email, telefono, 'Profesor/Directivo' AS rol
FROM profesores_directivos;

-- Insertar datos de estudiantes
INSERT INTO usuarios (documento, nombre, apellido, email, grado, acudiente_documento, rol)
SELECT documento, nombre, apellido, email, grado, acudiente_documento, 'Estudiante' AS rol
FROM estudiantes;

