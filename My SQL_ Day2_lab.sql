Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.14 sec)

mysql> USE StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     DateOfBirth DATE,
    ->     Gender VARCHAR(10),
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.68 sec)

mysql> CREATE TABLE Course (
    ->     CourseID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseTitle VARCHAR(100),
    ->     Credits INT
    -> );
Query OK, 0 rows affected (0.52 sec)

mysql> CREATE TABLE Instructor (
    ->     InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50),
    ->     Email VARCHAR(100)
    -> );
Query OK, 0 rows affected (1.02 sec)

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    ->     EnrollmentDate DATE,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    -> );
Query OK, 0 rows affected (0.79 sec)

mysql> CREATE TABLE Score (
    ->     ScoreID INT AUTO_INCREMENT PRIMARY KEY,
    ->     CourseID INT,
    ->     StudentID INT,
    ->     DateOfExam DATE,
    ->     CreditObtained INT,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (1.37 sec)

mysql> CREATE TABLE Feedback (
    ->     FeedbackID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID INT,
    ->     Date DATE,
    ->     InstructorName VARCHAR(100),
    ->     Feedback TEXT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
    -> );
Query OK, 0 rows affected (0.56 sec)

mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
    -> ('Subham', 'Kumar', '2001-08-02', 'Male', 'subham@example.com', '1234567890'),
    -> ('Satish', 'Kumar', '1994-12-24', 'male', 'satishkr@example.com', '0987654321'),
    -> ('Mohit', 'Shah', '2012-12-08', 'Male', 'moit.shah@example.com', '1122334455'),
    -> ('Pooja', 'Prasad', '1996-06-07', 'Female', 'pooja.prasad@example.com', '6677889900'),
    -> ('Pushpa', 'Prasad', '1994-12-28', 'Female', 'puspa.pr@example.com', '2233445566');
Query OK, 5 rows affected (0.18 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course (CourseTitle, Credits) VALUES
    -> ('Mathematics', 3),
    -> ('Physics', 4),
    -> ('Chemistry', 3),
    -> ('Biology', 3),
    -> ('Computer Science', 4);
Query OK, 5 rows affected (0.11 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Instructor (FirstName, LastName, Email) VALUES
    -> ('Mr. Shyamsunder', 'Prasad', 'shyamsunder@example.com'),
    -> ('Ms. Malti', 'Devi', 'maltidevi@example.com'),
    -> ('Prof. Rajshree', 'Thete', 'rajshree.thete@example.com'),
    -> ('Dr. APJ', 'kalam', 'abdul.kalam@example.com'),
    -> ('Dr. Prakash', 'Jain', 'prakash.jain@example.com');
Query OK, 5 rows affected (0.12 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID) VALUES
    -> ('2023-08-01', 1, 1, 1),
    -> ('2023-08-01', 2, 2, 2),
    -> ('2023-08-01', 3, 3, 3),
    -> ('2023-08-01', 4, 4, 4),
    -> ('2023-08-01', 5, 5, 5);
Query OK, 5 rows affected (0.20 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained) VALUES
    -> (1, 1, '2023-12-15', 3),
    -> (2, 2, '2023-12-16', 4),
    -> (3, 3, '2023-12-17', 3),
    -> (4, 4, '2023-12-18', 3),
    -> (5, 5, '2023-12-19', 4);
Query OK, 5 rows affected (0.13 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback) VALUES
    -> (1, '2023-12-20', 'Mr. Shyamsunder Prasad', 'Excellent teaching!'),
    -> (2, '2023-12-21', 'Ms. Malti Devi', 'Very helpful in understanding the subject.'),
    -> (3, '2023-12-22', 'Prof. Rajshree Thete', 'Good course material, but needs more practical work.'),
    -> (4, '2023-12-23', 'Dr. APJ Abdul Kalam', 'Clear explanations and well-structured lectures.'),
    -> (5, '2023-12-24', 'Dr. Prakash Jain', 'Great insights and engaging classes!');
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+--------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                    | Phone      |
+-----------+-----------+----------+-------------+--------+--------------------------+------------+
|         1 | Subham    | Kumar    | 2001-08-02  | Male   | subham@example.com       | 1234567890 |
|         2 | Satish    | Kumar    | 1994-12-24  | male   | satishkr@example.com     | 0987654321 |
|         3 | Mohit     | Shah     | 2012-12-08  | Male   | moit.shah@example.com    | 1122334455 |
|         4 | Pooja     | Prasad   | 1996-06-07  | Female | pooja.prasad@example.com | 6677889900 |
|         5 | Pushpa    | Prasad   | 1994-12-28  | Female | puspa.pr@example.com     | 2233445566 |
+-----------+-----------+----------+-------------+--------+--------------------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Course;
+----------+------------------+---------+
| CourseID | CourseTitle      | Credits |
+----------+------------------+---------+
|        1 | Mathematics      |       3 |
|        2 | Physics          |       4 |
|        3 | Chemistry        |       3 |
|        4 | Biology          |       3 |
|        5 | Computer Science |       4 |
+----------+------------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Instructor;
+--------------+-----------------+----------+----------------------------+
| InstructorID | FirstName       | LastName | Email                      |
+--------------+-----------------+----------+----------------------------+
|            1 | Mr. Shyamsunder | Prasad   | shyamsunder@example.com    |
|            2 | Ms. Malti       | Devi     | maltidevi@example.com      |
|            3 | Prof. Rajshree  | Thete    | rajshree.thete@example.com |
|            4 | Dr. APJ         | kalam    | abdul.kalam@example.com    |
|            5 | Dr. Prakash     | Jain     | prakash.jain@example.com   |
+--------------+-----------------+----------+----------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2023-08-01     |         1 |        1 |            1 |
|            2 | 2023-08-01     |         2 |        2 |            2 |
|            3 | 2023-08-01     |         3 |        3 |            3 |
|            4 | 2023-08-01     |         4 |        4 |            4 |
|            5 | 2023-08-01     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2023-12-15 |              3 |
|       2 |        2 |         2 | 2023-12-16 |              4 |
|       3 |        3 |         3 | 2023-12-17 |              3 |
|       4 |        4 |         4 | 2023-12-18 |              3 |
|       5 |        5 |         5 | 2023-12-19 |              4 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+------------------------+------------------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName         | Feedback                                             |
+------------+-----------+------------+------------------------+------------------------------------------------------+
|          1 |         1 | 2023-12-20 | Mr. Shyamsunder Prasad | Excellent teaching!                                  |
|          2 |         2 | 2023-12-21 | Ms. Malti Devi         | Very helpful in understanding the subject.           |
|          3 |         3 | 2023-12-22 | Prof. Rajshree Thete   | Excellent teacher and teaching skill! 
|          4 |         4 | 2023-12-23 | Dr. APJ Abdul Kalam    | Clear explanations and well-structured lectures.     |
|          5 |         5 | 2023-12-24 | Dr. Prakash Jain       | Great insights and engaging classes!                 |
+------------+-----------+------------+------------------------+------------------------------------------------------+
5 rows in set (0.00 sec)

mysql>