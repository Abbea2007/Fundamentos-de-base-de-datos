SELECT P.ProductID,
       P.Name,
       D.OrderQty

FROM Production.Product AS P
LEFT JOIN Sales.SalesOrderDetail AS D ON
P.ProductID = D.ProductID;

--left inner join, devuelve todo los registros de la tabla izquierda (tabla principal) y los registros coincidientes de la tabla derecha (si los hay)