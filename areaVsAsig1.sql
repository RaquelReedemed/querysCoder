USE CODERHOUSE;

/*
indicar cu�ntos cursos y carreras  tiene el �rea de Data. 
Renombrar la nueva columna como cant_asignaturas. 
Keywords: Tipo, �rea, Asignaturas.
*/

SELECT * FROM Area;
SELECT * FROM Asignaturas;


SELECT COUNT(Tipo) as cant
FROM Asignaturas
WHERE Area = 
         (SELECT AreaID FROM AREA
		 WHERE Nombre = 'Data');















		
      

