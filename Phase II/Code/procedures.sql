 -- Ihtesham Akbar, Megan Spiers
  
 -- Create Procedures for Database

--For query 3 
CREATE PROCEDURE RecipientGenderFromBloodType @Blood_Type VARCHAR2(5)
AS
SELECT Sex 
FROM Recipient 
WHERE Blood_Type= @Blood_Type;

--For query 4
CREATE PROCEDURE DonorFromBloodType @Blood_Type VARCHAR2(5)
AS
SELECT First_Name, Last_Name
FROM Blood_Donor
WHERE Blood_Type = @Blood_Type;
