/*
Análisis encargado tutores jornada noche: 
Identificar el nombre del encargado, el documento de identidad, 
el número de la camada (solo el número) y la fecha de ingreso del tutor.
Ordenar por camada de forma mayor a menor.
*/
SELECT  * FROM Encargado
SELECT TOP(2) * FROM Staff
SELECT TOP(2) * FROM Estudiantes

SELECT e.Tipo,
       e.Encargado_ID,
       e.Nombre nombreEncargado , 
       e.Documento,
	   RIGHT(s.Camada, 5) nroCamada,
       s.[Fecha Ingreso] fecha_Ingreso_Tutor,
	   a.Jornada
FROM Encargado e
JOIN Staff s ON
 e.Encargado_ID = s.Encargado
JOIN Asignaturas a ON
 a.AsignaturasID = s.Asignatura
 WHERE a.Jornada LIKE '%noche%' and e.Tipo LIKE'%tut%'
 ORDER BY nroCamada DESC

 --otra manera de resolver
 select e.Nombre, e.Encargado_ID, replace (Camada, 'camada ','') as camada,s.[Fecha Ingreso]
from Encargado e
join Staff s
on s.Encargado=e.Encargado_ID
join Asignaturas a
on a.AsignaturasID=s.Asignatura
where e.Tipo like '%Tutores%'
and a.Jornada = 'Noche'
order by camada desc