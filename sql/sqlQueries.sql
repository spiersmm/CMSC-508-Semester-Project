  -- 1. What is the current stock of the blood inventory? 
SELECT `Blood type`, Quantity 
FROM `Blood Inventory`;


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


6. What is/are the name(s) of a specific blood type recipient(s) (ex. AB)? 
SELECT `First Name`, `Last Name` 
FROM `Recipient`
WHERE `Blood Type` = 'B+;


7. How many recipients are waiting for blood donations? 
--Query here--


8. What is the list of the patients according to the priority of blood need? 
--Query here--


9. Which employee is in charge for which donor and recipient? 
--Query here--


10. When was the first time the blood donor donated? 
--Query here--


  -- 11. What date did a specific patient receive the blood (ex. Padme Amidala)? 
SELECT `Date of Receive` 
FROM `Recipient`
WHERE (`First Name` like 'Padme') AND (`Last Name` like 'Amidala');


12. Which blood groups are going to expire soon? 
--Query here--


  -- 13. What is the cost of a specific blood transfusion (ex. A-)? 
SELECT Cost
FROM `Blood`
WHERE `Blood Type` = 'A-';


  -- 14. What is the list of all available blood donors? 
SELECT * 
FROM `Blood Donor`;


15. What is the name of the employee that worked with a specific patient on a specific date? 
--Query here--


  -- 16. What is the address of a certain employee (ex. Katniss Everdeen)? 
SELECT Address 
FROM Employee 
WHERE (`First Name` like 'Katniss') AND (`Last Name` like 'Everdeen');


  -- 17. What is the salary of a certain employee (ex. Katniss Everdeen)? 
SELECT Salary 
FROM Employee 
WHERE (`First Name` like 'Katniss') AND (`Last Name` like 'Evedeen');


18. How many blood donations took place today? 
--Query here--


19. How many times has a specific donor donated? 
--Query here--


  -- 20. How many visits did a specific blood recipient have so far (ex. Ahsoka Tano)?
SELECT Visits 
FROM `Recipient`
WHERE (`First Name` like 'Ahsoka') AND (`Last Name` like 'Tano');

