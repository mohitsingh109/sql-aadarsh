Where Statement


-- Where (filtering)
-- ==, <>, >, <, >=, <=, AND, OR, NOT

-- == (equals)
select *
from students
where address = 'Delhi';

-- <> (Not equals)
select *
from students
where address <> 'Delhi';

-- > (Greater then)
select
    full_name as student_name,
    email as student_email
from students
where student_id > 11;

-- >= (Greater then and equal to)
select
    *
from students
where student_id >= 11;

-- OR (if a row pass any condition count them in result)
select *
from students
where address = 'Delhi'
   or address = 'Mumbai';

-- AND (all the condition has to be true)
select *
from students
where date_of_birth = '2023-01-01'
  and address = 'Delhi';

-- LIKE (contains operation)
-- A% --> first char has to be A and after that anything
-- %Singh --> it should end with singh
-- %S% --> it's checking if s is present in full name

-- Start with A
select *
from students
where address = 'Delhi'
  and full_name like 'A%';

-- Ends with Singh
select *
from students
where address = 'Delhi'
  and full_name like '%Singh';

-- Contains S
select *
from students
where address = 'Delhi'
  and full_name like '%S%';

-- mohit@gmail.com
-- rohan@yahoo.com
-- aadarsh@hotmail.com
select *
from students
where address = 'Delhi'
  and email like '%@%.com';


-- Where with NULL

-- give me all the sudent where address is null
select
    *
from students
where address = null; -- = will not work with NULL becasue = check the content

select
    *
from students
where address is null; -- = replace for null is ('is')

select
    *
from students
where address is not null;