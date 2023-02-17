/*
Análisis aumento de salario docente: 
Identificar el nombre, documento de identidad, el área, la asignatura y 
el aumento del salario del docente, este último calcularlo sacándole 
un porcentaje al costo de la asignatura, todas las áreas tienen un porcentaje distinto,
Marketing-17%, Diseño-20%, Programación-23%, Producto-13%, Data-15%, Herramientas 8%
*/

--SELECT * FROM Staff
--SELECT * FROM Asignaturas
--SELECT * FROM Area

SELECT s.Nombre, s.Documento,
       ar.Nombre nombre_Area,
       a.Nombre nombre_Asig,
	   a.Costo,
	   '17% MKT' as Marca,
	   CAST((a.Costo * 0.17 ) as decimal(10,3)) 'aumento%',
	   CAST( (a.Costo * 0.17 ) + a.Costo as decimal(10,3)) costoNuevo
FROM Staff s
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
WHERE ar.Nombre LIKE '%MARK%'

UNION 
SELECT s.Nombre, s.Documento,
       ar.Nombre nombre_Area,
       a.Nombre nombre_Asig,
	   a.Costo,
	   '23% PROGRAM' as Marca,
	   CAST((a.Costo * 0.20 ) as decimal(10,3)) 'aumento%',
	   CAST( (a.Costo * 0.20 ) + a.Costo as decimal(10,3)) costoNuevoMKT
FROM Staff s
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
WHERE ar.Nombre LIKE '%DISE%'

UNION
SELECT s.Nombre, s.Documento,
       ar.Nombre nombre_Area,
       a.Nombre nombre_Asig,
	   a.Costo,
	   '23% PROGRAM' as Marca,
	   CAST((a.Costo * 0.23 ) as decimal(10,3)) 'aumento%',
	   CAST( (a.Costo * 0.23 ) + a.Costo as decimal(10,3)) costoNuevo
FROM Staff s
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
WHERE ar.Nombre LIKE '%PROGRAM%'

UNION
SELECT s.Nombre, s.Documento,
       ar.Nombre nombre_Area,
       a.Nombre nombre_Asig,
	   a.Costo,
	   '13% PRODUCT' as Marca,
	   CAST((a.Costo * 0.13 ) as decimal(10,3)) 'aumento%',
	   CAST( (a.Costo * 0.13 ) + a.Costo as decimal(10,3)) costoNuevo
FROM Staff s
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
WHERE ar.Nombre LIKE '%PROD%'

UNION
SELECT s.Nombre, s.Documento,
       ar.Nombre nombre_Area,
       a.Nombre nombre_Asig,
	   a.Costo,
	   '15% DATA' as Marca,
	   CAST((a.Costo * 0.15 ) as decimal(10,3)) 'aumento%',
	   CAST( (a.Costo * 0.15 ) + a.Costo as decimal(10,3)) costoNuevo
FROM Staff s
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
WHERE ar.Nombre LIKE '%DAT%'

UNION
SELECT s.Nombre, s.Documento,
       ar.Nombre nombre_Area,
       a.Nombre nombre_Asig,
	   a.Costo,
	   '8% HERRAMIENTAS' as Marca,
	   CAST((a.Costo * 0.08 ) as decimal(10,3)) 'aumento%',
	   CAST( (a.Costo * 0.08 ) + a.Costo as decimal(10,3)) costoNuevo
FROM Staff s
LEFT JOIN Asignaturas a ON
       a.AsignaturasID = s.Asignatura
LEFT JOIN Area ar ON
       ar.AreaID = a.Area
WHERE ar.Nombre LIKE '%HERR%'
ORDER BY ar.Nombre



