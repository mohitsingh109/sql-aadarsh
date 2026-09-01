# PostgreSQL SQL

Primary goal: make the user comfortable reading, writing, debugging, and explaining SQL queries on real relational data.

## Complexity Scale

| Level | Complexity | Meaning |
| --- | --- | --- |
| 1 | Foundation | Must know before writing real SQL queries. |
| 2 | Beginner | Basic query and table operations. |
| 3 | Beginner Plus | Needs some logical thinking across tables or grouped data. |
| 4 | Intermediate | Used in real applications, reporting, debugging, and performance work. |
| 5 | Intermediate Plus | Useful for stronger students after the core path is complete. |

## Suggested Practice Database

Use one consistent practice database throughout the course. A small education or commerce schema works well because students can understand the data quickly.

Recommended tables:

| Table | Purpose |
| --- | --- |
| `students` | Student profile data such as name, email, date of birth, city. |
| `courses` | Course details such as title, fee, category. |
| `enrollments` | Which student joined which course and when. |
| `teachers` | Teacher details. |
| `course_teachers` | Many-to-many relationship between courses and teachers. |
| `payments` | Payment amount, payment date, payment status. |
| `attendance` | Attendance records per student and course. |

This schema is enough to teach filtering, joins, grouping, subqueries, constraints, indexes, transactions, and reporting queries.

## Learning Roadmap

