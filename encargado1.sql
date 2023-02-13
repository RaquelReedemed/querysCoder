/*
Indicar la cantidad de encargados de docentes y de tutores. 
Renombrar la columna como CantEncargados.
Quitar la palabra ”Encargado ”en cada uno de los registros. 
Renombrar la columna como NuevoTipo. 
Keywords: Encargado, tipo, Encargado_ID.
*/
SELECT * FROM Encargado;

SELECT Tipo, COUNT(Tipo) AS CantEncargados , REPLACE(Tipo, 'Encargado', '') AS NuevoTipo
FROM Encargado
GROUP BY Tipo;
