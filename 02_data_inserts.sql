INSERT INTO Cursos (Nombre_Curso, Descripcion_Curso)
VALUES
('Matemáticas Básicas', 'Curso introductorio a los fundamentos de álgebra, geometría y aritmética.'),
('Programación I', 'Curso inicial sobre lógica de programación y estructuras básicas en Python.'),
('Bases de Datos', 'Conceptos de diseño, normalización y SQL relacional.'),
('Física General', 'Principios de mecánica, movimiento y energía.'),
('Inglés Intermedio', 'Práctica de comprensión oral y escrita, gramática y vocabulario intermedio.'),
('Algoritmos y Estructuras de Datos', 'Uso de estructuras lineales y no lineales para la resolución de problemas.'),
('Estadística Descriptiva', 'Análisis y representación de datos mediante medidas de tendencia y dispersión.'),
('Desarrollo Web', 'Creación de sitios web con HTML, CSS y JavaScript.');

INSERT INTO Profesores (Nombre_Profesor, Licenciatura, Correo)
VALUES
('Laura Gómez', 'Licenciatura en Matemáticas', 'laura.gomez@universidad.edu.co'),
('Carlos Pérez', 'Ingeniería de Sistemas', 'carlos.perez@universidad.edu.co'),
('Ana Rodríguez', 'Licenciatura en Física', 'ana.rodriguez@universidad.edu.co'),
('Julián Torres', 'Filología Inglesa', 'julian.torres@universidad.edu.co'),
('María Fernanda Ruiz', 'Estadística', 'maria.ruiz@universidad.edu.co'),
('Andrés Mendoza', 'Ingeniería de Software', 'andres.mendoza@universidad.edu.co'),
('Diana Herrera', 'Educación en Ciencias', 'diana.herrera@universidad.edu.co'),
('Santiago López', 'Desarrollo Web', 'santiago.lopez@universidad.edu.co');

INSERT INTO Estudiantes (Nombre_Estudiante, Antecedentes)
VALUES
('Mateo Rojas', 'Bachiller académico con interés en ingeniería.'),
('Sofía Torres', 'Graduada con énfasis en ciencias naturales.'),
('Valentina García', 'Bachiller técnica en programación.'),
('Juan Pablo Gómez', 'Estudiante con afinidad por las matemáticas.'),
('Camila Hernández', 'Egresada de colegio bilingüe.'),
('Andrés López', 'Apasionado por la tecnología y el desarrollo web.'),
('Daniela Martínez', 'Buen desempeño en física y química.'),
('Sebastián Ramírez', 'Interés en análisis de datos y estadística.'),
('Isabella Castaño', 'Amante del inglés y la enseñanza.'),
('Tomás Jiménez', 'Destacado en lógica y resolución de problemas.');

INSERT INTO Grupos (Id_Curso, Id_Profesor, Semestre)
VALUES
(1, 1, '2025-1'),
(2, 2, '2025-1'),
(3, 6, '2025-1'),
(4, 3, '2025-1'),
(5, 4, '2025-1'),
(6, 2, '2025-2'),
(7, 5, '2025-2'),
(8, 8, '2025-2');

INSERT INTO Inscripcion (Id_Grupo, Id_Estudiante, Calificacion_Final)
VALUES
(1, 1, 4.5),  
(1, 2, 3.8),  
(2, 3, 4.2),  
(2, 6, 4.9),  
(3, 8, 4.0),  
(3, 6, 4.7),  
(4, 7, 3.9),  
(5, 9, 4.6),  
(6, 10, 4.4), 
(7, 8, 4.1),  
(8, 6, 4.8),  
(8, 3, 4.3);  