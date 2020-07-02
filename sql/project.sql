 --         Database Table Creation 


 --    First dropping any existing tables, Any errors are ignored

 drop table if exists `Blood Donor`;
 drop table if exists `Recipient`;
 drop table if exists Employee;
 drop table if exists `Blood Inventory`;
 drop table if exists Blood;


 --    Now, we add each table 
  
 drop table if exists `Blood Donor`;
 CREATE TABLE `Blood Donor`(
 BloodID    INT PRIMARY KEY,
 `Blood type` VARCHAR(4),
 `First Name` VARCHAR(20),
 `Last Name` VARCHAR(20),
  DOB          VARCHAR(30),
  Sex         VARCHAR(10),
 `Date of Donation`   VARCHAR(40),
  Address     VARCHAR(50),
  Phone       VARCHAR(100)

);



drop table if exists `Recipient`;
create table `Recipient`(
 RecipientID INT PRIMARY KEY,
 `Blood Type` VARCHAR(20),
 `First Name` VARCHAR(20),
 `Last Name` VARCHAR(20),
  DOB VARCHAR(20),
  Sex VARCHAR(5),
 `Date of Receive` VARCHAR(20),
  Visits INT

);


drop table if exists Employee;
CREATE TABLE Employee(
 EmpID INT PRIMARY KEY,
 `First Name` VARCHAR(20),
 `Last Name` VARCHAR(20),
  DOB VARCHAR(15),
  Sex VARCHAR(5),
 `Phone Number` VARCHAR(15),
  Address VARCHAR(70),
  Salary INT 

);


drop table if exists `Blood Inventory`;
Create table `Blood Inventory`(
BloodNO INT PRIMARY KEY,
Description VARCHAR(50),
`Blood Type` VARCHAR(5),
`Order`      INT,
Quantity     INT          

);


drop table if exists Blood;
Create Table Blood(
 BloodBagNo INT PRIMARY KEY,
 `Hemoglobin Count` INT,
 `Blood Type` VARCHAR(10),
 `Blood Amount` VARCHAR(15),
  Cost VARCHAR(10)


);
