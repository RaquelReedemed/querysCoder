/*
Se requiere saber todos los datos de asignaturas que no tienen un docente asignado.
El modelo de la consulta debe partir desde la tabla docentes.
Keywords: Staff, Asignaturas, Area.
*/
SELECT TOP(5) * FROM Staff
SELECT TOP(5) * FROM Asignaturas
SELECT TOP(5) * FROM Area

SELECT
     a.AsignaturasID,
     a.Nombre nombreAsignatura,
     COUNT(s.Nombre)  cantDocentes,
	 a.Tipo,
	 a.Jornada,
	 a.Costo,
	 a.Area,
	 ar.Nombre as nombre_area
FROM Staff s
RIGHT JOIN Asignaturas a ON
s.Asignatura = a.AsignaturasID
LEFT JOIN Area ar ON
a.Area = ar.AreaID
GROUP BY a.Nombre, a.Tipo, a.Jornada, a.Costo, a.Area, ar.Nombre, a.AsignaturasID
HAVING COUNT(s.Nombre) = 0
ORDER BY cantDocentes

--otra manera de resolver
select a.AsignaturasID, a.Nombre, Tipo, Jornada, Costo, Area.Nombre as Area, count(docentesid) as Docentes_Asignados
from Staff s
right join Asignaturas a
on a.AsignaturasID=s.Asignatura
join Area  on a.Area = Area.AreaID
group by a.AsignaturasID, a.Nombre, Tipo, Jornada, Costo, Area.Nombre
having count(docentesid) =0
ORDER BY a.AsignaturasID


