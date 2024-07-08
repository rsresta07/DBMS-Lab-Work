CREATE TABLE Employee (emp_id INT PRIMARY KEY, NAME VARCHAR(50), address VARCHAR(100), telephone VARCHAR(20), salary INT, age INT);
CREATE TABLE Project (project_id INT PRIMARY KEY, project_name VARCHAR(50), city VARCHAR(50), duration INT, budget FLOAT);
CREATE TABLE Works (emp_id INT, project_id INT, joinDate DATE, FOREIGN KEY (emp_id) REFERENCES Employee(emp_id), 
FOREIGN KEY (project_id) REFERENCES Project(project_id));

INSERT INTO Employee (emp_id, NAME, address, telephone, salary, age) VALUES 
(1, 'Sita', 'Kathmandu', '9841666666', 50000, 32),
(2, 'Ram', 'Lalitpur', '9812345678', 45000, 28),
(3, 'Hari', 'Bhaktapur', '9867891234', 55000, 35),
(4, 'Gita', 'Kathmandu', '9809876543', 60000, 40),
(5, 'Nabin', 'Pokhara', '9841254785', 40000, 26),
(6, 'Anita', 'Chitwan', '9867894561', 45000, 28),
(7, 'Rajesh', 'Bhaktapur', '9812345678', 55000, 35),
(8, 'Suman', 'Kathmandu', '9809876543', 50000, 32),
(9, 'Bikash', 'Lalitpur', '9841666666', 40000, 26),
(10, 'Durga', 'Pokhara', '9867891234', 60000, 40);

INSERT INTO Project (project_id, project_name, city, duration, budget) VALUES
(101, 'Construction of a new hospital', 'Kathmandu', 12, 5000000),
(102, 'Development of a new mobile app', 'Lalitpur', 6, 1000000),
(103, 'Upgrade of existing computer network', 'Bhaktapur', 8, 3000000),
(104, 'Design and development of a new website', 'Pokhara', 4, 2000000),
(105, 'Expansion of existing manufacturing plant', 'Chitwan', 18, 8000000),
(106, 'Research and development of new product line', 'Kathmandu', 24, 12000000),
(107, 'Implementation of new HR system', 'Lalitpur', 3, 500000),
(108, 'Renovation of office building', 'Kathmandu', 6, 1500000);

INSERT INTO Works (emp_id, project_id, joinDate) VALUES
(1, 101, '2020-01-01'),
(2, 101, '2021-02-01'),
(3, 102, '2020-03-01'),
(4, 103, '2021-04-01'),
(5, 104, '2020-05-01'),
(7, 105, '2020-07-01'),
(8, 106, '2020-08-01'),
(9, 107, '2020-09-01'),
(10, 108, '2020-10-11');

SELECT e.name AS employee_name, p.project_name FROM 
Employee e INNER JOIN Works w ON e.emp_id = w.emp_id 
INNER JOIN Project p ON w.project_id = p.project_id;

SELECT p.project_name, p.city FROM Employee e INNER 
JOIN Works w ON e.emp_id = w.emp_id INNER JOIN Project 
p ON w.project_id = p.project_id WHERE e.salary >= 20000;

SELECT e.name AS employee_name, p.project_name FROM 
Employee e INNER JOIN Works w ON e.emp_id = w.emp_id 
INNER JOIN Project p ON w.project_id = p.project_id 
WHERE e.address = 'Kathmandu';

SELECT e.name, e.address, e.salary, e.age FROM Employee 
e INNER JOIN Works w ON e.emp_id = w.emp_id WHERE 
w.joinDate = '2020-10-11';

SELECT p.project_name, p.duration, p.budget FROM Employee 
e INNER JOIN Works w ON e.emp_id = w.emp_id INNER 
JOIN Project p ON w.project_id = p.project_id WHERE 
e.age BETWEEN 20 AND 30;

SELECT e.name FROM Employee e LEFT JOIN Works w ON 
e.emp_id = w.emp_id WHERE w.emp_id IS NULL;

