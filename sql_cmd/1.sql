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
    (22, 'Mohit Singh', 'msingh@gamil.com');