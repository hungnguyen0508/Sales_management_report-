use adventureworksdw2019; 
--clean the dimDate table; 
SELECt DateKey
      ,FullDateAlternateKey as Date
      ,DayNumberOfWeek as Day_num
      ,EnglishDayNameOfWeek as Day_text
      ,[WeekNumberOfYear] as Week_num
      ,left(EnglishMonthName,3) as Month_text
      ,[MonthNumberOfYear] as Month_num
	  ,CalendarQuarter as Quarter
	  ,Calendaryear as Year
  FROM [dbo].[DimDate]
  where calendaryear>=2019;
