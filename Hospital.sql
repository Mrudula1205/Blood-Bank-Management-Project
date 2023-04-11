create table Hospital (
	Hospital_id VARCHAR(50),
	BloodType VARCHAR(4),
	Quantity INT,
	RequestDate DATE
);
insert into Hospital  values ('3', 'A+', 10, '2021-10-15'),
('6', 'B+', 8, '2022-03-18'), 
('8', 'AB-', 7, '2023-04-08'),
('18', 'O+', 9, '2022-09-15'),
('6', 'A+', 8, '2022-08-20'),
('7', 'B-', 10, '2021-06-18'),
('5', 'O-', 6, '2021-04-08'),
('14', 'A+', 9, '2022-02-06'),
('8', 'AB-', 3, '2021-12-22'),
('8', 'B+', 5, '2021-12-14'),
('17', 'B-', 7, '2022-07-12'),
('3', 'O+', 7, '2021-06-07'),
('2', 'O-', 10, '2022-04-24'),
('1', 'A+', 2, '2022-09-18'),
('7', 'B+', 4, '2021-09-27'),
('20', 'O-', 10, '2022-08-18'),
('2', 'AB-', 4, '2023-04-07'),
('6', 'B-', 2, '2022-07-18'),
('5', 'B+', 8, '2022-04-25'),
('4', 'A+', 6, '2023-02-19');

create table Nurse (
	Nurse_id VARCHAR(50) primary key,
	NurseName VARCHAR(4),
	Hopital_id INT
);

insert into Nurse  values ('773-33-2575', 'Boone Sandwith', 6),
('260-69-7790', 'Gradeigh Wardley', 8),
('222-84-7511', 'Chen Treadger', 9),
('570-30-9878', 'Davita Inglesent', 2),
('630-62-2305', 'Irena Showte', 15),
('595-90-5316', 'Margret Noah', 19),
('363-78-6929', 'Cinda Peasnone', 6),
('708-06-9495', 'Carmella Siggin', 14),
('808-98-1564', 'Kassandra Ricca', 15),
('747-01-4776', 'Karilynn Fulham', 6),
('286-73-6050', 'Marve Trodler', 2);
