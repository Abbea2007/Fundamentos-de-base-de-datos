SELECT D.SalesOrderID,
       D.OrderQty,
       P.ProductID

FROM Sales.SalesOrdenarDetail AS D
FULL OUTER JOIN Production.Product AS P
ON D.ProductID = P.ProductID;



-- FULL AOUTER JOIN Devuelve todos los registros cuando hay una coincidiencia en cualquiera de las tablas.
