 --         Database Table Creation 


 --    First dropping any existing tables, Any errors are ignored

 DROP TABLE if exists Blood_Donor;
 DROP TABLE if exists Recipient;
 DROP TABLE if exists Employee;
 DROP TABLE if exists Blood_Inventory;
 DROP TABLE if exists Blood;


 --    Now, we add each table 
  
 DROP TABLE if exists Blood_Donor;
 CREATE TABLE Blood_Donor(
  BloodID    INT PRIMARY KEY,
  Blood_Type VARCHAR(4),
  First_Name VARCHAR(20),
  Last_Name VARCHAR(20),
  DOB          VARCHAR(30),
  Sex         VARCHAR(10),
  Date_of_Donation   VARCHAR(40),
  Address     VARCHAR(50),
  Phone       VARCHAR(100)

);



DROP TABLE if exists Recipient;
CREATE TABLE Recipient(
 RecipientID INT PRIMARY KEY,
 Blood_Type VARCHAR(20),
 First_Name VARCHAR(20),
 Last_Name VARCHAR(20),
 DOB VARCHAR(20),
 Sex VARCHAR(5),
 Date_of_Receive VARCHAR(20),
 Visits INT

);


DROP TABLE if exists Employee;
CREATE TABLE Employee(
 EmpID INT PRIMARY KEY,
 First_Name VARCHAR(20),
 Last_Name VARCHAR(20),
 DOB VARCHAR(15),
 Sex VARCHAR(5),
 Phone_Number VARCHAR(15),
 Address VARCHAR(70),
 Salary INT 

);


DROP TABLE if exists Blood_Inventory;
CREATE TABLE Blood_Inventory(
 BloodNO INT PRIMARY KEY,
 Description VARCHAR(50),
 Blood_Type VARCHAR(5),
 Priority      INT,
 Quantity     INT          

);


DROP TABLE if exists Blood;
CREATE TABLE Blood(
 BloodBagNo INT PRIMARY KEY,
 Hemoglobin_Count INT,
 Blood_Type VARCHAR(10),
 Blood_Amount VARCHAR(15),
 Cost VARCHAR(10)

);


 -- Grant Permissions
 -- This does not work in gcloud as roles and permissions are set differently there; however, 
 -- it was requested that this code be in our project.
CREATE ROLE students;
CREATE ROLE professor;

GRANT students TO spiersmm, akbari;
GRANT professor TO s2dmduke;

GRANT SELECT ON Blood_Donor, Recipient, Employee, Blood_Inventory, Blood TO professor;
GRANT ALL PRIVILEGES ON Blood_Donor, Recipient, Employee, Blood_Inventory, Blood TO students.
