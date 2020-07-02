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


  -- 6. What is/are the name(s) of a specific blood type recipient(s) (ex. AB)? 
SELECT `First Name`, `Last Name` 
FROM `Recipient`
WHERE `Blood Type` = 'B+';


  -- 7. How many recipients are waiting for blood donations? 
SELECT COUNT(*) AS "Recipients Waiting"
FROM `Recipient`;


-- CHANGED FROM ORIGINAL 8. What is priority of blood need in the blood inventory? 
SELECT `Blood Type`, `Order`
FROM `Blood Inventory`
ORDER BY `Order` ASC;


9. Which employee is in charge for which donor and recipient? 
--Query here--
Select


-- CHANGED FROM ORIGINAL 10. When was the last time the blood donor donated (ex. Drew Brees)? 
SELECT `Date of Donation`
FROM `Blood Donor`
WHERE (`First Name` LIKE 'Drew') AND (`Last Name` LIKE 'Brees');


  -- 11. What date did a specific patient receive the blood (ex. Padme Amidala)? 
SELECT `Date of Receive` 
FROM `Recipient`
WHERE (`First Name` LIKE 'Padme') AND (`Last Name` LIKE 'Amidala');


12. Which blood groups are going to expire soon? 
--Query here--
Select


  -- 13. What is the cost of a specific blood transfusion (ex. A-)? 
SELECT Cost
FROM `Blood`
WHERE `Blood Type` = 'A-';


  -- 14. What is the list of all available blood donors? 
SELECT * 
FROM `Blood Donor`;


15. What is the name of the employee that worked with a specific patient on a specific date? 
--Query here--
select


  -- 16. What is the address of a certain employee (ex. Katniss Everdeen)? 
SELECT Address 
FROM Employee 
WHERE (`First Name` LIKE 'Katniss') AND (`Last Name` LIKE 'Everdeen');


  -- 17. What is the salary of a certain employee (ex. Katniss Everdeen)? 
SELECT Salary 
FROM Employee 
WHERE (`First Name` like 'Katniss') AND (`Last Name` like 'Evedeen');


-- CHANGED FROM ORIGINAL 18. How many blood donations took place on a certain date (ex. 05/20/2019)? 
SELECT COUNT(*)
FROM `Blood Donor`
WHERE `Date of Donation` = '05/20/2019';


19. How many times has a specific donor donated? 
--Query here--
select


  -- 20. How many visits did a specific blood recipient have so far (ex. Ahsoka Tano)?
SELECT Visits 
FROM `Recipient`
WHERE (`First Name` LIKE 'Ahsoka') AND (`Last Name` LIKE 'Tano');

