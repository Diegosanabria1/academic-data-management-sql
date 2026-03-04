CREATE TABLE Cursos (
    Id_Curso INT IDENTITY PRIMARY KEY,
    Nombre_Curso NVARCHAR(40) NOT NULL,
    Descripcion_Curso NVARCHAR(300)
);

CREATE TABLE Profesores (
    Id_Profesor INT IDENTITY PRIMARY KEY,
    Nombre_Profesor NVARCHAR(40) NOT NULL,
    Licenciatura NVARCHAR(40) NOT NULL,
    Correo NVARCHAR(50) UNIQUE
);

CREATE TABLE Estudiantes (
    Id_Estudiante INT IDENTITY PRIMARY KEY,
    Nombre_Estudiante NVARCHAR(40),
    Antecedentes TEXT
);

CREATE TABLE Grupos (
    Id_Grupo INT IDENTITY PRIMARY KEY,
    Id_Curso INT FOREIGN KEY REFERENCES Cursos(Id_Curso),
    Id_Profesor INT FOREIGN KEY REFERENCES Profesores(Id_Profesor),
    Semestre NVARCHAR(10) CHECK (Semestre IN ('2025-1', '2025-2'))
);

CREATE TABLE Inscripcion (
    Id_Inscripcion INT IDENTITY PRIMARY KEY,
    Id_Grupo INT FOREIGN KEY REFERENCES Grupos(Id_Grupo),
    Id_Estudiante INT FOREIGN KEY REFERENCES Estudiantes(Id_Estudiante),
    Fecha_Inscripcion DATE DEFAULT (GETDATE()),
    Fecha_Creacion DATETIME DEFAULT (GETDATE()),
    Calificacion_Final DECIMAL(2,1)
        CONSTRAINT CHK_Calificacion CHECK (Calificacion_Final BETWEEN 0 AND 5)

--Esta restricción es para que la calificación sea entre 0 y 5
);