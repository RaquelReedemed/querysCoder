/*
Análisis mensual de estudiantes por área: 
Identificar para cada área: el año y el mes (concatenados en formato YYYYMM), 
cantidad de estudiantes y monto total de las asignaturas. 
Ordenar por mes del más actual al más antiguo y por cantidad de clientes de mayor a menor.
*/
USE CoderHouse
SELECT TOP(2) * FROM Estudiantes
SELECT TOP(2) * FROM Staff
SELECT  * FROM Asignaturas
SELECT TOP(2) * FROM Area


SELECT ar.Nombre nombreArea,
       CONCAT(YEAR(e.[Fecha Ingreso] ),'-' ,MONTH(e.[Fecha Ingreso])) fecha, 
       COUNT(e.Nombre) cantEstudiantes,
	   SUM(a.Costo) costoAsig
FROM Estudiantes e
LEFT JOIN Staff s ON
       e.Docente = s.DocentesID
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
GROUP BY ar.Nombre, 
        CONCAT(YEAR(e.[Fecha Ingreso] ),'-' ,MONTH(e.[Fecha Ingreso]))
ORDER BY fecha, cantEstudiantes DESC
	
	
--otra forma de resolver

Select area.Nombre, 
concat (year(e.[Fecha Ingreso]),'-',cast(month(e.[Fecha Ingreso]) as char(2))) as 'Año - Mes Ingreso', 
count(e.Documento) as cantidad_estudiantes, sum(costo) as Costo_total
from Area 
join Asignaturas a
on area.AreaID = a.Area
join Staff s
on s.Asignatura = a.AsignaturasID
join Estudiantes e
on e.Docente = s.DocentesID
group by area.Nombre, concat (year(e.[Fecha Ingreso]),'-',month(e.[Fecha Ingreso])),
         concat (year(e.[Fecha Ingreso]),'-',cast(month(e.[Fecha Ingreso]) as char(2)))

order by 
         concat (year(e.[Fecha Ingreso]),'-',month(e.[Fecha Ingreso])),
         count(e.Documento) DESC



