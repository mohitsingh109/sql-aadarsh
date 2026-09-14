SELECT Statement

-- select (to select column)
-- * (all column)
-- from <table name>
select * from students;

-- Selcting two column
select full_name, email from students;

-- Aliases name for column
select
	full_name as student_name,
	email as student_email
from students;

-- Extract year, month and day from date_of_birth column
select
    full_name,
    extract(year from date_of_birth) as year_birth,
    extract(month from date_of_birth) as month_birth,
    extract(day from date_of_birth) as day_birth
from students;