| Order | Topic | Complexity | What It Is About | Student Should Be Able To Do |
| --- | --- | --- | --- | --- |
| 1 | What is a database? | 1 | Introduce databases, tables, rows, columns, records, fields, and why applications store data in databases. | Explain the difference between a spreadsheet and a relational database. |
| 2 | What is PostgreSQL? | 1 | PostgreSQL is an open-source relational database system. Teach where it is used and how SQL is used to communicate with it. | Understand that PostgreSQL stores data and SQL is the language used to query it. |
| 3 | Relational database concepts | 1 | Tables, relationships, primary keys, foreign keys, one-to-one, one-to-many, and many-to-many relationships. | Draw a simple relationship between `students`, `courses`, and `enrollments`. |
| 4 | Installing and connecting | 1 | Install PostgreSQL, open `psql` or pgAdmin, connect to a database, and run the first query. | Connect to a database and run `SELECT version();`. |
| 5 | Basic SQL syntax | 1 | SQL keywords, identifiers, semicolons, comments, single quotes, case-insensitive keywords, and readable formatting. | Format a query so another person can read it. |
| 6 | Creating databases and schemas | 2 | `CREATE DATABASE`, `CREATE SCHEMA`, and how schemas group database objects. | Create a database for practice and understand why `public` exists. |
| 7 | Creating tables | 2 | `CREATE TABLE`, columns, data types, and table design basics. | Create `students`, `courses`, and `enrollments` tables. |
| 8 | PostgreSQL data types | 2 | Common types: `integer`, `bigint`, `numeric`, `text`, `varchar`, `boolean`, `date`, `timestamp`, `timestamptz`, `uuid`, `jsonb`. | Choose correct data types for common business fields. |
| 9 | Constraints | 2 | Rules that protect data quality: `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, and `DEFAULT`. | Add constraints so invalid data cannot enter the table. |
| 10 | Insert data | 2 | `INSERT INTO`, inserting one row, multiple rows, selected columns, default values, and `RETURNING`. | Insert sample records and return generated IDs. |
| 11 | Basic `SELECT` queries | 2 | Retrieve all columns, selected columns, expressions, aliases, and calculated columns. | Write simple read queries using `SELECT` and `FROM`. |
| 12 | Filtering with `WHERE` | 2 | Conditions using `=`, `<>`, `>`, `<`, `>=`, `<=`, `AND`, `OR`, `NOT`. | Filter students by city, course, fee, and date. |
| 13 | Working with `NULL` | 2 | `NULL` means unknown or missing. Teach `IS NULL`, `IS NOT NULL`, and why `= NULL` is wrong. | Correctly filter rows with missing values. |
| 14 | Sorting and limiting | 2 | `ORDER BY`, ascending, descending, sorting by multiple columns, `LIMIT`, and `OFFSET`. | Show the latest enrollments or top 10 payments. |
| 15 | Pattern matching | 2 | `LIKE`, `ILIKE`, `%`, `_`, and basic text search patterns. | Search students by name or email pattern. |
| 16 | Updating data | 2 | `UPDATE`, `SET`, `WHERE`, safe updates, and `RETURNING`. | Update one student's email without changing all rows. |
| 17 | Deleting data | 2 | `DELETE`, `WHERE`, safe deletes, foreign key impact, and `RETURNING`. | Delete test data safely. |
| 18 | Basic functions | 2 | String, number, date, time, and conversion functions. Examples: `upper`, `lower`, `concat`, `round`, `now`, `coalesce`. | Clean and display data in query output. |
| 19 | `CASE` expressions | 3 | Conditional logic inside SQL queries. | Create labels like `paid`, `pending`, `high_fee`, or `low_fee`. |
| 20 | Aggregate functions | 3 | `count`, `sum`, `avg`, `min`, `max`, and how aggregates summarize many rows. | Calculate total payments, average fee, and student counts. |
| 21 | `GROUP BY` | 3 | Group rows before aggregation. Teach grouping rules clearly. | Count students per course or payments per month. |
| 22 | `HAVING` | 3 | Filter grouped results after aggregation. Compare with `WHERE`. | Show only courses with more than 10 enrollments. |
| 23 | Inner joins | 3 | Combine matching rows from related tables. | List students with their course names. |
| 24 | Left joins | 3 | Keep all rows from the left table, even when the right table has no match. | Find students who have not made any payment. |
| 25 | Other joins | 3 | `RIGHT JOIN`, `FULL JOIN`, `CROSS JOIN`, and when they are rarely or carefully used. | Recognize join types and choose the correct one. |
| 26 | Many-to-many joins | 3 | Use bridge tables like `course_teachers` or `enrollments`. | Query teachers assigned to courses or students enrolled in many courses. |
| 27 | Set operations | 3 | `UNION`, `UNION ALL`, `INTERSECT`, and `EXCEPT`. | Combine or compare result sets. |
| 28 | Subqueries | 3 | Queries inside queries, scalar subqueries, `IN`, `EXISTS`, and correlated subqueries. | Find students enrolled in courses above the average fee. |
| 29 | Common table expressions | 4 | `WITH` queries that break complex SQL into readable steps. | Write a multi-step report query using named temporary result sets. |
| 30 | Views | 4 | Saved queries that simplify repeated reporting or hide complexity. | Create a `student_course_summary` view. |
| 31 | Window functions | 4 | Calculate values across related rows without collapsing rows like `GROUP BY`. Teach `row_number`, `rank`, `dense_rank`, `lag`, `lead`, running totals, and `OVER`. | Rank students by payment amount within each course. |
| 32 | Date and time querying | 4 | Date filtering, intervals, extracting year/month/day, time zones, and monthly reports. | Create enrollment and payment reports by month. |
| 33 | Type casting | 3 | Convert values using `CAST(value AS type)` or `value::type`. | Convert timestamps to dates or text input to numbers safely. |
| 34 | PostgreSQL-specific `RETURNING` | 3 | Return inserted, updated, or deleted rows immediately after data modification. | Insert a record and immediately get its generated ID. |
| 35 | `ON CONFLICT` upsert | 4 | Handle duplicate key conflicts using `DO NOTHING` or `DO UPDATE`. | Insert a student by email without creating duplicates. |
| 36 | Transactions | 4 | `BEGIN`, `COMMIT`, `ROLLBACK`, and all-or-nothing changes. | Safely update payment and enrollment status together. |
| 37 | Savepoints | 4 | Partial rollback inside a transaction using `SAVEPOINT` and `ROLLBACK TO`. | Undo part of a multi-step transaction while keeping earlier work. |
| 38 | Basic normalization | 3 | Avoid duplicate data by splitting entities into related tables. Cover 1NF, 2NF, and 3NF at a practical level. | Improve a poorly designed table by separating students, courses, and payments. |
| 39 | Index basics | 4 | Indexes help PostgreSQL find rows faster, but they add write and storage overhead. Teach when indexes help and when they do not. | Add an index on a commonly filtered column such as `email` or `course_id`. |
| 40 | Unique and composite indexes | 4 | Enforce uniqueness and optimize filters across multiple columns. | Prevent duplicate enrollments using `(student_id, course_id)`. |
| 41 | Reading query plans with `EXPLAIN` | 4 | Understand sequential scan, index scan, cost, row estimates, and filter conditions. | Compare a query plan before and after adding an index. |
| 42 | Importing and exporting data | 3 | Use `COPY`, CSV imports, and basic export workflows. | Load sample students from a CSV file. |
| 43 | Basic permissions | 4 | Roles, users, privileges, `GRANT`, and `REVOKE`. Keep this practical for app access. | Create a read-only user for reports. |
| 44 | JSON and JSONB basics | 5 | Store semi-structured data when the schema is flexible. Teach when not to use JSON for relational data. | Query a `jsonb` column for simple metadata. |
| 45 | Arrays basics | 5 | PostgreSQL arrays can store multiple values in one column, but should be used carefully. | Understand when a join table is better than an array. |
| 46 | Recursive CTEs | 5 | Query hierarchical data such as categories, reporting managers, or prerequisites. | Read and modify a simple tree query. |
| 47 | Final reporting project | 4 | Combine joins, grouping, CTEs, window functions, and date filters into one report. | Build a dashboard-style SQL report from the practice database. |

## Detailed Teaching Plan

### Phase 1: Database and SQL Foundations

Complexity: 1 to 2

Teach these first:

- What a database is
- What PostgreSQL is
- Tables, rows, columns
- Primary keys and foreign keys
- Basic SQL syntax
- `CREATE DATABASE`
- `CREATE TABLE`
- Common data types
- Constraints
- `INSERT`
- Basic `SELECT`

Practice:

```sql
CREATE TABLE students (
    student_id bigserial PRIMARY KEY,
    full_name text NOT NULL,
    email text UNIQUE NOT NULL,
    city text,
    date_of_birth date,
    created_at timestamptz DEFAULT now()
);

