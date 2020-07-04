 -- Ihtesham Akbar, Megan Spiers
  
 -- Create Views for Database
 
 -- Should Return Statements Are Accurate for Our Sample Data
 
 
 -- 1. All_Donors
CREATE VIEW All_Donors AS
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
CREATE VIEW All_Recipients AS
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


 -- 3. Blood_Inventory_Stock
CREATE VIEW Blood_Inventory_Stock AS
SELECT Blood_Type, Quantity
FROM Blood_Inventory;

 -- To Use Blood_Inventory_Stock View
SELECT *
FROM Blood_Inventory_Stock;

 -- Should Return:
 --              +------------+----------+
 --              | Blood_Type | Quantity |
 --              +------------+----------+
 --              | AB-        |       12 |
 --              | B+         |       30 |
 --              | O-         |       51 |
 --              +------------+----------+
 
 
 -- 4. Blood_Priority
CREATE VIEW Blood_Priority AS
SELECT Blood_Type, Priority
FROM Blood_Inventory
ORDER BY Priority ASC;

 -- To Use Blood Priority
SELECT * FROM Blood_Priority;

 -- Should Return:
 --              +------------+----------+
 --              | Blood_Type | Priority |
 --              +------------+----------+
 --              | AB-        |        1 |
 --              | B+         |        2 |
 --              | O-         |        3 |
 --              +------------+----------+
 
 
 
 
 
 -- 5. Employee Salary
CREATE VIEW EmpSalary as
SELECT Salary 
FROM Employee 
WHERE Salary > 100;

SELECT * from EmpSalary;

