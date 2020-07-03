 -- Ihtesham Akbar, Megan Spiers
 
 -- Insert Data Into Database

INSERT INTO Blood_Donor VALUES (5321521, 'B+', 'Tom', 'Brady', '08/03/1977', 'M', '06/01/2020', '6666 Tampa Bay, Buccs Ave', '777-888-9999');
INSERT INTO Blood_Donor VALUES (2326223, 'AB-', 'Aaron', 'Rodgers', '12/02/1983', 'M', '04/15/2020', '444 Green Bay, Packers St', '444-555-6666');
INSERT INTO Blood_Donor VALUES (6422344, 'O+', 'Drew', 'Brees', '01/15/1979', 'M', '05/20/2019', '555 New Orleans, Saints Rd', '555-555-5555');


INSERT INTO Recipient VALUES('7283321', 'AB', 'Padme', 'Amidala', '04/27/1982', 'F', '04/30/2020', 4);
INSERT INTO Recipient VALUES('2566326', 'O-', 'Ahsoka', 'Tano', '09/12/1998', 'F', '06/07/2018', 3);
INSERT INTO Recipient VALUES('9251876', 'B+', 'Anakin', 'Skywalker', '06/12/1987', 'M', '08/14/2019', 27);


INSERT INTO Employee VALUES(6234663, 'Katniss', 'Everdeen', '05/08/1998', 'F', '888-777-6666', '1111 Victors Village Rd', 100000);
INSERT INTO Employee VALUES(1231222, 'Peeta', 'Mellark', '04/20/1998', 'M', '777-333-2222', '4545 Bakers Rd', 50);
INSERT INTO Employee VALUES(1241212, 'Gale', 'Hawthorne', '08/20/1996', 'M', '444-666-2425', '1234 Seam St', 12000);

INSERT INTO Blood_Inventory VALUES(42785, 'No Complications', 'O-', '3', 51);
INSERT INTO Blood_Inventory VALUES(37597, 'Patient Has Cough', 'B+', '2', 30);
INSERT INTO Blood_Inventory VALUES(25547, 'Patient Has Temperature', 'AB-', '1', 12);


INSERT INTO Blood VALUES(0032, 14, 'A-', '0.5 Pint', '$275');
INSERT INTO Blood VALUES(0027, 16, 'AB+', '1 Pint', '$300');
INSERT INTO Blood VALUES(0025, 13, 'O+', '1 Pint', '$200');
