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

