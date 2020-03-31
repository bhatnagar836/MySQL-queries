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

mysql> use mysql
Database changed
mysql> select * from employee;
ERROR 1146 (42S02): Table 'mysql.employee' doesn't exist
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

mysql> select * from department;
+--------+-----------+----------+
| deptid | dname     | location |
+--------+-----------+----------+
|     10 | sales     | Mumbai   |
|     20 | marketing | Chennai  |
|     30 | finance   | Banglore |
+--------+-----------+----------+
3 rows in set (0.00 sec)

mysql> select ename , salary from employees where ename='sonali';
+--------+--------+
| ename  | salary |
+--------+--------+
| sonali |  50000 |
+--------+--------+
1 row in set (0.04 sec)


mysql> select ename , desgnation from employees where desgnation= 'developer' or desgnation='ananlyst';
+--------+------------+
| ename  | desgnation |
+--------+------------+
| sonali | developer  |
+--------+------------+
1 row in set (0.00 sec)

mysql> select ename , desgnation from employees where desgnation= 'developer' or desgnation='analyst';
+--------+------------+
| ename  | desgnation |
+--------+------------+
| sonali | developer  |
| jayant | analyst    |
+--------+------------+
2 rows in set (0.00 sec)

mysql> alter table employees alter desgnation rename to designation;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rename to designation' at line 1
mysql> alter table employees rename desgnation to designation;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to designation' at line 1
mysql> alter table employees change desgnation to designation;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to designation' at line 1
mysql> alter table employees change desgnation  designation;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql>
mysql>
mysql> alter table employees change desgnation  designation int;
ERROR 1366 (HY000): Incorrect integer value: 'developer' for column 'designation' at row 1
mysql> alter table employees change desgnation  designation varchar(40);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employees;
+------+----------+--------+--------+-------------+-------+------------+--------+
| eid  | ename    | salary | deptid | designation | mgrid | commission | gender |
+------+----------+--------+--------+-------------+-------+------------+--------+
|    3 | sonali   |  50000 |     20 | developer   |     1 |       5000 | f      |
|    5 | jayant   |  30000 |     30 | analyst     |     2 |       2000 | m      |
|    6 | abhinav  |  70000 |     20 | trainer     |     1 |       4000 | m      |
|    8 | rashmita |  15000 |     20 | HRhead      |     1 |       6000 | f      |
|    9 | neha     |  67000 |     20 | trainer     |     2 |      12000 | f      |
+------+----------+--------+--------+-------------+-------+------------+--------+
5 rows in set (0.00 sec)

mysql> select ename , designation from employees where designation in ('developer', 'analyst');
+--------+-------------+
| ename  | designation |
+--------+-------------+
| sonali | developer   |
| jayant | analyst     |
+--------+-------------+
2 rows in set (0.03 sec)

mysql> select ename, deptid from employees where deptid in (10,20);
+----------+--------+
| ename    | deptid |
+----------+--------+
| sonali   |     20 |
| abhinav  |     20 |
| rashmita |     20 |
| neha     |     20 |
+----------+--------+
4 rows in set (0.00 sec)

mysql> select ename, deptid from employees where deptid in (10,20) and salary>30000;
+---------+--------+
| ename   | deptid |
+---------+--------+
| sonali  |     20 |
| abhinav |     20 |
| neha    |     20 |
+---------+--------+
3 rows in set (0.02 sec)

mysql> select ename, deptid , salary from employees where deptid in (10,20) and salary>30000;
+---------+--------+--------+
| ename   | deptid | salary |
+---------+--------+--------+
| sonali  |     20 |  50000 |
| abhinav |     20 |  70000 |
| neha    |     20 |  67000 |
+---------+--------+--------+
3 rows in set (0.00 sec)

mysql> select * from employees;
+------+----------+--------+--------+-------------+-------+------------+--------+
| eid  | ename    | salary | deptid | designation | mgrid | commission | gender |
+------+----------+--------+--------+-------------+-------+------------+--------+
|    3 | sonali   |  50000 |     20 | developer   |     1 |       5000 | f      |
|    5 | jayant   |  30000 |     30 | analyst     |     2 |       2000 | m      |
|    6 | abhinav  |  70000 |     20 | trainer     |     1 |       4000 | m      |
|    8 | rashmita |  15000 |     20 | HRhead      |     1 |       6000 | f      |
|    9 | neha     |  67000 |     20 | trainer     |     2 |      12000 | f      |
+------+----------+--------+--------+-------------+-------+------------+--------+
5 rows in set (0.00 sec)

mysql> select ename, salary from employees where salary between 30000 and 70000;
+---------+--------+
| ename   | salary |
+---------+--------+
| sonali  |  50000 |
| jayant  |  30000 |
| abhinav |  70000 |
| neha    |  67000 |
+---------+--------+
4 rows in set (0.04 sec)

mysql> select ename, from employees where ename like 's%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from employees where ename like 's%'' at line 1
mysql> select ename from employees where ename like 's%';
+--------+
| ename  |
+--------+
| sonali |
+--------+
1 row in set (0.04 sec)

mysql> select ename from employees where ename like '%i'or '%v';
+--------+
| ename  |
+--------+
| sonali |
+--------+
1 row in set, 1 warning (0.05 sec)

mysql> select ename from employees where ename like '%i'or '%a';
+--------+
| ename  |
+--------+
| sonali |
+--------+
1 row in set, 1 warning (0.00 sec)

mysql> select ename from employees where ename like '%a%';
+----------+
| ename    |
+----------+
| sonali   |
| jayant   |
| abhinav  |
| rashmita |
| neha     |
+----------+
5 rows in set (0.00 sec)

mysql> select ename from employees where ename like '%a%a%';
+----------+
| ename    |
+----------+
| jayant   |
| abhinav  |
| rashmita |
+----------+
3 rows in set (0.00 sec)

mysql> select ename from employees where ename like '______';
+--------+
| ename  |
+--------+
| sonali |
| jayant |
+--------+
2 rows in set (0.00 sec)


mysql> select ename from employees where ename like '_a%';
+----------+
| ename    |
+----------+
| jayant   |
| rashmita |
+----------+
2 rows in set (0.00 sec)

mysql> select ename, designation from employees where designation in ('developer', 'trainer') and ename like 's%' or like 'n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 'n%'' at line 1
mysql> select ename, designation from employees where designation in ('developer', 'trainer') and ename like 's%' or ename like 'n%';
+--------+-------------+
| ename  | designation |
+--------+-------------+
| sonali | developer   |
| neha   | trainer     |
+--------+-------------+
2 rows in set (0.00 sec)

mysql>