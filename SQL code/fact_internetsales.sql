use adventureworksdw2019
SELECT ProductKey
      ,OrderDateKey
      ,DueDateKey
      ,ShipDateKey
      ,CustomerKey
      ,SalesOrderNumber
      ,OrderQuantity
      ,UnitPrice
      ,ExtendedAmount
      ,TotalProductCost
      ,SalesAmount
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where left(orderdatekey,4)>=year(2021)-2 
  order by 
  orderdatekey asc
