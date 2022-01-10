-- Cleansed DIM_Datetable --

SELECT 
  datekey, 
  fulldatealternatekey AS 'Date', 
  englishdaynameofweek AS 'Day', 
  weeknumberofyear AS 'Week No.', 
  englishmonthname AS 'Month', 
  LEFT(englishmonthname, 3) AS 'Month Short', 
  monthnumberofyear AS 'Month No.', 
  calendarquarter AS 'Quarter', 
  calendaryear AS 'Year' 
FROM 
  AdventureWorksDW2019.dbo.dimdate 
WHERE 
  CalendarYear >= 2019
