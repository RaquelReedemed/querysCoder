/*
Indicar el nombre, apellido y documento de identidad de los docentes y tutores 
que tienen asignaturas “UX” .
Keywords: Staff, Asignaturas, Nombre, Apellido.
*/
SELECT * FROM Staff;
SELECT * FROM Asignaturas;

SELECT s.Nombre, s.Apellido, s.Documento, s.Asignatura
FROM Staff s
WHERE Asignatura in
      (SELECT a.AsignaturasID
	   FROM Asignaturas a
	   WHERE a.Nombre LIKE '%UX%')
ORDER BY s.Asignatura;