INSERT INTO students (full_name, email, city, date_of_birth)
VALUES
    ('Aarav Sharma', 'aarav@example.com', 'Delhi', '2003-04-12'),
    ('Meera Patel', 'meera@example.com', 'Ahmedabad', '2002-09-18');

SELECT student_id, full_name, city
FROM students;
```

Common mistakes to correct early:

- Forgetting semicolons
- Using double quotes for string values
- Writing `= NULL` instead of `IS NULL`
- Creating every text field as `varchar(255)` without reason
- Updating or deleting without a `WHERE` clause

### Phase 2: Querying Data Properly

Complexity: 2 to 3

Teach these next:

- `WHERE`
- Comparison operators
- `AND`, `OR`, `NOT`
- `NULL`
- `ORDER BY`
- `LIMIT` and `OFFSET`
- `LIKE` and `ILIKE`
- Aliases
- Basic functions
- `CASE`

Practice:

```sql
SELECT
    full_name,
    city,
    CASE
        WHEN city IS NULL THEN 'city missing'
        ELSE city
    END AS city_status
FROM students
WHERE email ILIKE '%@example.com'
ORDER BY full_name;
```

Teaching focus:

- SQL reads like a pipeline, but logical execution order matters.
- `WHERE` filters rows before grouping.
- `NULL` is not equal to anything, even another `NULL`.

### Phase 3: Aggregation and Reporting

Complexity: 3

Teach these after the student is comfortable with `SELECT`:

- `count`
- `sum`
- `avg`
- `min`
- `max`
- `GROUP BY`
- `HAVING`
- Grouping by date parts
- Report-style aliases

Practice:

```sql
SELECT
    c.course_title,
    count(e.enrollment_id) AS total_enrollments
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_title
HAVING count(e.enrollment_id) > 0
ORDER BY total_enrollments DESC;
```

Common mistakes:

- Selecting non-grouped columns without adding them to `GROUP BY`
- Using `WHERE` instead of `HAVING` for aggregate filters
- Counting nullable columns without understanding the difference between `count(*)` and `count(column_name)`

### Phase 4: Joins and Relationships

Complexity: 3

Teach joins with diagrams and real table relationships:

- Inner join
- Left join
- Right join
- Full join
- Cross join
- Self join
- Many-to-many relationships
- Join conditions
- Table aliases

Practice:

```sql
SELECT
    s.full_name,
    c.course_title,
    e.enrolled_at
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id
ORDER BY e.enrolled_at DESC;
```

Teaching focus:

- Start with `INNER JOIN` and `LEFT JOIN`; these solve most beginner and intermediate tasks.
- Explain row multiplication when joining one-to-many tables.
- Always ask: "Which table should keep all rows?"

### Phase 5: Subqueries, CTEs, and Views

Complexity: 3 to 4

Teach these once joins and aggregation are clear:

- Subqueries in `WHERE`
- Subqueries in `FROM`
- `IN`
- `EXISTS`
- Correlated subqueries
- Common table expressions using `WITH`
- Views

Practice:

```sql
WITH course_revenue AS (
    SELECT
        c.course_id,
        c.course_title,
        sum(p.amount) AS total_revenue
    FROM courses c
    JOIN enrollments e ON e.course_id = c.course_id
    JOIN payments p ON p.enrollment_id = e.enrollment_id
    WHERE p.status = 'paid'
    GROUP BY c.course_id, c.course_title
)
SELECT *
FROM course_revenue
WHERE total_revenue > (
    SELECT avg(total_revenue)
    FROM course_revenue
)
ORDER BY total_revenue DESC;
```

Teaching focus:

- CTEs make complex queries easier to read.
- Views are useful when the same query is needed again and again.
- A readable query is usually easier to debug than a clever query.

### Phase 6: Intermediate SQL Features

Complexity: 4

Teach these for real reporting and application work:

- Window functions
- `row_number`
- `rank`
- `dense_rank`
- `lag`
- `lead`
- Running totals
- `PARTITION BY`
- `ORDER BY` inside `OVER`
- `ON CONFLICT`
- `RETURNING`

Practice:

```sql
SELECT
    c.course_title,
    s.full_name,
    p.amount,
    rank() OVER (
        PARTITION BY c.course_id
        ORDER BY p.amount DESC
    ) AS payment_rank_in_course
