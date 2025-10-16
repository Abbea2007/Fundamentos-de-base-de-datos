SELECT P.ProductID,
       P.Name,
       D.OrderQty

FROM Production.Product AS P
RIGHT JOIN Sales.SalesOrderDetail AS D ON
P.ProductID = D.ProductID;
