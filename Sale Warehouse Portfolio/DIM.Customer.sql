/****** Script for SelectTopNRows command from SSMS  ******/
SELECT c.CustomerKey  AS Customer_Key,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.FirstName AS [First Name],
      --,[MiddleName] 
      c.LastName AS [Last Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
	  c.FirstName + ' ' + c.LastName as [Full Name],
      CASE c.Gender When 'M' Then 'Male' When 'F' Then 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.DateFirstPurchase as FirstPurshaseDate,
	  LEFT(c.DateFirstPurchase,4) AS Year,
      --,[CommuteDistance]
	  g.City AS [Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  Left Join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey
ORDER BY Customer_Key ASC