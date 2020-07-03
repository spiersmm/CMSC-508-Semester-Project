 -- Ihtesham Akbar, Megan Spiers
 
 -- SQL Queries
 -- Some Queries Use the View We Created
 -- Should Return Statements are Accurate Using Our Sample Data
 
 -- 1. What is the current stock of the blood inventory? 
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


 -- 2. What is the hemoglobin count of a certain BloodBagNo (ex. 25)? 
SELECT Hemoglobin_Count
FROM Blood
WHERE BloodBagNo = 25;

 -- Should Return:
 --              +------------------+
 --              | Hemoglobin_Count |
 --              +------------------+
 --              |               13 |
 --              +------------------+


 -- 3. What is the gender of the recipient of a specific blood type (ex. B+)? 
SELECT Sex 
FROM Recipient 
WHERE Blood_Type= 'B+';

 -- Should Return:
 --              +------+
 --              | Sex  |
 --              +------+
 --              | M    |
 --              +------+


 -- 4. Which blood donors have a specific blood group (ex. AB-)?
SELECT First_Name, Last_Name
FROM Blood_Donor
WHERE Blood_Type = 'AB-';

 -- Should Return:
 --              +------------+-----------+
 --              | First_Name | Last_Name |
 --              +------------+-----------+
 --              | Aaron      | Rodgers   |
 --              +------------+-----------+


 -- 5. What is the contact information of a specific blood donor (ex. Tom Brady)? 
SELECT Phone 
FROM Blood_Donor 
WHERE (First_Name = 'Tom') AND (Last_Name = 'Brady'); 

 -- Should Return:
 --              +--------------+
 --              | Phone        |
 --              +--------------+
 --              | 777-888-9999 |
 --              +--------------+


 -- 6. What is/are the name(s) of a specific blood type recipient(s) (ex. AB)? 
SELECT First_Name, Last_Name 
FROM Recipient
WHERE Blood_Type = 'B+';

 -- Should Return:
 --              +------------+-----------+
 --              | First_Name | Last_Name |
 --              +------------+-----------+
 --              | Anakin     | Skywalker |
 --              +------------+-----------+


 -- 7. How many recipients are waiting for blood donations? 
SELECT COUNT(*) AS "Recipients Waiting"
FROM Recipient;

 -- Should Return:
 --              +--------------------+
 --              | Recipients Waiting |
 --              +--------------------+
 --              |                  3 |
 --              +--------------------+


 -- 8. What is priority of blood need in the blood inventory? 
SELECT *
FROM Blood_Priority;

 -- Should Return:
 --              +------------+----------+
 --              | Blood_Type | Priority |
 --              +------------+----------+
 --              | AB-        |        1 |
 --              | B+         |        2 |
 --              | O-         |        3 |
 --              +------------+----------+


 -- 9. What is the description on a certain bloodno (ex. 42785)?
SELECT Description
FROM Blood_Inventory
WHERE BloodNo = '42785';

 -- Should Return:
 --              +------------------+
 --              | Description      |
 --              +------------------+
 --              | No Complications |
 --              +------------------+


 -- 10. When was the last time the blood donor donated (ex. Drew Brees)? 
SELECT Date_of_Donation
FROM Blood_Donor
WHERE (First_Name LIKE 'Drew') AND (Last_Name LIKE 'Brees');

 -- Should Return:
 --              +------------------+
 --              | Date_of_Donation |
 --              +------------------+
 --              | 05/20/2019       |
 --              +------------------+


 -- 11. What date did a specific patient receive the blood (ex. Padme Amidala)? 
SELECT Date_of_Receive 
FROM Recipient
WHERE (First_Name LIKE 'Padme') AND (Last_Name LIKE 'Amidala');

 -- Should Return:
 --              +-----------------+
 --              | Date_of_Receive |
 --              +-----------------+
 --              | 04/30/2020      |
 --              +-----------------+


 -- 12. What is the blood amount for a certain blood bag no (ex. 0027)?
SELECT Blood_Amount
FROM Blood
WHERE BloodBagNo = 0027;

 -- Should Return:
 --              +--------------+
 --              | Blood_Amount |
 --              +--------------+
 --              | 1 Pint       |
 --              +--------------+


 -- 13. What is the cost of a specific blood transfusion (ex. A-)? 
SELECT Cost
FROM Blood
WHERE Blood_Type = 'A-';

 -- Should Return:
 --              +------+
 --              | Cost |
 --              +------+
 --              | $275 |
 --              +------+


 -- 14. What is the list of all available blood donors? 
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


 -- 15. What is the date of birth of a certain employee (ex. Gale Hawthorne)?
SELECT DOB
FROM Employee
WHERE (First_Name like 'Gale') AND (Last_Name like 'Hawthorne');

 -- Should Return:
 --              +------------+
 --              | DOB        |
 --              +------------+
 --              | 08/20/1996 |
 --              +------------+


 -- 16. What is the address of a certain employee (ex. Katniss Everdeen)? 
SELECT Address 
FROM Employee 
WHERE (First_Name LIKE 'Katniss') AND (Last_Name LIKE 'Everdeen');

 -- Should Return:
 --              +-------------------------+
 --              | Address                 |
 --              +-------------------------+
 --              | 1111 Victors Village Rd |
 --              +-------------------------+


 -- 17. What is the salary of a certain employee (ex. Katniss Everdeen)? 
SELECT Salary 
FROM Employee 
WHERE (First_Name LIKE 'Katniss') AND (Last_Name LIKE 'Everdeen');

 -- Should Return:
 --              +--------+
 --              | Salary |
 --              +--------+
 --              | 100000 |
 --              +--------+


 -- 18. How many blood donations took place on a certain date (ex. 05/20/2019)? 
SELECT COUNT(*) AS "Number of Donations"
FROM Blood_Donor
WHERE Date_of_Donation = '05/20/2019';

 -- Should Return:
 --              +---------------------+
 --              | Number of Donations |
 --              +---------------------+
 --              |                   1 |
 --              +---------------------+


 -- 19. What is the BloodID of a certain blood donor (ex. Aaron Rodgers)?
SELECT BloodID
FROM Blood_Donor
WHERE (First_Name LIKE 'Aaron') AND (Last_Name LIKE 'Rodgers');

 -- Should Return:
 --              +---------+
 --              | BloodID |
 --              +---------+
 --              | 2326223 |
 --              +---------+


 -- 20. How many visits did a specific blood recipient have so far (ex. Ahsoka Tano)?
SELECT Visits 
FROM Recipient
WHERE (First_Name LIKE 'Ahsoka') AND (Last_Name LIKE 'Tano');

 -- Should Return:
 --              +--------+
 --              | Visits |
 --              +--------+
 --              |      3 |
 --              +--------+
