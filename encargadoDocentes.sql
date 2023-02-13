/*
Se requiere saber el id del encargado, el nombre, el apellido y
cuántos son los docentes que tiene asignados cada encargado. 
Luego filtrar los encargados que tienen como resultado 0 
ya que son los encargados que NO tienen asignado un docente.
Renombrar el campo de la operación como Cant_Docentes.
Keywords: Docentes_id, Encargado, Staff, Nombre, Apellido,Encargado_ID.
*/
SELECT * FROM Encargado;
SELECT * FROM Staff;

SELECT e.Encargado_ID, e.Nombre, e.Apellido,
       COUNT(s.Nombre) as cant_docentes
FROM Encargado e
LEFT JOIN Staff s
ON e.Encargado_ID = s.Encargado
GROUP BY e.Encargado_ID, e.Nombre, e.Apellido
HAVING COUNT(s.Nombre) = 0;

--otras soluciones posibles

select Encargado_ID,e.Nombre,e.Apellido, count(docentesId) as Cant_Docentes
from Encargado e
left join Staff s
on e.Encargado_ID=s.Encargado
group by Encargado_ID,e.Nombre,e.Apellido
having count(docentesId) > 0;

select Encargado_ID,e.Nombre,e.Apellido, count(docentesId) as Cant_Docentes
from Encargado e
 join Staff s
on e.Encargado_ID=s.Encargado
group by Encargado_ID,e.Nombre,e.Apellido
       






