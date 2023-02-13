/*
Indicar por jornada la cantidad de docentes que dictan y sumar los costos.
Esta información solo se desea visualizar para las asignaturas de desarrollo web. 
El resultado debe contener todos los valores registrados en la primera tabla, 
Renombrar la columna del cálculo de la cantidad de docentes como cant_docentes y 
la columna de la suma de los costos como suma_total. 
Keywords: Asignaturas,Staff, DocentesID, Jornada, Nombre, costo.
*/
SELECT * FROM Asignaturas;
SELECT * FROM Staff;

SELECT COUNT(s.Nombre) as cant_docentes,
       a.Jornada, 
	   CAST(SUM(a.Costo) as decimal(10,2)) as suma_total,
	   a.Nombre
FROM Staff s
RIGHT JOIN Asignaturas a
ON s.Asignatura = a.AsignaturasID
WHERE a.Nombre LIKE '%web%'
GROUP BY a.Jornada, a.Nombre;

