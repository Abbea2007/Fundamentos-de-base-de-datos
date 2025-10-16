SELECT 
    CurrencyRateID,
    CurrencyRateDate,
    --FromCurrencyCode,
    ToCurrencyCode,
    AverageRate,
    EndOfDayRate
    --ModifiedDate

FROM Sales.CurrencyRate;

SELECT

    SalesOrderID,
    SalesOrderDetailID,
    CarrierTrackingNumber,
    OrderQty,
    ProductID,
    --SpecialOfferID,
    UnitPrice
    --UnitPriceDiscount,
    --LineTotal,
   

from  Sales.SalesOrderDetail 

SELECT

    ProductID,
    Name,
    ProductNumber,
    MakeFlag,
    FinishedGoodsFlag,
    Color,
    SafetyStockLevel,
    ReorderPoint,
    StandardCost,
    ListPrice,
--Size,
--SizeUnitMeasureCode,
WeightUnitMeasureCode,
Weight,
DaysToManufacture,
ProductLine,
--Class,
--Style,
ProductSubcategoryID,
ProductModelID
--SellStartDate
--SellEndDate
--DiscontinuedDate
--rowguid
--ModifiedDate

FROM Production.Product;

Exec SP_Help 'Sales.SalesOrderDetail';
Exec SP_Help 'Production.Product';

       
       
       