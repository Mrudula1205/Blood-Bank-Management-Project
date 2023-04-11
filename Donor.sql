Drop table Donor;
Create table Donor (
DonorID varchar(9) primary key,
First_Name varchar(50) NOT NULL,
Last_name varchar(50) NOT NULL,
Date_of_Birth date NOT NULL,
Age integer(3),
Blood_Group varchar(3) NOT NULL,
medical_report text,
Contact_Number varchar(25) NOT NULL,
City varchar(100),
email_id varchar(50),
Last_Donation_Date date);


DELIMITER //
CREATE TRIGGER generate_unique_id
BEFORE INSERT ON Donor FOR EACH ROW
BEGIN
  DECLARE first_name_char CHAR(1);
  DECLARE last_name_char CHAR(1);
  DECLARE unique_id VARCHAR(10);
  
  -- Extract first letter of first name
  SET first_name_char = upper(SUBSTRING(NEW.first_name, 1, 1));
  
  -- Extract first letter of last name
  SET last_name_char = upper(SUBSTRING(NEW.last_name, 1, 1));
  
  -- Generate random 6-digit number
  SET @random_number = FLOOR(RAND() * 1000000);
  
  -- Concatenate 'D', first name initial, last name initial, and random number
  SET unique_id = CONCAT('D', first_name_char, last_name_char, LPAD(@random_number, 6, '0'));
  
  -- Set the generated unique ID to the new row
  SET NEW.DonorID = unique_id;
END //


DELIMITER $$

CREATE TRIGGER add_age
BEFORE INSERT ON Donor
FOR EACH ROW
BEGIN
    SET NEW.Age = TIMESTAMPDIFF(YEAR, NEW.date_of_birth, CURDATE());
    
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER update_age
BEFORE UPDATE ON Donor
FOR EACH ROW
BEGIN
    SET NEW.Age = TIMESTAMPDIFF(YEAR, NEW.date_of_birth, CURDATE());
     IF NEW.Age >= 19 THEN
        
        INSERT INTO Donor (First_Name, Last_name,Date_of_Birth,Blood_Group,medical_report,Contact_Number,email_id,City)
        VALUES (new.First_Name, new.Last_name,Date_of_Birth,Blood_Group,medical_report,Contact_Number,email_id,City);
    ELSE
        -- Raise an error or take appropriate action
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Age must be above 19.';
    END IF;
END$$

DELIMITER ;

INSERT INTO Donor (First_Name,Last_name,Date_of_Birth,Blood_Group,medical_report,Contact_Number,email_id,City) values
('Ayushi','Bhandari','2004-02-26','B+','No Allergies or chronical diseases','971569505399','f20210012@dubai.bits-pilani.ac.in','Mankool'),
('Avani','Kottalgi','2003-04-2','O+','Pollen Allergy','971557463895','f20210049@dubai.bits-pilani.ac.in','Karama'),
('Mrudula','Rahate','2003-05-12','O-','No Allergies or chronical diseases','971521484893','f20210023@dubai.bits-pilani.ac.in','Mankool'),
('Shreya','Doodipala','2003-11-7','A+','Dust Allergy','971521484893','f20210028@dubai.bits-pilani.ac.in','Karama'),
('Shriya','Varanasi','2003-09-20','B-','Type 2 diabeties','971521592343','f20210047@dubai.bits-pilani.ac.in','Deira'),
('Baishali','Guha','2004-03-1','A+','Allergic to Soy','971541736494','f20210003@dubai.bits-pilani.ac.in','DSO'),
('Riddhi','Goswami','2003-08-2','AB+','Pollen Allergy','971553247466','f20210017@dubai.bits-pilani.ac.in','Karama'),
('Vivek','Desai','1980-06-12','B-','Type 2 diabeties','971553244567','vivekdesai@gmail.com','Al Barsha'),
('Aryan','Kapoor','1995-08-16','B+','Dust Allergy','971553244567','ak1995@gmail.com','Al Barsha'),
('Preeti','Singh','2001-10-25','O+','No Allergies or chronical diseases','971569323477','preetisingh01@hotmail.com','Al Qusais'),
('Diya','Sharma','1958-06-17','AB-','No Allergies or chronical diseases','971509894163','diya.sharma@hotmail.com','JLT'),
('Laranya','Rane','2002-01-30','B+','Drug Allergy','971557894846','laranyarane06@yahoo.com','AlNahda'),
('Ashok','Vyay','1994-02-13','A-','Type 1 Diabeties','971509894163','ashok.v@gemseducation.ac.in','JLT'),
('Sarthak','Shah','2000-02-13','B+','Pet Allergy','971546583210','sarthakshah213@gemseducation.ac.in','Ras AlKhor'),
('Shoiab','Sheikh','1966-04-11','O+','Type 1 Diabeties','971523234659','shoiabss@git.edu.in','Al Qusais'),
('Malvika','Balakrishnan','2003-05-8','AB-','No allergies or chronic diseases','971568492365','malavikarb2003@hotmail.com','Deira'),
('Ayush','Kumar','1984-07-19','A-','No allergies or chronic diseases','971553293664','ayushyadavkumar@yahoo.com','Al Barsha'),
('Salman','Khan','1972-01-4','AB+','No allergies or chronic diseases','971564953617','skf19720104@hotmail.com','Zabeel'),
('Nandini','Gupta','2000-08-31','O+','Pet Allergy','971507638942','nanugupta@gmail.com','Deira'),
('Prem','Yadav','1968-09-1','B-','Type 1 Diabeties','971526169834','pyadav@yahoo.com','Zabeel')
;

Select * from donor;