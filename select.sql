
// media de las notas de los alumnos
SELECT AVG(nota) AS media_notas FROM Matricula;

//número total de alumnos matriculados en la tabla matricula
SELECT COUNT(*) AS total_alumnos
FROM Alumno
WHERE dni IN (SELECT dni_alumno FROM Matricula);

//todos los alumnos que sean mayor a esa fecha
SELECT a.nombre
FROM Alumno a
WHERE fecha_nacimiento > TO_DATE('2004-01-01', 'YYYY-MM-DD');


//una comprobación para verificar si el valor está en una lista.
SELECT *
FROM Enseña
WHERE dni_profesor IN ('23456789A', '01234567J', '45678901C')

//consultas multiples de 2 o mas tablas
//nombres de los alumnos y los nombres de las asignaturas en las que están matriculados.
SELECT a.nombre, s.nombre
FROM Alumno a
JOIN Matricula m ON a.dni = m.dni_alumno
JOIN Asignatura s ON m.codigo_asignatura = s.codigo_asignatura;

SELECT p.nombre, c.nombre
FROM Profesor p
JOIN Curso c ON p.dni = c.dni_profesor;


//campos calculado consulta simple
numero de alumnos que estan matriculados en historia
SELECT COUNT(*) AS NumAlumnosMatematicas
FROM Alumno a
JOIN Matricula m ON a.dni = m.dni_alumno
JOIN Asignatura s ON m.codigo_asignatura = s.codigo_asignatura
WHERE s.nombre = 'Historia';


SELECT si.codigo_clase, c.numero_mesas, COUNT(si.codigo_asignatura) AS total_asignaturas
FROM SeImparten si
JOIN Clase c ON si.codigo_clase = c.codigo_clase
GROUP BY si.codigo_clase, c.numero_mesas;


//utilizando el group by
//media de mesas en cada planta
SELECT numero_planta, AVG(numero_mesas) AS promedio_mesas
FROM Clase
GROUP BY numero_planta;
