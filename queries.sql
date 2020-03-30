
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> use mysql;
Database changed
mysql> create table employees (eid int, ename varchar(50), salary int, deptid int, desgnation varchar(40), mgrid int, commission int, gender varchar(2));
Query OK, 0 rows affected (1.38 sec)

mysql> insert into employees values (3, 'sonali', 50000, 20, 'developer', 1, 5000, 'f');
Query OK, 1 row affected (0.18 sec)

mysql> insert into employees values (5, 'jayant', 30000, 30, 'analyst', 2, 2000, 'm');
Query OK, 1 row affected (0.15 sec)

mysql> insert into employees values (6, 'abhinav', 70000, 20, 'trainer', 1, 4000, 'm');
Query OK, 1 row affected (0.06 sec)

mysql> insert into employees values (8, 'rashmita', 15000, 20, 'HRhead', 1, 6000, 'f');
Query OK, 1 row affected (0.16 sec)

mysql> insert into employees values (9, 'neha', 67000, 20, 'trainer', 2, 12000, 'f');
Query OK, 1 row affected (0.13 sec)

mysql> insert into employees values (1, 'nikhil', 120000, 10, 'manager', , 30000, 'm');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', 30000, 'm')' at line 1
mysql> show table employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employees' at line 1
mysql> desc employees;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| eid        | int         | YES  |     | NULL    |       |
| ename      | varchar(50) | YES  |     | NULL    |       |
| salary     | int         | YES  |     | NULL    |       |
| deptid     | int         | YES  |     | NULL    |       |
| desgnation | varchar(40) | YES  |     | NULL    |       |
| mgrid      | int         | YES  |     | NULL    |       |
| commission | int         | YES  |     | NULL    |       |
| gender     | varchar(2)  | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> select * from employees;
+------+----------+--------+--------+------------+-------+------------+--------+
| eid  | ename    | salary | deptid | desgnation | mgrid | commission | gender |
+------+----------+--------+--------+------------+-------+------------+--------+
|    3 | sonali   |  50000 |     20 | developer  |     1 |       5000 | f      |
|    5 | jayant   |  30000 |     30 | analyst    |     2 |       2000 | m      |
|    6 | abhinav  |  70000 |     20 | trainer    |     1 |       4000 | m      |
|    8 | rashmita |  15000 |     20 | HRhead     |     1 |       6000 | f      |
|    9 | neha     |  67000 |     20 | trainer    |     2 |      12000 | f      |
+------+----------+--------+--------+------------+-------+------------+--------+
5 rows in set (0.00 sec)

mysql> create table employees (deptid int, dname varchar(40), location varchar(40));
ERROR 1050 (42S01): Table 'employees' already exists
mysql> create table department (deptid int, dname varchar(40), location varchar(40));
Query OK, 0 rows affected (0.54 sec)

mysql> insert into department values (10, 'sales', 'Mumbai');
Query OK, 1 row affected (0.06 sec)

mysql> insert into department values (20, 'marketing', 'Chennai');
Query OK, 1 row affected (0.17 sec)

mysql> insert into department values (30, 'finance', 'Banglore');
Query OK, 1 row affected (0.09 sec)

mysql> select * from department;
+--------+-----------+----------+
| deptid | dname     | location |
+--------+-----------+----------+
|     10 | sales     | Mumbai   |
|     20 | marketing | Chennai  |
|     30 | finance   | Banglore |
+--------+-----------+----------+
3 rows in set (0.00 sec)

