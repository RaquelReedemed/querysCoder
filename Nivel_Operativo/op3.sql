/*
Análisis de encargados con más docentes a cargo: 
Identificar el top 10 de los encargados que tiene más docentes a cargo,
filtrar solo los que tienen a cargo docentes. 
Ordenar de mayor a menor para poder tener el listado correctamente.
*/

SELECT TOP(2) * FROM Encargado
SELECT TOP(2) * FROM Staff

SELECT TOP(10) e.Encargado_ID, 
        e.Nombre nombreEncargado, 
		e.Tipo,
		COUNT(s.Nombre) cantDocentes
FROM Encargado e
LEFT JOIN Staff s ON
e.Encargado_ID = s.Encargado
WHERE e.Tipo LIKE '%Docent%'
GROUP BY e.Encargado_ID, e.Nombre, e.Tipo
ORDER BY cantDocentes DESC

--otra manera de resolver

select top (10) Encargado_ID, e.Nombre, e.Apellido, count(docentesid) as cant_docentes
from Encargado e
join staff s
on e.Encargado_ID=s.Encargado
WHERE e.Tipo LIKE '%Docent%'
group by Encargado_ID, e.Nombre, e.Apellido
order by count(docentesid) desc

