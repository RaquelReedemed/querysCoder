/*
Se requiere saber cual es el nombre, el documento de identidad 
y el tel�fono de los estudiantes que son profesionales en agronom�a 
y que nacieron entre el a�o 1970 y el a�o 2000. 
Keywords: Estudiantes, Profesi�n, Fecha de Nacimiento.
*/

SELECT * FROM Estudiantes;
SELECT * FROM Profesiones;

SELECT Nombre, Documento, Telefono, Profesion, [Fecha de Nacimiento]
FROM Estudiantes
WHERE Profesion =
      (SELECT ProfesionesID FROM Profesiones
	  WHERE Profesiones LIKE('%Agro%'))
AND [Fecha de Nacimiento] BETWEEN '1970' AND '2000'
                 