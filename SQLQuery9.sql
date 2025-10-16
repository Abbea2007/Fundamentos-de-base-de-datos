SELECT 
    --Product
    P.ProductID,
    P.Name,
    P.ProductNumber,
    --P.MakeFlag,
    --P.FinishedGoodsFlag,
    P.Color,
    P.SafetyStockLevel,
    P.ReorderPoint,
    P.StandardCost,
    P.ListPrice,
    WeightUnitMeasureCode,
    Weight,
    DaysToManufacture,
    ProductLine,
    PSC.ProductSubcategoryID,
    ProductModelID
    --SD.SalesOrderID,
    --SD.SalesOrderDetailID,
    --SD.CarrierTrackingNumber,
    --SD.OrderQty,
    --SD.ProductID,
    --UnitPrice
    --C.CurrencyRateDate,
    --C.ToCurrencyCode,
    --C.AverageRate,
    --C.EndOfDayRate
     SalesOrderID,
     OrderDate,
     DueDate,
     ShipDate,
     Status,
     OnlineOrderFlag,
     SalesOrderNumber,
     CustomerID,
     SalesPersonID,
     TerritoryID,
     BillToAddressID,
     ShipToAddressID
     ShipMethodID,
     CreditCardID,
     CreditCardApprovalCode,
     SubTotal,
     TaxAmt,
     Freight,
     TotalDue,
     Comment


FROM Sales.SalesOrderHeader AS SH
JOIN  Sales.CurrencyRate as C
ON SH.CurrencyRateID = C.CurrencyRateID
JOIN Sales.SalesOrderDetail as SD
ON SH.SalesOrderID = SD.SalesOrderID
JOIN Production.Product as P
ON SD.ProductID = P.ProductID
JOIN Production.ProductSubcategory as PSC
ON PSC.ProductSubcategoryID = P.ProductSubcategoryID
JOIN Production.ProductCategory as PC
ON PC.ProductCategoryID = PSC.ProductCategoryID
WHERE PC.Name = 'bIKES'
ORDER BY SH.TotalDue;


