 -- Ihtesham Akbar, Megan Spiers
  
 -- Create Triggers for Database
 
 
CREATE TRIGGER validateDate
 BEFORE INSERT
 ON
 FOR EACH ROW
BEGIN
 IF NEW.Date_of_Donation NOT LIKE '%__/%__/%____%' THEN
    SIGNAL SQLSTATE VALUE '45000'
           SET Date_of_Donation = 'Date Not Valid';
 END IF;
END;
