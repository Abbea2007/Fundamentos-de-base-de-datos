SELECT 
    H.SalesOrderID,
    H.OrderDate,
    D.ProductID,
    P.Name AS NombreProducto
FROM Sales.SalesOrderHeader AS H
INNER JOIN Sales.SalesOrderDetail AS D 
    ON H.SalesOrderID = D.SalesOrderID
INNER JOIN Production.Product AS P 
    ON D.ProductID = P.ProductID;
