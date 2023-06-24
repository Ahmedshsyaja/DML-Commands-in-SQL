CREATE TABLE Employee(
Employee INT Primary Key,
FIRST_NAME varchar(10) NOT NULL,
LAST_NAME varchar(10) NOT NULL,
Branch nchar(5) NOT NULL,
Age Numeric(2,0) NOT NULL,
NIC nchar(15) NOT NULL,
Scale Numeric(1,0) NOT NULL,
Salary INT NOT NULL,
Joining_Date DATE NOT NULL,
Overtime FLOAT
);

INSERT INTO Employee(Employee,FIRST_NAME,LAST_NAME,Branch,Age,NIC,Scale,Salary,Joining_Date,Overtime)
VALUES (2, 'Fox', 'Simmons', '21', 21, '0310', 1, 25000, '2001-02-02', 10.5);

INSERT INTO Employee(Employee,FIRST_NAME,LAST_NAME,Branch,Age,NIC,Scale,Salary,Joining_Date,Overtime)
VALUES (3, 'Mr', 'Simmons', '21', 21, '03104836974', 3, 25000, '2002-02-03', 10.5);

INSERT INTO Employee
VALUES (4, 'Fox', 'Simmons', '21', 21, '0310', 1, 25000, '2001-02-02', 10.5);

INSERT INTO Employee
VALUES (5, 'Mr', 'Simmons', '21', 21, '03104836974', 3, 25000, '2002-02-03', 10.5);

SELECT Age AS updated_age
FROM Employee;

SELECT max(Salary)
FROM Employee
GROUP BY Branch;

SELECT Branch
FROM Employee
GROUP BY Branch
HAVING AVG(Salary) > 30000;

SELECT SUM(Overtime) AS Time
FROM Employee
GROUP BY Branch;

SELECT MAX(Overtime) AS max_over, Branch
FROM Employee
GROUP BY Branch;

SELECT MIN(Overtime) AS MIN_over, Branch
FROM Employee
GROUP BY Branch;

SELECT COUNT(*) AS Employee_COUNT
FROM Employee WHERE Overtime > 5.6;

SELECT * FROM Employee WHERE Joining_Date > '2005-01-01';

SELECT * FROM Employee WHERE FIRST_NAME LIKE 'A%' OR FIRST_NAME LIKE 'M%' OR FIRST_NAME LIKE 'E%';

SELECT * FROM Employee WHERE FIRST_NAME LIKE 'A%' OR FIRST_NAME LIKE 'E%' OR FIRST_NAME LIKE 'I%' OR FIRST_NAME LIKE 'O%' OR FIRST_NAME LIKE 'U%';

SELECT * FROM Employee WHERE FIRST_NAME NOT IN ('Ahmed','Tahir','Hiba','Amna');

SELECT STDDEV(Overtime) as Overtime_st, Branch from Employee Group by Branch;

SELECT VARIANCE(Salary) as sALL_VR, Branch from Employee Group by Branch;

SELECT COUNT(*) as Count, Branch from Employee Group by Branch;

SELECT COUNT(*) as w_Count, Branch from Employee where FIRST_NAME='warning' Group by Branch;

SELECT *from Employee where Employee like '16-f';

SELECT *from Employee where Overtime > (SELECT AVG(Overtime) FROM Employee);

SELECT DISTINCT *from Employee;

SELECT * 
from Employee 
ORDER BY Age DESC;

UPDATE Employee SET Age = (Age + 5);
