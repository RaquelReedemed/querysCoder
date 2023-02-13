/*
Indicar cuál es el precio promedio de las carreras y los cursos por jornada.
Renombrar la nueva columna como Promedio. 
Ordenar los promedios de mayor a menor.
Keywords: Tipo, Jornada, Asignaturas. 
*/
SELECT * FROM Asignaturas;

SELECT Tipo, Jornada, CAST(AVG(Costo) as decimal(10,2)) AS Promedio
FROM Asignaturas
GROUP BY Tipo, Jornada
