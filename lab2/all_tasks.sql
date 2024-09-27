CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INTEGER,
    salary INTEGER
);

INSERT INTO employees (first_name, last_name, department_id, salary)
VALUES ('Akerke', 'Zhumabekova', 23031313, 1000000)

INSERT INTO employees (employee_id, first_name, last_name)
VALUES (5, 'Eren', 'Yeager')

INSERT INTO employees (first_name, last_name, department_id)
VALUES ('Luffy', 'Mugiwara', NULL)

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES (6,'Mikasa', 'Ackerman', 456800, 238332),
       (7,'Yuji', 'Itadori', 3552532, 234567),
       (8,'Megumi', 'Fushigura', 53815153, 82639931),
       (9, 'Levi','Ackerman', 6578625, 874597),
       (10,'Erwin', 'Smith', 364826, 372374237)

ALTER TABLE employees
ALTER COLUMN first_name SET DEFAULT 'John'

INSERT INTO employees (employee_id, last_name, department_id, salary)
VALUES (12, 'Imanbaeva', 290247, 2983923)


CREATE TABLE employees_archive(
    LIKE employees including all
);

INSERT INTO employees_archive
SELECT * from ;


UPDATE employees
SET department_id = 1
WHERE department_id is NULL

UPDATE employees
SET salary = salary * 1.15
RETURNING first_name, last_name, salary AS "Updated Salary";

DELETE FROM employees
WHERE salary < 50000
RETURNING *;

DELETE FROM employees_archive
WHERE employee_id IN (SELECT employee_id FROM employees)
RETURNING *;

DELETE FROM employees
RETURNING *;