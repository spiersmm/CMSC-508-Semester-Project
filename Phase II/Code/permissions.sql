  -- Ihtesham Akbar, Megan Spiers

 -- Grant Permissions
 -- This does not work in gcloud as roles and permissions are set differently there; however, 
 -- it was requested that this code be in our project.
 
CREATE ROLE students;
CREATE ROLE professor;

GRANT students TO spiersmm, akbari;
GRANT professor TO s2dmduke;

GRANT SELECT ON Blood_Donor, Recipient, Employee, 
                Blood_Inventory, Blood TO professor;
GRANT ALL PRIVILEGES ON Blood_Donor, Recipient, Employee, 
                Blood_Inventory, Blood TO students;
