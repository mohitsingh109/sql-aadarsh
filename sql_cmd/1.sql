-- Create a table Student
-- Every table must have PK
-- PK --> by default is not null
-- null --> empty data
-- not null --> non empty data
-- not null -> it's a non empty column
-- unique --> SQL constraint
create table students(
                         student_id INTEGER primary key,
                         full_name TEXT not null,
                         email TEXT unique not null,
                         address TEXT,
                         date_of_birth DATE
);


insert into students
(student_id, full_name, email)
values
    (23, 'Rohit Singh', 'msingh@gamil.com');




create table students(
                         student_id BIGSERIAL primary key,  -- BIGSERIAL is a data type in PostgreSQL that automatically generates a unique identifier for each row in the table. It is often used as a primary key for tables where you want to have an auto-incrementing integer value.
                         full_name TEXT not null,
                         email TEXT unique not null,
                         address TEXT,
                         date_of_birth DATE,
                         created_at TIMESTAMPTZ DEFAULT NOW()
);


insert into students
(full_name, email)
values
    ('Mohit Singh', 'msingh@gamil.com');


insert into students
(full_name, email)
values
    ( 'Karan', 'ksingh@gamil.com'),
    ( 'Aman', 'asingh@gamil.com'),
    ( 'Rohan', 'rsingh@gamil.com');