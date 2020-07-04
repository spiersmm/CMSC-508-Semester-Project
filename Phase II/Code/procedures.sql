 -- Ihtesham Akbar, Megan Spiers
  
 -- Create Procedures for Database


CREATE PROCEDURE RecipientGenderFromBloodType @Blood_Type VARCHAR2(5)
AS
SELECT Sex 
FROM Recipient 
WHERE Blood_Type= @Blood_Type;


CREATE PROCEDURE DonorFromBloodType @Blood_Type VARCHAR2(5)
AS
SELECT First_Name, Last_Name
FROM Blood_Donor
WHERE Blood_Type = @Blood_Type;



delimiter /

CREATE PROCEDURE HemoCount(IN c Float(10)) 

BEGIN

select Hemoglobin_Count
from Blood
Where BloodBagNo = c;

End;

/

call HemoCount(0032) /







