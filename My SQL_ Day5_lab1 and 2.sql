Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| college                 |
| company                 |
| ecommerce               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.00 sec)

mysql> use college;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| customer          |
| student           |
+-------------------+
2 rows in set (0.00 sec)

mysql> select * from student;
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| StudentID | FirstName | LastName | DateOfBirth         | Gender | Email                    | Phone      | Total_Marks |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| S101      | Arjun     | Sharma   | 2000-10-10 00:00:00 | M      | arjun.sharma@example.com | 9878457945 | 200         |
| S102      | Aarti     | Patel    | 2013-08-08 00:00:00 | F      | aarti.patel@example.com  | 9977457745 | 240         |
| S103      | Ravi      | Singh    | 2011-09-08 00:00:00 | M      | ravi.singh@example.com   | 9876457845 | 450         |
| S104      | Priya     | Reddy    | 2011-07-08 00:00:00 | F      | priya.reddy@india.com    | 9876457845 | 500         |
| S105      | Vikram    | Mehta    | 2011-06-05 00:00:00 | M      | vikram.mehta@example.com | 9876457845 | 230         |
| S106      | John      | Doe      | 2022-12-01 00:00:00 | M      | john@gmail.com           | 993377881  | 460         |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM student ORDER BY LastName ASC;
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| StudentID | FirstName | LastName | DateOfBirth         | Gender | Email                    | Phone      | Total_Marks |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| S106      | John      | Doe      | 2022-12-01 00:00:00 | M      | john@gmail.com           | 993377881  | 460         |
| S105      | Vikram    | Mehta    | 2011-06-05 00:00:00 | M      | vikram.mehta@example.com | 9876457845 | 230         |
| S102      | Aarti     | Patel    | 2013-08-08 00:00:00 | F      | aarti.patel@example.com  | 9977457745 | 240         |
| S104      | Priya     | Reddy    | 2011-07-08 00:00:00 | F      | priya.reddy@india.com    | 9876457845 | 500         |
| S101      | Arjun     | Sharma   | 2000-10-10 00:00:00 | M      | arjun.sharma@example.com | 9878457945 | 200         |
| S103      | Ravi      | Singh    | 2011-09-08 00:00:00 | M      | ravi.singh@example.com   | 9876457845 | 450         |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM student
    ->     -> ORDER BY LastName ASC, FirstName ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> ORDER BY LastName ASC, FirstName ASC' at line 2
mysql> SELECT * FROM student ORDER BY LastName ASC, FirstName ASC;
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| StudentID | FirstName | LastName | DateOfBirth         | Gender | Email                    | Phone      | Total_Marks |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| S106      | John      | Doe      | 2022-12-01 00:00:00 | M      | john@gmail.com           | 993377881  | 460         |
| S105      | Vikram    | Mehta    | 2011-06-05 00:00:00 | M      | vikram.mehta@example.com | 9876457845 | 230         |
| S102      | Aarti     | Patel    | 2013-08-08 00:00:00 | F      | aarti.patel@example.com  | 9977457745 | 240         |
| S104      | Priya     | Reddy    | 2011-07-08 00:00:00 | F      | priya.reddy@india.com    | 9876457845 | 500         |
| S101      | Arjun     | Sharma   | 2000-10-10 00:00:00 | M      | arjun.sharma@example.com | 9878457945 | 200         |
| S103      | Ravi      | Singh    | 2011-09-08 00:00:00 | M      | ravi.singh@example.com   | 9876457845 | 450         |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
6 rows in set (0.00 sec)

mysql> select * from student;
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| StudentID | FirstName | LastName | DateOfBirth         | Gender | Email                    | Phone      | Total_Marks |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
| S101      | Arjun     | Sharma   | 2000-10-10 00:00:00 | M      | arjun.sharma@example.com | 9878457945 | 200         |
| S102      | Aarti     | Patel    | 2013-08-08 00:00:00 | F      | aarti.patel@example.com  | 9977457745 | 240         |
| S103      | Ravi      | Singh    | 2011-09-08 00:00:00 | M      | ravi.singh@example.com   | 9876457845 | 450         |
| S104      | Priya     | Reddy    | 2011-07-08 00:00:00 | F      | priya.reddy@india.com    | 9876457845 | 500         |
| S105      | Vikram    | Mehta    | 2011-06-05 00:00:00 | M      | vikram.mehta@example.com | 9876457845 | 230         |
| S106      | John      | Doe      | 2022-12-01 00:00:00 | M      | john@gmail.com           | 993377881  | 460         |
+-----------+-----------+----------+---------------------+--------+--------------------------+------------+-------------+
6 rows in set (0.00 sec)

mysql> select Gender, count(*) as Numberofstudents from student Group by Gender;
+--------+------------------+
| Gender | Numberofstudents |
+--------+------------------+
| M      |                4 |
| F      |                2 |
+--------+------------------+
2 rows in set (0.00 sec)

mysql>