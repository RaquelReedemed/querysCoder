/*
Análisis asignaturas sin docentes o tutores: 
Identificar el tipo de asignatura, la jornada, la cantidad de áreas únicas y la cantidad total
de asignaturas que no tienen asignadas docentes o tutores.
Ordenar por tipo de forma descendente.
*/
SELECT * FROM Area
SELECT * FROM Asignaturas
SELECT * FROM Staff

/*Cada asignatura puede o no tener docente asociado, por lo tanto se usa LEFT JOIN para
que traiga todas las asignaturas y devolvera NULL sino encuentra coincidencia con tabla 
Staff */
SELECT 
       a.Tipo,
	   a.Jornada,
	   COUNT(distinct a.Area) cant_Areas,
	   COUNT(a.Nombre) cant_Asig	   
FROM  Asignaturas a 
LEFT JOIN Staff s ON   
      a.AsignaturasID = s.Asignatura
WHERE s.DocentesID is null
GROUP BY a.Tipo, a.Jornada
ORDER BY cant_Asig DESC

--comprondo veracidad de datos con RIGHT
/* todas las asignaturas de la tabla Staff tienen  propiedades en tabla Asignaturas por
lo tanto devolvera todas las asignaturas de la tabla staff que son un total de 300 asignaturas
el cual coincide con la cantidad del staff osea 300 docentes */
SELECT 
       a.Tipo,
	   a.Jornada,
	   COUNT(distinct a.Area) cant_Areas,
	   COUNT(a.Nombre) cant_Asig	   
FROM  Asignaturas a 
RIGHT JOIN Staff s ON   
      a.AsignaturasID = s.Asignatura
GROUP BY a.Tipo, a.Jornada
ORDER BY cant_Asig DESC

--comprondo veracidad de datos con INNER JOIN
SELECT 
       a.Tipo,
	   a.Jornada,
	   COUNT(distinct a.Area) cant_Areas,
	   COUNT(a.Nombre) cant_Asig	   
FROM  Asignaturas a 
JOIN Staff s ON   
      a.AsignaturasID = s.Asignatura
GROUP BY a.Tipo, a.Jornada
ORDER BY cant_Asig DESC





		
		 



	   
   

