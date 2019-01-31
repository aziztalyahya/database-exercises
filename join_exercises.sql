use join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);


INSERT INTO users (name, email, role_id) VALUES
('jeff', 'jeff@example.com', 2),
('tina', 'tina@example.com', 2),
('doug', 'doug@example.com', 2),
('porkchop', 'porkchop@example.com', NULL);

select * from users;

select * from users
right join roles
on roles.id = users.role_id;


select roles.name as 'Department Name'
from roles

SELECT roles.name, COUNT(*) FROM users
JOIN roles
 on roles.id = users.role_id
GROUP BY roles.name;

select users, count(*) as 'author'
from r
group by users;

select * from users
right join roles
on roles.id = users.role_id;



SELECT d.dept_name as 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM departments as d
JOIN dept_manager as dm
  ON dm.dept_no = d.dept_no
JOIN employees as e
  ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
ORDER BY `Department Name`;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
       JOIN dept_manager AS m
         ON m.emp_no = e.emp_no
       JOIN departments AS d
         ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND e.gender = 'F'
ORDER BY d.dept_name;

