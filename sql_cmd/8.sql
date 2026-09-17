-- Update

-- Dangerous (changes everyone)
update students
set address = 'Delhi';

-- Correct (use primary key to find the record)

update students
set address = 'Gurugram'
where student_id = 10;


update students
set address = 'Maharastra'
where address is null;


update students
set address = 'ABC',
    email = 'karan@gmail.com'
where student_id = 10;