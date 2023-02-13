/*
Se quiere conocer la siguiente información de los docentes: 
El nombre completo (concatenar el nombre y el apellido), renombrar NombresCompletos,
el documento, el nombre del encargado,renombrar NombreEncargado, 
el teléfono del encargado, renombrar TelefonoEncargado, 
el nombre del curso o carrera, la jornada , el nombre del área, 
hacer un cálculo para conocer los meses de ingreso, renombrar meses_ingreso.
Solo se desean visualizar los que llevan más de 3 meses. 
Ordenar los meses de ingreso de mayor a menor.  
Keywords: Encargo,Area,Staff,jornada, fecha ingreso.
*/
SELECT TOP(2) * FROM Encargado
SELECT TOP(2) * FROM Area
SELECT TOP(2) * FROM Staff
SELECT TOP(2) * FROM Asignaturas

SELECT CONCAT(s.Nombre,' ', s.Apellido) nombresCompletos,
       s.Documento,
	   e.Nombre nombreEncargado,
	   e.Telefono telefonoEncargado,
	   a.Nombre nombreCurso,
	   a.Jornada,
	   ar.Nombre nombreArea,
	   DATENAME(MONTH, s.[Fecha Ingreso]) meses_ingreso,
	   DATEDIFF(MONTH, s.[Fecha Ingreso], CURRENT_TIMESTAMP) cant_meses
FROM Staff s
JOIN Encargado e ON 
s.Encargado = e.Encargado_ID
JOIN Asignaturas a ON
s.Asignatura = a.AsignaturasID
JOIN Area ar ON
ar.AreaID = a.Area
ORDER BY cant_meses DESC

--otra manera de resolver
select concat(s.Nombre,' ', s.Apellido) as NombresCompletos, s.Documento, e.Nombre as NombreEncargado, e.Telefono as TelefonoEncargado,
	a.Nombre as Asignatura, a.Jornada, area.Nombre as Area, s.[Fecha Ingreso], datediff(month, [Fecha Ingreso], CURRENT_TIMESTAMP) as Meses_ingreso
from Staff s 
join Encargado e
	on s.Encargado = e.Encargado_ID
join Asignaturas a
	on s.Asignatura=a.AsignaturasID
join Area
	on a.Area=area.AreaID
where datediff(month, [Fecha Ingreso], CURRENT_TIMESTAMP) >3
order by datediff(month, [Fecha Ingreso], CURRENT_TIMESTAMP) asc