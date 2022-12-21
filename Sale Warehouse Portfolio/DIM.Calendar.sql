/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  [DayNumberOfWeek] as WKdayNum, 
  --[EnglishDayNameOfWeek]
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]
  --[DayNumberOfMonth] 
  --[DayNumberOfYear]
  --[WeekNumberOfYear]
  LEFT ([EnglishMonthName], 3) as Month, 
  --[SpanishMonthName]
  --[FrenchMonthName]
  [MonthNumberOfYear] as Monthnum, 
  [CalendarQuarter] as Quarter,
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --[FiscalSemester]

From
  [AdventureWorksDW2019].[dbo].[DimDate]
Where [CalendarYear] >= 2019  --for 4 years
