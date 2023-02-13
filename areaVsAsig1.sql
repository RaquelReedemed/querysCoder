USE CODERHOUSE;

/*
indicar cuántos cursos y carreras  tiene el área de Data. 
Renombrar la nueva columna como cant_asignaturas. 
Keywords: Tipo, Área, Asignaturas.
*/

SELECT * FROM Area;
SELECT * FROM Asignaturas;


SELECT COUNT(Tipo) as cant
FROM Asignaturas
WHERE Area = 
         (SELECT AreaID FROM AREA
		 WHERE Nombre = 'Data');















		
      

