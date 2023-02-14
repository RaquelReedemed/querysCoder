/*
Análisis de estudiantes por área de educación: 
Identificar: nombre del área, asignatura, si la asignatura es carrera o curso ,
a qué jornada pertenece, cantidad de estudiantes y monto total del costo de la asignatura. 
Ordenar el informe de mayor a menor por monto de costos total, 
tener en cuenta los docentes que no tienen asignaturas ni estudiantes asignados, 
también sumarlos.
*/
SELECT TOP(2) * FROM Area
SELECT TOP(2) * FROM Asignaturas
SELECT TOP(2) * FROM Staff
SELECT TOP(2) * FROM Profesiones
SELECT TOP(2) * FROM Estudiantes

SELECT ar.Nombre nombreArea,
       a.Nombre nombreAsgnatura, a.Tipo, a.Jornada,
	   COUNT(e.Nombre) cantEstudiantes,
	   SUM(a.Costo) costoTotal
FROM Area ar
LEFT JOIN Asignaturas a ON
     ar.AreaID = a.Area
LEFT JOIN Staff s ON
     s.Asignatura = a.AsignaturasID
LEFT JOIN Profesiones p ON
     p.ProfesionesID = s.Profesion
LEFT JOIN Estudiantes e ON
     e.Docente = s.DocentesID
GROUP BY ar.Nombre, a.Nombre, a.Tipo, a.Jornada
ORDER BY costoTotal DESC

--otra manera de resolver

select area.Nombre as Area, a.Nombre as Asignatura, Tipo, Jornada, count(estudiantesid) as cant_estudiantes, 
sum(costo) as costo_total
from Asignaturas a
left join Area on area.AreaID= a.Area
left join Staff s on a.AsignaturasID=s.Asignatura
left join Estudiantes e on e.Docente=s.DocentesID
group by area.Nombre, a.Nombre, Tipo, Jornada
order by sum(costo) desc