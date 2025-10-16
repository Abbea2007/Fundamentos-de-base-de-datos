SELECT H.SalesOrderID,
       H.OrderDate,
       D.ProductID
       

FROM Sales.SalesOrderHeader AS H
INNER JOIN Sales.SalesOrderDetail AS D ON
H.salesOrderID = D.SalesOrderID;


--INNER JOIN, DEVUELVE REGISTROS QUE TIENEN COINCIDENCIAS EN AMBAS TABLAS, 

---
sp_help 'production.product'
