Last login: Fri Oct  2 17:10:03 on ttys000
kevanshi@Kevanshis-MacBook-Pro ~ % mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 9.7.2 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE student_db;
Query OK, 1 row affected (0.003 sec)

mysql> USE student_db;
Database changed
mysql> CREATE TABLE Students (
    -> Student_id INT PRIMARY KEY,
    -> First_name VARCHAR(50),
    -> Last_name VARCHAR(50),
    -> Email VARCHAR(100),
    -> Birthdate DATE,
    -> Enrollnent_date DATE
    -> );
Query OK, 0 rows affected (0.022 sec)

mysql> CREATE TABLE Courses (
    -> Course_id INT PRIMARY KEY,
    -> Course_name VARCHAR(100),
    -> Department_id INT,
    -> Credits INT
    -> );
Query OK, 0 rows affected (0.011 sec)

mysql> CREATE TABLE Instructors (
    -> Instructor_id INT PRIMARY KEY,
    -> First_name VARCHAR(50),
    -> Last_name VARCHAR(50),
    -> Email VARCHAR(100),
    -> Department_id INt
    -> ..;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '..' at line 7
mysql> CREATE TABLE Instructors (
    -> Instructor_id INT PRIMARY KEY,
    -> First_name VARCHAR(50),
    -> Last_name VARCHAR(50),
    -> Email VARCHAR(100),
    -> Department_id INT
    -> );
Query OK, 0 rows affected (0.011 sec)

mysql> CREATE TABLE Enrollments (
    -> Enrollment_id INT PRIMARY KEY,
    -> Student_id INT,
    -> Course_id INT,
    -> Enrollment_date DATE
    -> );
Query OK, 0 rows affected (0.012 sec)

mysql> CREATE TABLE Departments (
    -> Department_id INT PRIMARY KEY,
    -> Department_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.011 sec)

mysql> INSERT INTO Students VALUES
    -> (1, 'Rahul', 'Sharma', 'rahul@gmail.com', '2002-05-15', '2022-08-01'),
    -> (2, 'Priya', 'Patel', 'priya@gmail.com', '2003-02-20', '2022-08-01'),
    -> (3, 'Amit', 'Kumar', 'amit@gmail.com', '2002-11-10', '2022-08-02'),
    -> (4, 'Neha', 'Joshi', 'neha@gmail.com', '2003-07-25', '2022-08-03'),
    -> (5, 'Riya', 'Mehta', 'riya@gmail.com', '2002-09-18', '2022-08-04');
\Query OK, 5 rows affected (0.024 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Courses VALUES
    -> (101, 'Introduction to SQL', 1, 3),
    -> (102, 'Data Structures', 2, 4),
    -> (103, 'Database Management', 1, 3),
    -> (104, 'Python Programming', 3, 4),
    -> (105, 'Web Development', 3, 3);
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Instructors VALUES
    -> (1, 'John', 'Smith', 'john@gmail.com', 1),
    -> (2, 'Sarah', 'Patel', 'sarah@gmail.com', 2),
    -> (3, 'David', 'Kumar', 'david@gmail.com', 1),
    -> (4, 'Priya', 'Shah', 'priya@gmail.com', 3),
    -> (5, 'Amit', 'Mehta', 'amit@gmail.com', 2);
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollments VALUES
    -> (1, 1, 101, '2022-08-01'),
    -> (2, 2, 102, '2022-08-02'),
    -> (3, 3, 103, '2022-08-03'),
    -> (4, 4, 104, '2022-08-04'),
    -> (5, 5, 105, '2022-08-05');
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Departments VALUES
    -> (1, 'Computer Science'),
    -> (2, 'Information Technology'),
    -> (3, 'Data Science'),
    -> (4, 'Electronics'),
    -> (5, 'Mechanical Engineering');
Query OK, 5 rows affected (0.003 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Students;
+------------+------------+-----------+-----------------+------------+-----------------+
| Student_id | First_name | Last_name | Email           | Birthdate  | Enrollnent_date |
+------------+------------+-----------+-----------------+------------+-----------------+
|          1 | Rahul      | Sharma    | rahul@gmail.com | 2002-05-15 | 2022-08-01      |
|          2 | Priya      | Patel     | priya@gmail.com | 2003-02-20 | 2022-08-01      |
|          3 | Amit       | Kumar     | amit@gmail.com  | 2002-11-10 | 2022-08-02      |
|          4 | Neha       | Joshi     | neha@gmail.com  | 2003-07-25 | 2022-08-03      |
|          5 | Riya       | Mehta     | riya@gmail.com  | 2002-09-18 | 2022-08-04      |
+------------+------------+-----------+-----------------+------------+-----------------+
5 rows in set (0.003 sec)

mysql> SELECT * FROM Courses;
+-----------+---------------------+---------------+---------+
| Course_id | Course_name         | Department_id | Credits |
+-----------+---------------------+---------------+---------+
|       101 | Introduction to SQL |             1 |       3 |
|       102 | Data Structures     |             2 |       4 |
|       103 | Database Management |             1 |       3 |
|       104 | Python Programming  |             3 |       4 |
|       105 | Web Development     |             3 |       3 |
+-----------+---------------------+---------------+---------+
5 rows in set (0.001 sec)

mysql> SELECT * FROM Instructors
    -> ;
+---------------+------------+-----------+-----------------+---------------+
| Instructor_id | First_name | Last_name | Email           | Department_id |
+---------------+------------+-----------+-----------------+---------------+
|             1 | John       | Smith     | john@gmail.com  |             1 |
|             2 | Sarah      | Patel     | sarah@gmail.com |             2 |
|             3 | David      | Kumar     | david@gmail.com |             1 |
|             4 | Priya      | Shah      | priya@gmail.com |             3 |
|             5 | Amit       | Mehta     | amit@gmail.com  |             2 |
+---------------+------------+-----------+-----------------+---------------+
5 rows in set (0.001 sec)

mysql> SELECT * FROM Enrollments;
+---------------+------------+-----------+-----------------+
| Enrollment_id | Student_id | Course_id | Enrollment_date |
+---------------+------------+-----------+-----------------+
|             1 |          1 |       101 | 2022-08-01      |
|             2 |          2 |       102 | 2022-08-02      |
|             3 |          3 |       103 | 2022-08-03      |
|             4 |          4 |       104 | 2022-08-04      |
|             5 |          5 |       105 | 2022-08-05      |
+---------------+------------+-----------+-----------------+
5 rows in set (0.001 sec)

mysql> SELECT * FROM Departments;
+---------------+------------------------+
| Department_id | Department_name        |
+---------------+------------------------+
|             1 | Computer Science       |
|             2 | Information Technology |
|             3 | Data Science           |
|             4 | Electronics            |
|             5 | Mechanical Engineering |
+---------------+------------------------+
5 rows in set (0.001 sec)

mysql> INSERT INTO Students VALUES
    -> (6, 'Karan', 'Shah', 'karan@gmail.com', '2022-08-06', '2022-08-06');
Query OK, 1 row affected (0.002 sec)

mysql> SELECT * FROM Students;
+------------+------------+-----------+-----------------+------------+-----------------+
| Student_id | First_name | Last_name | Email           | Birthdate  | Enrollnent_date |
+------------+------------+-----------+-----------------+------------+-----------------+
|          1 | Rahul      | Sharma    | rahul@gmail.com | 2002-05-15 | 2022-08-01      |
|          2 | Priya      | Patel     | priya@gmail.com | 2003-02-20 | 2022-08-01      |
|          3 | Amit       | Kumar     | amit@gmail.com  | 2002-11-10 | 2022-08-02      |
|          4 | Neha       | Joshi     | neha@gmail.com  | 2003-07-25 | 2022-08-03      |
|          5 | Riya       | Mehta     | riya@gmail.com  | 2002-09-18 | 2022-08-04      |
|          6 | Karan      | Shah      | karan@gmail.com | 2022-08-06 | 2022-08-06      |
+------------+------------+-----------+-----------------+------------+-----------------+
6 rows in set (0.001 sec)

mysql> UPDATE Students SET Email = 'karan.shah@gmail.com'
    -> WHERE Studentid = 6 ;
ERROR 1054 (42S22): Unknown column 'Studentid' in 'where clause'
mysql> UPDATE Students
    -> SET Email = 'karan.shah@gmail.com'
    -> WHERE StudentID = 6;
ERROR 1054 (42S22): Unknown column 'StudentID' in 'where clause'
mysql> UPDATE Students 
    -> SET Email = 'karan.shah@gamil.com' WHERE Student_id = 6;
Query OK, 1 row affected (0.005 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM Students WHERE Student_id = 6;
Query OK, 1 row affected (0.006 sec)

mysql> INSERT INTO Courses
    -> VALUES
    -> (106, 'Machine Learning', 3,4);
Query OK, 1 row affected (0.002 sec)

mysql> SELECT * FROM Courses;
+-----------+---------------------+---------------+---------+
| Course_id | Course_name         | Department_id | Credits |
+-----------+---------------------+---------------+---------+
|       101 | Introduction to SQL |             1 |       3 |
|       102 | Data Structures     |             2 |       4 |
|       103 | Database Management |             1 |       3 |
|       104 | Python Programming  |             3 |       4 |
|       105 | Web Development     |             3 |       3 |
|       106 | Machine Learning    |             3 |       4 |
+-----------+---------------------+---------------+---------+
6 rows in set (0.001 sec)

mysql> UPDATE Courses SET
    -> credits = 3
    -> WHERE Course_id = 106;
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM Courses
    -> WHERE Course_id = 106;
Query OK, 1 row affected (0.002 sec)

mysql> INSERT INTO Instructors
    -> VALUES
    -> (6, 'Karan', 'Shah', 'karan.instructor@gmail.com', 3);l
Query OK, 1 row affected (0.002 sec)

    -> SELECT * FROM Instructors;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'l
SELECT * FROM Instructors' at line 1
mysql> SELECT * FROM Instructors;
+---------------+------------+-----------+----------------------------+---------------+
| Instructor_id | First_name | Last_name | Email                      | Department_id |
+---------------+------------+-----------+----------------------------+---------------+
|             1 | John       | Smith     | john@gmail.com             |             1 |
|             2 | Sarah      | Patel     | sarah@gmail.com            |             2 |
|             3 | David      | Kumar     | david@gmail.com            |             1 |
|             4 | Priya      | Shah      | priya@gmail.com            |             3 |
|             5 | Amit       | Mehta     | amit@gmail.com             |             2 |
|             6 | Karan      | Shah      | karan.instructor@gmail.com |             3 |
+---------------+------------+-----------+----------------------------+---------------+
6 rows in set (0.000 sec)

mysql> UPDATE Instructors
    -> SET Email = 'karan.shah@gmail.com'
    -> WHERE Instructor_id = 6;
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM Instructors
    -> WHERE Instructor_id = 6;
Query OK, 1 row affected (0.002 sec)

mysql> INSERT INTO Enrollments
    -> VALUES (6, 1, 101, '2022-08-06');
Query OK, 1 row affected (0.002 sec)

mysql> SELECT * FROM Enrollments;
+---------------+------------+-----------+-----------------+
| Enrollment_id | Student_id | Course_id | Enrollment_date |
+---------------+------------+-----------+-----------------+
|             1 |          1 |       101 | 2022-08-01      |
|             2 |          2 |       102 | 2022-08-02      |
|             3 |          3 |       103 | 2022-08-03      |
|             4 |          4 |       104 | 2022-08-04      |
|             5 |          5 |       105 | 2022-08-05      |
|             6 |          1 |       101 | 2022-08-06      |
+---------------+------------+-----------+-----------------+
6 rows in set (0.001 sec)

mysql> UPDATE Enrollments SET Course_id = 102
    -> WHERE Enrollment_id = 6;
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM Enrollments WHERE Enrollment_id = 6;
Query OK, 1 row affected (0.002 sec)

mysql> INSERT INTO Departments VALUES
    -> (6, 'Civil Engineering';)
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
    -> INSERT INTO Departments VALUES
    -> (6, 'Civil Engineering');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')
INSERT INTO Departments VALUES
(6, 'Civil Engineering')' at line 1
mysql> INSERT INTO Departments
    -> VALUES (6, 'Civil Engineering');
Query OK, 1 row affected (0.002 sec)

mysql> SELECT * FROM Departments;
+---------------+------------------------+
| Department_id | Department_name        |
+---------------+------------------------+
|             1 | Computer Science       |
|             2 | Information Technology |
|             3 | Data Science           |
|             4 | Electronics            |
|             5 | Mechanical Engineering |
|             6 | Civil Engineering      |
+---------------+------------------------+
6 rows in set (0.000 sec)

mysql> UPDATE Departments SET Department_name = 'Civil Engineering and Design'
    -> WHERE Department_id = 6;
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM Departments WHERE
    -> Department_id = 6;
Query OK, 1 row affected (0.002 sec)

mysql> SELECT * FROM Students
    -> WHERE Enrollment_date > '2022-12-31';
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'where clause'
mysql> SELECT *
    -> FROM Students
    -> WHERE Enrollment_date > '2022-12-31';
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'where clause'
mysql> SELECT * FROM Students
    -> WHERE Enrollment_date ^C
mysql> SELECT * FROM Students
    -> WHERE Enrollment_date > '2022-12-31';
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'where clause'
mysql> DESC Students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Student_id      | int          | NO   | PRI | NULL    |       |
| First_name      | varchar(50)  | YES  |     | NULL    |       |
| Last_name       | varchar(50)  | YES  |     | NULL    |       |
| Email           | varchar(100) | YES  |     | NULL    |       |
| Birthdate       | date         | YES  |     | NULL    |       |
| Enrollnent_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.023 sec)

mysql> SELECT * FROM Students
    -> WHERE Enrollment_date > '2022-12-31';
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'where clause'
mysql> SELECT *
    -> FROM Students
    -> WHERE Enrollnent_date > '2022-12-31';
Empty set (0.003 sec)

mysql> SELECT *
    -> FROM Students
    -> WHERE YEAR(EnrollmentDate) > 2022;
ERROR 1054 (42S22): Unknown column 'EnrollmentDate' in 'where clause'
mysql> FROM Students
    -> ^c
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM Students
^c' at line 1
mysql> SELECT * FROM Students
    -> WHERE YEAR(Enrollment_date)>2022;
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'where clause'
mysql> SELECT *
    -> FROM Students
    -> WHERE YEAR(Enrollment_date) > 2022;
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'where clause'
mysql> SELECT *
    -> FROM Students
    -> WHERE YEAR(Enrollnent_date) > 2022;
Empty set (0.001 sec)

mysql> SELECT *
    -> FROM Students
    -> WHERE Enrollnent_date > '2022-12-31';
Empty set (0.000 sec)

mysql> SELECT c.*
    -> FROM Courses c
    -> JOIN Departments d
    -> ON c.DepartmentID = d.DepartmentID
    -> WHERE d.DepartmentName = 'Mathematics'
    -> LIMIT 5;
ERROR 1054 (42S22): Unknown column 'd.DepartmentName' in 'where clause'
mysql> SELECT c.*
    -> FROM Courses c
    -> JOIN Departments d
    -> ON c.Department_id = d.Department_id
    -> WHERE d.Department_name = 'Mathematics'
    -> LIMIT 5;
Empty set (0.003 sec)

mysql> SELECT * FROM Departments;
+---------------+------------------------+
| Department_id | Department_name        |
+---------------+------------------------+
|             1 | Computer Science       |
|             2 | Information Technology |
|             3 | Data Science           |
|             4 | Electronics            |
|             5 | Mechanical Engineering |
+---------------+------------------------+
5 rows in set (0.001 sec)

mysql> SELECT Course_id, COUNT(Student_id) AS StudentCount
    -> FROM Enrollments
    -> GROUP BY Course_id
    -> HAVING COUNT(Student_id)> 5;
Empty set (0.006 sec)

mysql> SELECT s.Student
    -> ^C
mysql> ^C
mysql> SELECT s.Student_id, s.Student_name
    -> FROM Students s
    -> JOIN Enrollments e ON s.Student_id = e.Student_id
    -> JOIN Courses c ON e.Course_id = c.Course_id
    -> WHERE c.Customer_name IN ('Introduction to SQL', 'Data Structures')
    -> GROUP BY s.Student_id, s.Student_name 
    -> HAVING COUNT(DISTINCT c.Course_name) = 2;
ERROR 1054 (42S22): Unknown column 's.Student_name' in 'field list'
mysql> SELECT s.Student_id
    -> FROM Students s
    -> JOIN Enrollments e ON s.Student_id = e.Student_id
    -> JOIN Courses c ON e.Course_id = c.Course_id
    -> WHERE c.Course_name IN ('Introduction to SQL', 'Data Structures')
    -> GROUP BY s.Student_id
    -> HAVING COUNT(DISTINCT c.Course_name) = 2;
Empty set (0.004 sec)

mysql> SELECT DISTINCT s.Student_id
    -> FROM Students s
    -> JOIN Enrollments e ON s.Student_id = e.Student_id
    -> JOIN Courses c ON e.Course_id = c.Course_id
    -> WHERE c.Course_name IN ('Introduction to SQL', 'Data Structures');
+------------+
| Student_id |
+------------+
|          1 |
|          2 |
+------------+
2 rows in set (0.001 sec)

mysql> SELECT AVG(Credits) AS Average_Credits 
    -> FROM
    -> Courses;
+-----------------+
| Average_Credits |
+-----------------+
|          3.4000 |
+-----------------+
1 row in set (0.004 sec)

mysql> SELECT MAX(Salary)
    -> FROM Instructors
    -> WHERE Department_id = 1;
ERROR 1054 (42S22): Unknown column 'Salary' in 'field list'
mysql> SELECT MAX(Salary) AS Max_salary
    -> FROM Instructors
    -> WHERE Department_name = 'Computer Science';
ERROR 1054 (42S22): Unknown column 'Salary' in 'field list'
mysql> DESC Instructors;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Instructor_id | int          | NO   | PRI | NULL    |       |
| First_name    | varchar(50)  | YES  |     | NULL    |       |
| Last_name     | varchar(50)  | YES  |     | NULL    |       |
| Email         | varchar(100) | YES  |     | NULL    |       |
| Department_id | int          | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
5 rows in set (0.003 sec)

mysql> DESC Departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Department_id   | int          | NO   | PRI | NULL    |       |
| Department_name | varchar(100) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
2 rows in set (0.002 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_student_db |
+----------------------+
| Courses              |
| Departments          |
| Enrollments          |
| Instructors          |
| Students             |
+----------------------+
5 rows in set (0.001 sec)

mysql> ALTER TABLE Instructors
    -> ADD Salary DECIMAL(10,2);
Query OK, 0 rows affected (0.020 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT MAX(i.Salary) AS Max_Salary
    -> FROM Instructors i
    -> JOIN Departments d
    -> ON i.Department_id = d.Department_id
    -> WHERE d.Department_name = 'Computer Science';
+------------+
| Max_Salary |
+------------+
|       NULL |
+------------+
1 row in set (0.003 sec)

mysql> SELECT d.Department_name,
    -> COUNT(s.Student_id) AS Student_Count
    -> FROM Departments d
    -> LEFT JOIN Students s
    -> ON d.Department_id = s.Department_id
    -> GROUP BY d.Department_id, d.Department_name
    -> ;
ERROR 1054 (42S22): Unknown column 's.Department_id' in 'on clause'
mysql> DESC Students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Student_id      | int          | NO   | PRI | NULL    |       |
| First_name      | varchar(50)  | YES  |     | NULL    |       |
| Last_name       | varchar(50)  | YES  |     | NULL    |       |
| Email           | varchar(100) | YES  |     | NULL    |       |
| Birthdate       | date         | YES  |     | NULL    |       |
| Enrollnent_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.002 sec)

mysql> DESC Courses;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Course_id     | int          | NO   | PRI | NULL    |       |
| Course_name   | varchar(100) | YES  |     | NULL    |       |
| Department_id | int          | YES  |     | NULL    |       |
| Credits       | int          | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.002 sec)

mysql> SELECT d.Department_name,
    -> COUNT(DISTINCT e.Student_id) AS Student_Count
    -> FROM Departments d
    -> JOIN Courses c
    ->  ON d.Department_id = c.Department_id
    -> JOIN Enrollments e
    -> ON c.Course_id = e.Course_id
    -> GROUP BY d.Department_id, d.Department_name;
+------------------------+---------------+
| Department_name        | Student_Count |
+------------------------+---------------+
| Computer Science       |             2 |
| Information Technology |             1 |
| Data Science           |             2 |
+------------------------+---------------+
3 rows in set (0.002 sec)

mysql> SELECT s.Student_id,
    -> s.First_name,
    -> s.Last_name,
    -> c.Course_id,
    -> c.Course_name
    -> FROM Students s
    -> INNER JOIN Enrollments e
    ->  ON s.Student_id = e.Student_id
    -> INNER JOIN Courses c
    -> ON e.Course_id = c.Course_id;
+------------+------------+-----------+-----------+---------------------+
| Student_id | First_name | Last_name | Course_id | Course_name         |
+------------+------------+-----------+-----------+---------------------+
|          1 | Rahul      | Sharma    |       101 | Introduction to SQL |
|          2 | Priya      | Patel     |       102 | Data Structures     |
|          3 | Amit       | Kumar     |       103 | Database Management |
|          4 | Neha       | Joshi     |       104 | Python Programming  |
|          5 | Riya       | Mehta     |       105 | Web Development     |
+------------+------------+-----------+-----------+---------------------+
5 rows in set (0.001 sec)

mysql> SELECT DISTINCT s.Student_id,
    ->  s.First_name,
    ->  s.Last_name
    -> FROM Students s
    -> JOIN Enrollments e
    -> ON s.Student_id = e.Student_id
    -> WHERE e.Course_id IN (
    -> SELECT Course_id
    -> FROM Enrollments
    -> GROUP BY Course_id
    -> HAVING COUNT(Student_id) > 10
    -> );
Empty set (0.004 sec)

mysql> SELECT Student_id,
    -> First_name,
    -> Last_name,
    -> YEAR(Enrollnent_date) AS Enrollment_year
    -> FROM Students;
+------------+------------+-----------+-----------------+
| Student_id | First_name | Last_name | Enrollment_year |
+------------+------------+-----------+-----------------+
|          1 | Rahul      | Sharma    |            2022 |
|          2 | Priya      | Patel     |            2022 |
|          3 | Amit       | Kumar     |            2022 |
|          4 | Neha       | Joshi     |            2022 |
|          5 | Riya       | Mehta     |            2022 |
+------------+------------+-----------+-----------------+
5 rows in set (0.001 sec)

mysql> SELECT CONCAT(FirstName, ' ', LastName) AS InstructorName
    -> FROM Instructors;
ERROR 1054 (42S22): Unknown column 'FirstName' in 'field list'
mysql> SELECT CONCAT(First_name, '', Last_name) AS Full_name
    -> FROM Instructor;
ERROR 1146 (42S02): Table 'student_db.instructor' doesn't exist
mysql> SELECT CONCAT(First_name, '', Last_name) AS Full_name
    -> FROM Instructors;
+------------+
| Full_name  |
+------------+
| JohnSmith  |
| SarahPatel |
| DavidKumar |
| PriyaShah  |
| AmitMehta  |
+------------+
5 rows in set (0.002 sec)

mysql> SELECT Course_id,
    -> COUNT (Student_id) OVER (ORDER BY course_id) AS RunningTotal
    -> FROM enrollments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'OVER (ORDER BY course_id) AS RunningTotal
FROM enrollments' at line 2
mysql> SELECT Course_id,
    ->        COUNT(Student_id) OVER (ORDER BY course_id) AS RunningTotal
    -> FROM enrollments;
+-----------+--------------+
| Course_id | RunningTotal |
+-----------+--------------+
|       101 |            1 |
|       102 |            2 |
|       103 |            3 |
|       104 |            4 |
|       105 |            5 |
+-----------+--------------+
5 rows in set (0.003 sec)

mysql> SELECT Student_id,
    -> CASE 
    -> WHEN Enrollment_date <= DATE_SUB(CURDATE(), INTERVAL 4 YEAR) THEN 'Senior'
    -> ELSE 'Junior'
    -> END AS Status
    -> FROM Students;
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'field list'
mysql> SELECT Student_id,
    -> CASE
    -> WHEN <actual_date_column> <= DATE_SUB(CURDATE(), INTERVAL 4 YEAR) THEN 'Senior'
    -> ELSE 'Junior'
    -> END AS Status
    -> FROM Students;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '<actual_date_column> <= DATE_SUB(CURDATE(), INTERVAL 4 YEAR) THEN 'Senior'
ELSE ' at line 3
mysql> SELECT Student_id,
    -> CASE
    -> WHEN enroll_date <= DATE_SUB(CURDATE(), INTERVAL 4 YEAR) THEN 'Senior'
    -> ELSE 'Junior'
    -> END AS Status
    -> FROM Students;
ERROR 1054 (42S22): Unknown column 'enroll_date' in 'field list'
mysql> SELECT Student_id,
    -> CASE
    -> WHEN Enrollment_date <= DATE_SUB(CURDATE(), INTERVAL 4 YEAR) THEN 'Senior'
    -> ELSE 'Junior'
    -> END AS Status
    -> FROM Students;
ERROR 1054 (42S22): Unknown column 'Enrollment_date' in 'field list'
mysql> DESC Students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Student_id      | int          | NO   | PRI | NULL    |       |
| First_name      | varchar(50)  | YES  |     | NULL    |       |
| Last_name       | varchar(50)  | YES  |     | NULL    |       |
| Email           | varchar(100) | YES  |     | NULL    |       |
| Birthdate       | date         | YES  |     | NULL    |       |
| Enrollnent_date | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.002 sec)

mysql> SELECT Student_id,
    -> CASE
    -> WHEN Enrollnent_date <= DATE_SUB(CURDATE(), INTERVAL 4 YEAR) THEN 'Senior'
    -> ELSE 'Junior'
    -> END AS Status
    -> FROM Students;
+------------+--------+
| Student_id | Status |
+------------+--------+
|          1 | Senior |
|          2 | Senior |
|          3 | Senior |
|          4 | Senior |
|          5 | Senior |
+------------+--------+
5 rows in set (0.001 sec)

mysql> 
