 -- Ihtesham Akbar, Megan Spiers
 
 -- SQL Queries
 -- Should Return Statements are Accurate Using Our Sample Data
 
 -- 1. What is the current stock of the blood inventory? 
SELECT Blood_Type, Quantity 
FROM Blood_Inventory;

  -- Should Return:
  --                +------------+----------+
  --                | Blood_Type | Quantity |
  --                +------------+----------+
  --                | AB-        |       12 |
  --                | B+         |       30 |
  --                | O-         |       51 |
  --                +------------+----------+


  -- 2. What is the hemoglobin count of a certain BloodBagNo (ex. 25)? 
SELECT `Hemoglobin Count`
FROM `Blood`
WHERE BloodBagNo = 25;


  -- 3. What is the gender of the recipient of a specific blood type (ex. B+)? 
SELECT Sex 
FROM `Recipient` 
WHERE `Blood Type`= 'B+';


  -- 4. Which blood donors have a specific blood group (ex. AB-)?
SELECT `First Name`, `Last Name`
FROM `Blood Donor`
WHERE `Blood Type` = 'AB-';


  -- 5. What is the contact information of a specific blood donor (ex. Tom Brady)? 
SELECT Phone 
FROM `Blood Donor` 
WHERE (`First Name` = 'Tom') AND (`Last Name` = 'Brady'); 


  -- 6. What is/are the name(s) of a specific blood type recipient(s) (ex. AB)? 
SELECT `First Name`, `Last Name` 
FROM `Recipient`
WHERE `Blood Type` = 'B+';


  -- 7. How many recipients are waiting for blood donations? 
SELECT COUNT(*) AS "Recipients Waiting"
FROM `Recipient`;


  -- 8. What is priority of blood need in the blood inventory? 
SELECT `Blood Type`, `Order`
FROM `Blood Inventory`
ORDER BY `Order` ASC;


  -- 9. What is the description on a certain bloodno (ex. 42785)?
SELECT `Description`
FROM `Blood Inventory`
WHERE BloodNo = '42785';


  -- 10. When was the last time the blood donor donated (ex. Drew Brees)? 
SELECT `Date of Donation`
FROM `Blood Donor`
WHERE (`First Name` LIKE 'Drew') AND (`Last Name` LIKE 'Brees');


  -- 11. What date did a specific patient receive the blood (ex. Padme Amidala)? 
SELECT `Date of Receive` 
FROM `Recipient`
WHERE (`First Name` LIKE 'Padme') AND (`Last Name` LIKE 'Amidala');


  -- 12. What is the blood amount for a certain blood bag no (ex. 0027)?
SELECT `Blood Amount`
FROM `Blood`
WHERE BloodBagNo = 0027;


  -- 13. What is the cost of a specific blood transfusion (ex. A-)? 
SELECT Cost
FROM `Blood`
WHERE `Blood Type` = 'A-';


  -- 14. What is the list of all available blood donors? 
SELECT * 
FROM `Blood Donor`;


  -- 15. What is the date of birth of a certain employee (ex. Gale Hawthorne)?
SELECT DOB
FROM Employee
WHERE (`First Name` like 'Gale') AND (`Last Name` like 'Hawthorne');


  -- 16. What is the address of a certain employee (ex. Katniss Everdeen)? 
SELECT Address 
FROM Employee 
WHERE (`First Name` LIKE 'Katniss') AND (`Last Name` LIKE 'Everdeen');


  -- 17. What is the salary of a certain employee (ex. Katniss Everdeen)? 
SELECT Salary 
FROM Employee 
WHERE (`First Name` LIKE 'Katniss') AND (`Last Name` LIKE 'Evedeen');


  -- 18. How many blood donations took place on a certain date (ex. 05/20/2019)? 
SELECT COUNT(*)
FROM `Blood Donor`
WHERE `Date of Donation` = '05/20/2019';


  -- 19. What is the BloodID of a certain blood donor (ex. Aaron Rodgers)?
SELECT BloodID
FROM `Blood Donor`
WHERE (`First Name` LIKE 'Aaron') AND (`Last Name` LIKE 'Rodgers');


  -- 20. How many visits did a specific blood recipient have so far (ex. Ahsoka Tano)?
SELECT Visits 
FROM `Recipient`
WHERE (`First Name` LIKE 'Ahsoka') AND (`Last Name` LIKE 'Tano');
