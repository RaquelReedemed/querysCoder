/*
Se requiere saber cual es el nombre, el documento de identidad 
y el teléfono de los estudiantes que son profesionales en agronomía 
y que nacieron entre el año 1970 y el año 2000. 
Keywords: Estudiantes, Profesión, Fecha de Nacimiento.
*/

SELECT * FROM Estudiantes;
SELECT * FROM Profesiones;

SELECT Nombre, Documento, Telefono, Profesion, [Fecha de Nacimiento]
FROM Estudiantes
WHERE Profesion =
      (SELECT ProfesionesID FROM Profesiones
	  WHERE Profesiones LIKE('%Agro%'))
AND [Fecha de Nacimiento] BETWEEN '1970' AND '2000'
                 