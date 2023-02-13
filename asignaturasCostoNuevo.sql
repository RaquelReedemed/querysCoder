/*
Se desea calcular el 25% de aumento para las asignaturas del �rea de marketing 
de la jornada ma�ana; se deben traer todos los campos, 
m�s el de los c�lculos correspondientes. 
El porcentaje y el nuevo costo debe estar en decimal con 3 digitos. 
Renombrar el c�lculo del porcentaje con el nombre porcentaje y 
la suma del costo m�s el porcentaje por NuevoCosto.
Keywords: Asignaturas, Costo, �rea, Jornada, Nombre
*/

SELECT * FROM Asignaturas;
SELECT 
	   a.Nombre,
	   a.Jornada,
	   a.Area,
	   a.Tipo,
	   a.Costo,
	   CAST(SUM((Costo * 0.25)) a s decimal(10,3)) AS Porcentaje,
	   CAST(SUM((Costo * 0.25) + Costo ) as decimal(10,3)) AS NuevoCosto
FROM Asignaturas a
WHERE a.Nombre LIKE '%Mark%'
  AND a.Jornada LIKE '%Man%'
GROUP BY a.Costo, a.Nombre, a.Jornada, a.Area, a.Tipo

