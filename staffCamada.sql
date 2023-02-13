/*
Se requiere saber el Nombre,el correo, la camada y la fecha de ingreso 
de personas del staff que contienen correo .edu y 
su DocenteID es mayor o igual que 100. 
Keywords: Staff, correo, DocentesID
*/
SELECT * FROM Staff;

SELECT s.Nombre, s.Correo, s.Camada, s.[Fecha Ingreso], s.correo, s.DocentesID
FROM Staff s
WHERE s.Correo LIKE '%.edu%'
  AND 
     s.DocentesID >= 100
ORDER BY s.DocentesID;

