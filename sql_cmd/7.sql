-- Order By, Limit, Offset

-- Order By (UI sort by)

select *
from students
order by full_name ASC;

select *
from students
order by full_name DESC;

select *
from students
order by date_of_birth DESC;


-- Limit (1000)

select *
from students
order by full_name
    desc limit 5;

-- Offset (help you to skip some record or You can tell where to start pulling the data)

select *
from students
order by full_name
    desc limit 5 offset 5;
