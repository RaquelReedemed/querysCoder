/*
Análisis diario de estudiantes: 
Por medio de la fecha de ingreso de los estudiantes identificar: cantidad total de estudiantes.
Mostrar los periodos de tiempo separados por año, mes y día, y presentar la información
ordenada por la fecha que más ingresaron estudiantes.
*/
SELECT TOP(2) * FROM Estudiantes

SELECT COUNT(e.Nombre) cantEstudiantes,
       YEAR(e.[Fecha Ingreso]) anioIngreso ,
	   DATENAME(MONTH, e.[Fecha Ingreso]) mesIngreso ,
	   DAY(e.[Fecha Ingreso]) diaIngreso
FROM Estudiantes e
WHERE  YEAR(e.[Fecha Ingreso]) = '2020'
GROUP BY e.[Fecha Ingreso]

UNION
SELECT COUNT(e.Nombre) cantEstudiantes ,
       YEAR(e.[Fecha Ingreso]) anioIngreso ,
	   DATENAME(MONTH, e.[Fecha Ingreso]) mesIngreso ,
	   DAY(e.[Fecha Ingreso]) diaIngreso
FROM Estudiantes e
WHERE  YEAR(e.[Fecha Ingreso]) = '2021'
GROUP BY e.[Fecha Ingreso]
ORDER BY cantEstudiantes DESC

--otra manera de resolver
select year([fecha ingreso]) as año, month([fecha ingreso]) as mes,day([fecha ingreso]) as dia,count(EstudiantesID) as cant_estudiantes
from Estudiantes
group by year([fecha ingreso]), month([fecha ingreso]),day([fecha ingreso])
order by count(EstudiantesID) desc





