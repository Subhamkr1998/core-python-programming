Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23
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
9 rows in set (0.00 sec)

mysql> use company;
Database changed
mysql> select * from employee;
+--------+------------+-----------+------+---------------------------+
| emp_id | first_name | last_name | age  | email                     |
+--------+------------+-----------+------+---------------------------+
|      1 | John       | Doe       |   30 | john.doe@example.com      |
|      2 | Jane       | Smith     |   36 | jane.smith@example.com    |
|      3 | Alice      | Johnson   |   43 | alice.johnson@example.com |
|      4 | Bob        | Williams  |   29 | bob.williams@example.com  |
|      5 | Michael    | Brown     |   51 | michael.brown@example.com |
|      6 | Emily      | Davis     |   32 | emily.davis@example.com   |
|      7 | David      | Miller    |   40 | david.miller@example.com  |
|      8 | Sophia     | Wilson    |   28 | sophia.wilson@example.com |
|      9 | James      | Moore     |   34 | james.moore@example.com   |
|     10 | Olivia     | Taylor    |   24 | olivia.taylor@example.com |
+--------+------------+-----------+------+---------------------------+
10 rows in set (0.00 sec)

mysql> SELECT first_name, last_name    -> FROM Employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM Employee' at line 1
mysql> select first_name, last_name from employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Jane       | Smith     |
| Alice      | Johnson   |
| Bob        | Williams  |
| Michael    | Brown     |
| Emily      | Davis     |
| David      | Miller    |
| Sophia     | Wilson    |
| James      | Moore     |
| Olivia     | Taylor    |
+------------+-----------+
10 rows in set (0.00 sec)

mysql> select first_name, last_name, age from employee where age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   36 |
| Alice      | Johnson   |   43 |
| Michael    | Brown     |   51 |
| Emily      | Davis     |   32 |
| David      | Miller    |   40 |
| James      | Moore     |   34 |
+------------+-----------+------+
6 rows in set (0.00 sec)

mysql> update employee set age = age + 1 where age > 25;
Query OK, 9 rows affected (0.10 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> select * from employee;
+--------+------------+-----------+------+---------------------------+
| emp_id | first_name | last_name | age  | email                     |
+--------+------------+-----------+------+---------------------------+
|      1 | John       | Doe       |   31 | john.doe@example.com      |
|      2 | Jane       | Smith     |   37 | jane.smith@example.com    |
|      3 | Alice      | Johnson   |   44 | alice.johnson@example.com |
|      4 | Bob        | Williams  |   30 | bob.williams@example.com  |
|      5 | Michael    | Brown     |   52 | michael.brown@example.com |
|      6 | Emily      | Davis     |   33 | emily.davis@example.com   |
|      7 | David      | Miller    |   41 | david.miller@example.com  |
|      8 | Sophia     | Wilson    |   29 | sophia.wilson@example.com |
|      9 | James      | Moore     |   35 | james.moore@example.com   |
|     10 | Olivia     | Taylor    |   24 | olivia.taylor@example.com |
+--------+------------+-----------+------+---------------------------+
10 rows in set (0.00 sec)

mysql> select first_name, last_name, age from employee;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| John       | Doe       |   31 |
| Jane       | Smith     |   37 |
| Alice      | Johnson   |   44 |
| Bob        | Williams  |   30 |
| Michael    | Brown     |   52 |
| Emily      | Davis     |   33 |
| David      | Miller    |   41 |
| Sophia     | Wilson    |   29 |
| James      | Moore     |   35 |
| Olivia     | Taylor    |   24 |
+------------+-----------+------+
10 rows in set (0.00 sec)

mysql>