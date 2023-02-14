/*
NIVEL OPERATIVO:        Análisis de docentes por camada/ comisión: 
Número de documento de identidad, nombre del docente y camada, para identificar la camada mayor
y la menor según el número de la  camada. 
Número de documento de identidad, nombre de docente y camada para identificar la camada con
fecha de ingreso mayo 2021. 
Agregar un campo indicador que informe cuáles son los registros ”mayor o menor” y
los que son “mayo 2021” y ordenar el listado de menor a mayor por camada.
*/
SELECT TOP(2) * FROM Staff

SELECT s.Documento, s.Nombre,
	   s.Camada,
	   'Menor' as Indicador,
	   s.[Fecha Ingreso],
	   DATENAME(MONTH, s.[Fecha Ingreso]) mesIngreso,
	   YEAR(s.[Fecha Ingreso]) anioIngreso
FROM Staff s
WHERE s.Camada = 
           (Select MIN(camada)
		   from Staff)
UNION
SELECT s.Documento, s.Nombre,
	   s.Camada,
	   'Mayor' as Indicador,
	   s.[Fecha Ingreso],
	   DATENAME(MONTH, s.[Fecha Ingreso]) mesIngreso,
	   YEAR(s.[Fecha Ingreso]) anioIngreso
FROM Staff s
WHERE s.Camada = 
           (Select MAX(camada)
		   from Staff)
UNION
SELECT s.Documento, s.Nombre,
	   s.Camada,
	   'Ingreso Mayo 2021' as Indicador,
	   s.[Fecha Ingreso],
	   DATENAME(MONTH, s.[Fecha Ingreso]) mesIngreso,
	   YEAR(s.[Fecha Ingreso]) anioIngreso
FROM Staff s
WHERE DATENAME(MONTH, s.[Fecha Ingreso]) = 'May' AND
      YEAR(s.[Fecha Ingreso]) = 2021
ORDER BY s.Camada
	  
--otra manera de resolver

Select  s.Nombre, s.Apellido, s.Documento, camada, 'Menor' as Indicador
from Staff s
where camada = 
	(select min(camada)
	from Staff)

	UNION

Select  s.Nombre, s.Apellido, s.Documento,camada, 'Mayor' as Indicador
from Staff s
where camada = 
	(select max(camada)
	from Staff)
	
	UNION
Select  s.Nombre, s.Apellido, s.Documento, camada,'Mayo 2021' as Indicador
from Staff s
where year([Fecha Ingreso]) = 2021
and month([Fecha Ingreso]) = 5

order by Camada


