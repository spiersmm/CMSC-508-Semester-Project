 -- Ihtesham Akbar, Megan Spiers
  
 -- Create Procedures for Database
 
 -- Should Return Statements Are Accurate for Our Sample Data
 
CREATE PROCEDURE CapitalizeEmployeeName @First_Name VARCHAR2 (30), @Last_Name VARCHAR2 (30)
AS
UPDATE Employee
SET First_Name=UPPER(LEFT(@First_Name,1))+LOWER(SUBSTRING(@First_Name,2,LEN(@First_Name)))
SET Last_Name=UPPER(LEFT(@Last_Name,1))+LOWER(SUBSTRING(@Last_Name,2,LEN(@Last_Name)))
GO;
