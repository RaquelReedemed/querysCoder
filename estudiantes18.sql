/*
Se requiere calcular la edad de los estudiantes en una nueva columna.
Renombrar a la nueva columna Edad. 
Filtrar solo los que son mayores de 18 años. 
Ordenar de menor a mayor.
Keywords: Fecha de Nacimiento, Estudiantes.
*/
USE CODERHOUSE;
SELECT * FROM Estudiantes;

SELECT EstudiantesID, Nombre, Apellido, DATEDIFF(year, [Fecha de Nacimiento], GETDATE()) AS Edad
FROM Estudiantes
WHERE DATEDIFF(year, [Fecha de Nacimiento], GETDATE())  = 18
ORDER BY EstudiantesID DESC;