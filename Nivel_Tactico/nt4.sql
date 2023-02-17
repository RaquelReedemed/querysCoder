/*
Análisis asignaturas mayor al promedio: 
Identificar el nombre de la asignatura, el costo de la asignatura y el promedio del costo 
de las asignaturas por área. 
Una vez obtenido el dato, del promedio se debe visualizar solo las carreras que se encuentran
por encima del promedio. 
*/

SELECT * FROM Asignaturas

--prom de costo por area 
SELECT a.Area, AVG(a.Costo) prom_Areas
FROM Asignaturas a
GROUP BY a.Area

SELECT   a.Tipo,
         a.Nombre nombre_Asig,
		 a.Costo,
         a.Area,
		 tablaProm.prom_Areas
FROM Asignaturas a
JOIN (SELECT a.Area, AVG(a.Costo) prom_Areas 
      FROM Asignaturas a
	  GROUP BY a.Area) tablaProm ON
      tablaProm.Area = a.Area     
WHERE a.Tipo LIKE '%carre%' AND
      a.Costo < tablaProm.prom_Areas
GROUP BY a.Nombre, a.Area, a.Tipo, a.Costo, tablaProm.prom_Areas
--HAVING AVG(a.Costo) > AVG(a.Costo)
ORDER BY a.Costo DESC


--comprobando nombre de materias unicas (sin repetir)
--SELECT DISTINCT(a.Nombre)
--FROM Asignaturas a

--otra manera de resolver

select tipo, a.Nombre, a.Costo,a.Area, pa.Costo_promedio_area
from asignaturas a
join
   (select Area,  avg(costo) as Costo_promedio_area
     from Asignaturas a
     group by Area ) pa
on pa.Area=a.Area
where a.Tipo = 'Carrera'
and Costo > pa.Costo_promedio_area
ORDER BY a.Costo DESC
