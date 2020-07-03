 -- Ihtesham Akbar, Megan Spiers
  
 -- Create Views for Database
 
 -- Should Return Statements Are Accurate for Our Sample Data
 
 
 -- 1. All_Donors
CREATE VIEW All_Donors
SELECT CONCAT(First_Name, ' ', Last_Name) AS "Donor Names"
FROM Blood_Donor;

 -- To Use All_Donors View:
SELECT *
FROM All_Donors;

 -- Should Return:
 --              +---------------+
 --              | Donor Names   |
 --              +---------------+
 --              | Aaron Rodgers |
 --              | Tom Brady     |
 --              | Drew Brees    |
 --              +---------------+


 -- 2. All_Recipients
CREATE VIEW All_Recipients
SELECT CONCAT(First_Name, ' ', Last_Name) AS "Recipient Names"
FROM Recipient;

 -- To Use All_Recipients View:
SELECT *
FROM All_Recipients;

 -- Should Return:
 --              +------------------+
 --              | Recipient Names  |
 --              +------------------+
 --              | Ahsoka Tano      |
 --              | Padme Amidala    |
 --              | Anakin Skywalker |
 --              +------------------+


