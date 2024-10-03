use datamining;

CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
INSERT INTO Departments (department_name) VALUES ('Sales');
INSERT INTO Departments (department_name) VALUES ('Marketing');
INSERT INTO Departments (department_name) VALUES ('HR');


INSERT INTO Employees (first_name, last_name, hire_date, department_id)
VALUES ('John', 'Doe', '2023-01-15', 1);

INSERT INTO Employees (first_name, last_name, hire_date, department_id)
VALUES ('Jane', 'Smith', '2022-05-22', 2);

INSERT INTO Employees (first_name, last_name, hire_date, department_id)
VALUES ('Michael', 'Johnson', '2021-09-10', 3);


-- 1. Retrieve the first_name and last_name of all customers from the customer table where the store_id is 1.

SELECT first_name, last_name 
FROM Employees 
WHERE employee_id = 1;

-- 2. Select the first_name, last_name, and email of customers whose last name starts with the letter 'S'.

SELECT first_name, last_name 
FROM Employees 
WHERE last_name LIKE 's%';


select first_name, last_name, hire_date
from Employees
where hire_date > "2023-01-01";

-- count the number of employees in each department
select department_id, count(*) as num_employees
from Employees
group by department_id;

-- find the earliest hire date across all employees
select MIN(hire_date) AS earliest_hire_date
FROM Employees;

-- find the latest hire date in sales dept
select max(hire_date) AS latest_hire_date
FROM Employees
where department_id=1;

-- find all employees wo dont belong to any department (orphand record)
select first_name, last_name
from Employees
where department_id not in (select department_id from Departments);

select * from departments;
select * from employees;
















