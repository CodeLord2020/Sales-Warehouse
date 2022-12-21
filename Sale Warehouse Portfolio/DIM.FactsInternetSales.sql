/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [ProductKey],
      [OrderDateKey],
      [DueDateKey],
      [ShipDateKey],
      [CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      [SalesOrderNumber],
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      [SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  Where
   LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -3  -- YEAR(GETDATE()) returns today's date(Year)
  Order BY OrderDateKey Asc