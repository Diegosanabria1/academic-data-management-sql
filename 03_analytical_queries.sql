--Visualizar registros de estudiantes
SELECT 
    I.Id_Inscripcion,
    E.Nombre_Estudiante,
    C.Nombre_Curso,
    P.Nombre_Profesor,
    I.Calificacion_Final,
    I.Fecha_Inscripcion
FROM Inscripcion I
INNER JOIN Grupos G ON I.Id_Grupo = G.Id_Grupo
INNER JOIN Estudiantes E ON I.Id_Estudiante = E.Id_Estudiante
INNER JOIN Cursos C ON G.Id_Curso = C.Id_Curso
INNER JOIN Profesores P ON G.Id_Profesor = P.Id_Profesor
ORDER BY E.Nombre_Estudiante;
--Promedio por curso
SELECT 
    C.Nombre_Curso,
    AVG(I.Calificacion_Final) AS Promedio_Curso
FROM Inscripcion I
JOIN Grupos G ON I.Id_Grupo = G.Id_Grupo
JOIN Cursos C ON G.Id_Curso = C.Id_Curso
GROUP BY C.Nombre_Curso
ORDER BY Promedio_Curso DESC;
--Top estudiantes por promedio
SELECT 
    E.Nombre_Estudiante,
    AVG(I.Calificacion_Final) AS Promedio_Estudiante
FROM Inscripcion I
JOIN Estudiantes E ON I.Id_Estudiante = E.Id_Estudiante
GROUP BY E.Nombre_Estudiante
ORDER BY Promedio_Estudiante DESC;
--Desempeño promedio por profesor
SELECT 
    P.Nombre_Profesor,
    AVG(I.Calificacion_Final) AS Promedio_Profesor
FROM Inscripcion I
JOIN Grupos G ON I.Id_Grupo = G.Id_Grupo
JOIN Profesores P ON G.Id_Profesor = P.Id_Profesor
GROUP BY P.Nombre_Profesor
ORDER BY Promedio_Profesor DESC;