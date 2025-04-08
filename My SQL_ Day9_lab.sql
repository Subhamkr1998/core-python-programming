
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

mysql> use company;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| departments       |
| employees         |
+-------------------+
2 rows in set (0.00 sec)

mysql> select * from departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | Sales           |
|             2 | Marketing       |
|             3 | Engineering     |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from employees;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|           1 | John Doe      |             1 |
|           2 | Jane Smith    |             2 |
|           3 | Mary Johnson  |             3 |
|           4 | James Brown   |          NULL |
+-------------+---------------+---------------+
4 rows in set (0.00 sec)

mysql> SELECT e.employee_name, d.department_name FROM employees e INNER JOIN departments d ON e.department_id = d.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| John Doe      | Sales           |
| Jane Smith    | Marketing       |
| Mary Johnson  | Engineering     |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql>
mysql> SELECT e.employee_name, d.department_name FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| John Doe      | Sales           |
| Jane Smith    | Marketing       |
| Mary Johnson  | Engineering     |
| James Brown   | NULL            |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql>