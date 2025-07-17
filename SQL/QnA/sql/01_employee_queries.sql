CREATE TABLE employee(name varchar(255), salary int(6));

INSERT INTO employee(name, salary) VALUES ("Chirag", NULL);
INSERT INTO employee(name, salary) VALUES ("Satish", 15000);
INSERT INTO employee(name, salary) VALUES ("Paresh", 8000);
INSERT INTO employee(name, salary) VALUES ("Ronak", 12000);

SELECT * FROM employee;

-- Limit
SELECT * FROM employee LIMIT 1;
SELECT * FROM employee LIMIT 2;

SELECT * FROM employee ORDER BY salary LIMIT 3;

SELECT * FROM employee ORDER BY salary ASC;
SELECT * FROM employee ORDER BY salary DESC LIMIT 1;
SELECT * FROM employee ORDER BY salary DESC LIMIT 2;

-- Functions
SELECT MAX(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT AVG(salary) FROM employee;

-- Second Top Salary in the employee table
SELECT * FROM employee;
SELECT MAX(salary) FROM employee LIMIT 1;
SELECT * FROM employee WHERE salary < (SELECT MAX(salary) FROM employee) LIMIT 1;
SELECT * FROM employee WHERE salary < (SELECT MAX(salary) FROM employee) ORDER BY salary DESC LIMIT 1;

-- Other Conditions
SELECT * FROM employee WHERE salary < 10000 LIMIT 1;

SELECT * FROM employee ORDER BY salary DESC LIMIT 1;
SELECT * FROM employee ORDER BY salary DESC LIMIT 0, 1;
SELECT * FROM employee ORDER BY salary DESC LIMIT 1, 1;
SELECT * FROM employee ORDER BY salary DESC LIMIT 2, 1;

-- BETWEEN
SELECT * FROM employee WHERE salary BETWEEN 5000 AND 12000;

-- DROP and TRUNCATE
DROP TABLE employee;         -- Deletes complete data and structure
TRUNCATE TABLE employee;     -- Deletes only data, not columns
