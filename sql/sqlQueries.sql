1. What is the current stock of the blood inventory? 
SELECT Quantity 
FROM 'Blood Inventory';


2. What is the hemoglobin count of a certain BloodBagNo? 
SELECT 'hemoglobin count' 
WHERE BloodBagNo = 13;


3. What is the gender of the recipient of a specific blood type? 
SELECT Sex FROM `Recipient` 
WHERE `Blood Type`= 'B+';


4. Which blood donors have a specific blood group?
SELECT `First Name`, `Last Name`
FROM `Blood Donor` WHERE `Blood Type` = 'AB-';


5. What is the contact information of a specific blood donor? 
SELECT Phone FROM `Blood Donor` 
WHERE `First Name` = 'Tom'; 


6. What is the name of a specific blood type recipient? 
--Query here--


7. How many recipients are waiting for blood donations? 
--Query here--


8. What is the list of the patients according to the priority of blood need? 
--Query here--


9. Which employee is in charge for which donor and recipient? 
--Query here--


10. When was the first time the blood donor donated? 
--Query here--


11. What date did a specific patient receive the blood? 
SELECT `Date of Receive` 
FROM `Recipient`
WHERE (`First Name` like 'Padme' AND `Last Name` like 'Amidale');


12. Which blood groups are going to expire soon? 
--Query here--


13. What is the cost of a specific blood transfusion? 
--Query here--


14. What is the list of all available blood donors? 
SELECT * FROM `Blood Donor`;


15. What is the name of the employee that worked with a specific patient on a specific date? 
--Query here--


16. What is the address of a certain employee? 
--Query here--


17. What is the salary of a certain employee? 
--Query here--


18. How many blood donations took place today? 
--Query here--


19. How many times has a specific donor donated? 
--Query here--


20. How many visits did a specific blood recipient have so far?
SELECT Vists FROM 
`Recipient`
WHERE (`First Name` like 'Ahsoka' AND `Last Name` like 'Tano');

