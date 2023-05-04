use dbms_project;

CREATE TABLE Donation (
  CampID VARCHAR(20),
  DonorID VARCHAR(20),
  date DATE,
  blood_group VARCHAR(3),
  nurseID VARCHAR(20)
);

INSERT INTO Donation (CampID, DonorID, date, blood_group, nurseID) 
VALUES 
('CAMP001', 'DAB888650', '2023-04-11', 'B+', '363-78-6929'), 
('CAMP002', 'DAK092429', '2023-04-03', 'O+', '747-01-4776'), 
('CAMP003', 'DAK886208', '2023-03-24', 'A+', '570-30-9878'), 
('CAMP004', 'DAK892230', '2023-04-02', 'O-', '260-69-7790'), 
('CAMP005', 'DAV712457', '2023-03-24', 'AB+', '595-90-5316'), 
('CAMP006', 'DBG657036', '2023-04-08', 'B+', '363-78-6929'), 
('CAMP007', 'DDS186543', '2023-03-29', 'A-', '747-01-4776'), 
('CAMP008', 'DLR654417', '2023-03-29', 'O+', '222-84-7511'), 
('CAMP009', 'DMB491925', '2023-04-03', 'AB-', '630-62-2305'), 
('CAMP010', 'DMR795202', '2023-04-01', 'B-', '570-30-9878'), 
('CAMP011', 'DNG117706', '2023-04-09', 'O+', '747-01-4776'), 
('CAMP012', 'DPS092766', '2023-03-25', 'A+', '808-98-1564'), 
('CAMP013', 'DPY722732', '2023-04-08', 'AB+', '222-84-7511'), 
('CAMP014', 'DRG952180', '2023-04-04', 'O-', '286-73-6050'), 
('CAMP015', 'DSD299321', '2023-04-06', 'A-', '363-78-6929'), 
('CAMP016', 'DSK955266', '2023-04-08', 'B+', '260-69-7790'), 
('CAMP017', 'DSS599036', '2023-03-23', 'AB-', '808-98-1564'), 
('CAMP018', 'DSS857806', '2023-04-02', 'A-', '630-62-2305'), 
('CAMP019', 'DSV111000', '2023-04-01', 'O+', '747-01-4776'), 
('CAMP020', 'DVD789794', '2023-04-09', 'B+', '222-84-7511');




