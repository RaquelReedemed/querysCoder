/*
Se requiere un listado unificado con nombre, apellido, documento y 
una marca indicando a que base corresponde.
Renombrar como Marca Keywords: Encargo,Staff,Estudiantes,
*/
SELECT TOP(2) * FROM Encargado
SELECT TOP(2) * FROM Staff
SELECT TOP(2) * FROM Estudiantes

select Nombre, Apellido, Documento, 'Estudiante' as Marca
from Estudiantes
UNION
select Nombre, Apellido, Documento, 'Docente' as Marca
from Staff 
UNION
select Nombre, Apellido, Documento, 'Encargado' as Marca
from Encargado 