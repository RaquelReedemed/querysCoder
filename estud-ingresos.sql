/*
Se requiere conocer el documento, el domicilio, el código postal y 
el nombre de los primeros 100 estudiantes que se registraron en la plataforma.
Keywords: Documento, Estudiantes, Fecha Ingreso.
*/

SELECT * FROM Estudiantes;

SELECT TOP(100) e.Nombre, e.Documento, e.Domicilio, e.[Codigo Postal], e.[Fecha Ingreso]
FROM Estudiantes e
ORDER BY [Fecha Ingreso];


