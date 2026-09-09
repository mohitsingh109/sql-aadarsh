-- Insert Statement

-- Inserting 1 row into the students table
insert into students
	(student_id, full_name, email)
values
	(22, 'Mohit Singh', 'msingh@gamil.com');

-- Inserting multiple row into the students table

insert into students
	(student_id, full_name, email)
values
	(23, 'Karan', 'ksingh@gamil.com'),
	(24, 'Aman', 'asingh@gamil.com'),
	(25, 'Rohan', 'rsingh@gamil.com');

insert into students
		(full_name, email, date_of_birth)
	values
		('Mohit Singh', 'msingh@gamil.com', '2025-01-01');


insert into students
    (full_name, email, date_of_birth)
values
    ( 'Karan', 'ksingh@gamil.com','2024-10-11'),
    ( 'Aman', 'asingh@gamil.com', '2021-05-12'),
    ( 'Rohan', 'rsingh@gamil.com', '2022-06-10');
