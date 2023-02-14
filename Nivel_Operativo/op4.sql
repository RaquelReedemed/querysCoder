/*
An�lisis de profesiones con m�s estudiantes: 
Identificar la profesi�n y la cantidad de estudiantes que ejercen, 
mostrar el listado solo de las profesiones que tienen m�s de 5 estudiantes.
Ordenar de mayor a menor por la profesi�n que tenga m�s estudiantes.
*/
SELECT * FROM Profesiones
SELECT * FROM Estudiantes

SELECT  p.Profesiones, COUNT(e.Nombre) cantEstudiantes
FROM Profesiones p
JOIN Estudiantes e ON
     p.ProfesionesID = e.Profesion
GROUP BY p.Profesiones
HAVING COUNT(e.Nombre) > 5
ORDER BY cantEstudiantes 



