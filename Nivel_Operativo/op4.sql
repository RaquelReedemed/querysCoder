/*
Análisis de profesiones con más estudiantes: 
Identificar la profesión y la cantidad de estudiantes que ejercen, 
mostrar el listado solo de las profesiones que tienen más de 5 estudiantes.
Ordenar de mayor a menor por la profesión que tenga más estudiantes.
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