FROM payments p
JOIN enrollments e ON e.enrollment_id = p.enrollment_id
JOIN students s ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id
WHERE p.status = 'paid';
```

Teaching focus:

- `GROUP BY` reduces rows.
- Window functions keep individual rows and add calculated values.
- `PARTITION BY` means "restart the calculation for each group."

### Phase 7: Transactions and Data Safety

Complexity: 4

Teach these before students work on real application data:

- Why transactions exist
- Atomic changes
- `BEGIN`
- `COMMIT`
- `ROLLBACK`
- `SAVEPOINT`
- Foreign key behavior
- Safe update and delete habits

Practice:

```sql
BEGIN;

UPDATE payments
SET status = 'paid'
WHERE payment_id = 10
RETURNING payment_id, status;

UPDATE enrollments
SET status = 'active'
WHERE enrollment_id = 5
RETURNING enrollment_id, status;

COMMIT;
```

Teaching focus:

- Multiple related changes should succeed together or fail together.
- Test risky changes inside a transaction.
- Use `RETURNING` to inspect changed rows.

### Phase 8: Performance Basics

Complexity: 4

Teach performance at a basic, practical level:

- Why full table scans happen
- Index basics
- Unique indexes
- Composite indexes
- Indexes and `ORDER BY`
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- Sequential scan vs index scan
- Why too many indexes can slow writes

Practice:

```sql
EXPLAIN
SELECT *
FROM students
WHERE email = 'aarav@example.com';

CREATE INDEX idx_students_email ON students (email);

EXPLAIN
SELECT *
FROM students
WHERE email = 'aarav@example.com';
```

Teaching focus:

- Do not add indexes blindly.
- Index columns that are commonly used in filtering, joining, sorting, or uniqueness.
- Small tables may still use sequential scans because scanning them is cheap.

## PostgreSQL-Specific Topics to Highlight

| Topic | Complexity | Why It Matters |
| --- | --- | --- |
| `bigserial` and identity columns | 2 | Students need auto-generated IDs. Also explain that modern PostgreSQL supports SQL-standard identity columns. |
| `text` vs `varchar` | 2 | PostgreSQL handles `text` well; do not use `varchar(255)` by habit. |
| `timestamptz` | 3 | Useful for application timestamps because it stores time with time zone awareness. |
| `RETURNING` | 3 | Very useful in application code after `INSERT`, `UPDATE`, and `DELETE`. |
| `ILIKE` | 2 | PostgreSQL-specific case-insensitive pattern matching. |
| `ON CONFLICT` | 4 | PostgreSQL's common upsert pattern. |
| `jsonb` | 5 | Useful for flexible metadata, but not a replacement for proper relational design. |
| `EXPLAIN` | 4 | Helps students understand how PostgreSQL executes queries. |


## Topics to Avoid Until After Intermediate Level

These are useful PostgreSQL topics, but they can distract a fresher too early:

- Deep database administration
- Replication
- Partitioning
- Vacuum internals
- Write-ahead log internals
- Advanced locking behavior
- Stored procedures and PL/pgSQL in depth
- Custom extensions
- Full-text search in depth
- Advanced JSON indexing
- Advanced isolation anomalies

Introduce these only after the student can already write useful SQL reports independently.

## Official PostgreSQL References

The topic order in this guide was cross-checked against the PostgreSQL 18 documentation:

- PostgreSQL Tutorial: https://www.postgresql.org/docs/current/tutorial.html
- SQL Commands: https://www.postgresql.org/docs/current/sql-commands.html
- Data Types: https://www.postgresql.org/docs/current/datatype.html
- Constraints: https://www.postgresql.org/docs/current/ddl-constraints.html
- Queries: https://www.postgresql.org/docs/current/queries.html
- Common Table Expressions: https://www.postgresql.org/docs/current/queries-with.html
- Indexes: https://www.postgresql.org/docs/current/indexes.html
- Transactions: https://www.postgresql.org/docs/current/tutorial-transactions.html
- Window Functions: https://www.postgresql.org/docs/current/tutorial-window.html
- Using EXPLAIN: https://www.postgresql.org/docs/current/using-explain.html

