//onsulta que obtiene datos de algunas tablas para rellenar una tabla diferente
SELECT p.nombre, p.direccion, p.calle AS datos_profesor, a.nombre ,a.direccion, a.calle AS datos_alumno
FROM Profesor p, Alumno a

//consulta de actualizacion
UPDATE matricula
SET nota = nota + 1
WHERE nota < 7;

//consulta de supresión.
DELETE FROM seImparten
WHERE hora >= '14:00';

DELETE FROM matricula
WHERE nota < 7.5;