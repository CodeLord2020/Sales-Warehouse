/***** Script for SelectTopNRows command from SSMS  ******/
SELECT
      [ProductKey],
      p.ProductAlternateKey AS [Product Code],
      p.[ProductSubcategoryKey] AS [SubcategoryKey],
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] as [Product Name],
	  ps.[EnglishProductSubcategoryName] AS [Sub_Category],
	  pc.[EnglishProductCategoryName] AS [Product_Category],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --[StandardCost]
      --,[FinishedGoodsFlag]
      --,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      --,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] as [Model_Name],
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ISNULL(p.[Status], 'OUTDATED') AS [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS  pc ON ps.ProductCategoryKey = pc.ProductCategoryKey