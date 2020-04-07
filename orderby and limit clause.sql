mysql> select * from employees;
+------+----------+--------+--------+-------------+-------+------------+--------+
| eid  | ename    | salary | deptid | designation | mgrid | commission | gender |
+------+----------+--------+--------+-------------+-------+------------+--------+
|    3 | sonali   |  50000 |     20 | developer   |     1 |       5000 | f      |
|    5 | jayant   |  30000 |     30 | analyst     |     2 |       2000 | m      |
|    6 | abhinav  |  70000 |     20 | trainer     |     1 |       4000 | m      |
|    8 | rashmita |  15000 |     20 | HRhead      |     1 |       6000 | f      |
|    9 | neha     |  67000 |     20 | trainer     |     2 |      12000 | f      |
|    1 | nikkhil  | 120000 |     10 | manager     |  NULL |      30000 | m      |
|    2 | nitin    |  80000 |     10 | manager     |  NULL |      15000 | m      |
|    4 | anshita  |  60000 |     20 | analyst     |     2 |       NULL | f      |
|   11 | wasim    |  34000 |     30 | assistant   |     1 |       NULL | m      |
|   10 | rajnish  |  40000 |     20 | tecnician   |     1 |          0 | m      |
|    7 | vaibhav  |  40000 |     30 | developer   |     1 |       NULL | m      |
+------+----------+--------+--------+-------------+-------+------------+--------+
11 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| jayant   |  30000 |
| wasim    |  34000 |
| rajnish  |  40000 |
| vaibhav  |  40000 |
| sonali   |  50000 |
| anshita  |  60000 |
| neha     |  67000 |
| abhinav  |  70000 |
| nitin    |  80000 |
| nikkhil  | 120000 |
+----------+--------+
11 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary desc;
+----------+--------+
| ename    | salary |
+----------+--------+
| nikkhil  | 120000 |
| nitin    |  80000 |
| abhinav  |  70000 |
| neha     |  67000 |
| anshita  |  60000 |
| sonali   |  50000 |
| rajnish  |  40000 |
| vaibhav  |  40000 |
| wasim    |  34000 |
| jayant   |  30000 |
| rashmita |  15000 |
+----------+--------+
11 rows in set (0.00 sec)

mysql>  select ename, salary, deptid from employees order by ename desc, deptid,  salary;
+----------+--------+--------+
| ename    | salary | deptid |
+----------+--------+--------+
| wasim    |  34000 |     30 |
| vaibhav  |  40000 |     30 |
| sonali   |  50000 |     20 |
| rashmita |  15000 |     20 |
| rajnish  |  40000 |     20 |
| nitin    |  80000 |     10 |
| nikkhil  | 120000 |     10 |
| neha     |  67000 |     20 |
| jayant   |  30000 |     30 |
| anshita  |  60000 |     20 |
| abhinav  |  70000 |     20 |
+----------+--------+--------+
11 rows in set (0.02 sec)

mysql>  select ename, salary, deptid from employees order by ename desc, deptid asc,  salary desc;
+----------+--------+--------+
| ename    | salary | deptid |
+----------+--------+--------+
| wasim    |  34000 |     30 |
| vaibhav  |  40000 |     30 |
| sonali   |  50000 |     20 |
| rashmita |  15000 |     20 |
| rajnish  |  40000 |     20 |
| nitin    |  80000 |     10 |
| nikkhil  | 120000 |     10 |
| neha     |  67000 |     20 |
| jayant   |  30000 |     30 |
| anshita  |  60000 |     20 |
| abhinav  |  70000 |     20 |
+----------+--------+--------+
11 rows in set (0.00 sec)

mysql>  select ename, deptid, salary from employees order by deptid ,  salary ;
+----------+--------+--------+
| ename    | deptid | salary |
+----------+--------+--------+
| nitin    |     10 |  80000 |
| nikkhil  |     10 | 120000 |
| rashmita |     20 |  15000 |
| rajnish  |     20 |  40000 |
| sonali   |     20 |  50000 |
| anshita  |     20 |  60000 |
| neha     |     20 |  67000 |
| abhinav  |     20 |  70000 |
| jayant   |     30 |  30000 |
| wasim    |     30 |  34000 |
| vaibhav  |     30 |  40000 |
+----------+--------+--------+
11 rows in set (0.00 sec)

mysql>  select ename, deptid, salary from employees order by deptid ,  salary desc ;
+----------+--------+--------+
| ename    | deptid | salary |
+----------+--------+--------+
| nikkhil  |     10 | 120000 |
| nitin    |     10 |  80000 |
| abhinav  |     20 |  70000 |
| neha     |     20 |  67000 |
| anshita  |     20 |  60000 |
| sonali   |     20 |  50000 |
| rajnish  |     20 |  40000 |
| rashmita |     20 |  15000 |
| vaibhav  |     30 |  40000 |
| wasim    |     30 |  34000 |
| jayant   |     30 |  30000 |
+----------+--------+--------+
11 rows in set (0.00 sec)

mysql>  select ename, deptid, salary from employees order by deptid desc ,  salary ;
+----------+--------+--------+
| ename    | deptid | salary |
+----------+--------+--------+
| jayant   |     30 |  30000 |
| wasim    |     30 |  34000 |
| vaibhav  |     30 |  40000 |
| rashmita |     20 |  15000 |
| rajnish  |     20 |  40000 |
| sonali   |     20 |  50000 |
| anshita  |     20 |  60000 |
| neha     |     20 |  67000 |
| abhinav  |     20 |  70000 |
| nitin    |     10 |  80000 |
| nikkhil  |     10 | 120000 |
+----------+--------+--------+
11 rows in set (0.00 sec)

mysql> select ename,deptid, salary from employees where deptid=20  order by salary desc;
+----------+--------+--------+
| ename    | deptid | salary |
+----------+--------+--------+
| abhinav  |     20 |  70000 |
| neha     |     20 |  67000 |
| anshita  |     20 |  60000 |
| sonali   |     20 |  50000 |
| rajnish  |     20 |  40000 |
| rashmita |     20 |  15000 |
+----------+--------+--------+
6 rows in set (0.00 sec)

mysql>   select eid, ename, salary from employees where deptid=20 order by salary limit ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql>   select eid, ename, salary from employees where deptid=20 order by salary limit 3;
+------+----------+--------+
| eid  | ename    | salary |
+------+----------+--------+
|    8 | rashmita |  15000 |
|   10 | rajnish  |  40000 |
|    3 | sonali   |  50000 |
+------+----------+--------+
3 rows in set (0.03 sec)

mysql>   select eid, ename, salary from employees where deptid=20 order by salary desc limit 3;
+------+---------+--------+
| eid  | ename   | salary |
+------+---------+--------+
|    6 | abhinav |  70000 |
|    9 | neha    |  67000 |
|    4 | anshita |  60000 |
+------+---------+--------+
3 rows in set (0.00 sec)

mysql>   select eid, ename, salary from employees limit 3;
+------+---------+--------+
| eid  | ename   | salary |
+------+---------+--------+
|    3 | sonali  |  50000 |
|    5 | jayant  |  30000 |
|    6 | abhinav |  70000 |
+------+---------+--------+
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
|    1 | nikkhil  | 120000 |     10 | manager     |  NULL |      30000 | m      |
|    2 | nitin    |  80000 |     10 | manager     |  NULL |      15000 | m      |
|    4 | anshita  |  60000 |     20 | analyst     |     2 |       NULL | f      |
|   11 | wasim    |  34000 |     30 | assistant   |     1 |       NULL | m      |
|   10 | rajnish  |  40000 |     20 | tecnician   |     1 |          0 | m      |
|    7 | vaibhav  |  40000 |     30 | developer   |     1 |       NULL | m      |
+------+----------+--------+--------+-------------+-------+------------+--------+
11 rows in set (0.00 sec)

mysql>   select eid, ename, salary from employees limit 3,7;
+------+----------+--------+
| eid  | ename    | salary |
+------+----------+--------+
|    8 | rashmita |  15000 |
|    9 | neha     |  67000 |
|    1 | nikkhil  | 120000 |
|    2 | nitin    |  80000 |
|    4 | anshita  |  60000 |
|   11 | wasim    |  34000 |
|   10 | rajnish  |  40000 |
+------+----------+--------+
7 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary limit 3;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| jayant   |  30000 |
| wasim    |  34000 |
+----------+--------+
3 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary ;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| jayant   |  30000 |
| wasim    |  34000 |
| rajnish  |  40000 |
| vaibhav  |  40000 |
| sonali   |  50000 |
| anshita  |  60000 |
| neha     |  67000 |
| abhinav  |  70000 |
| nitin    |  80000 |
| nikkhil  | 120000 |
+----------+--------+
11 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary limit 2,3;
+---------+--------+
| ename   | salary |
+---------+--------+
| wasim   |  34000 |
| rajnish |  40000 |
| vaibhav |  40000 |
+---------+--------+
3 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary limit 1;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
+----------+--------+
1 row in set (0.00 sec)

mysql> select ename , salary from employees order by salary limit 0,1;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
+----------+--------+
1 row in set (0.00 sec)

mysql> select ename , salary from employees order by salary limit 0,5;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| jayant   |  30000 |
| wasim    |  34000 |
| rajnish  |  40000 |
| vaibhav  |  40000 |
+----------+--------+
5 rows in set (0.00 sec)

mysql> select ename , salary from employees order by salary limit 5;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| jayant   |  30000 |
| wasim    |  34000 |
| rajnish  |  40000 |
| vaibhav  |  40000 |
+----------+--------+
5 rows in set (0.00 sec)

mysql> select ename, salary from employees where deptid=20 order by salary desc limit 1;
+---------+--------+
| ename   | salary |
+---------+--------+
| abhinav |  70000 |
+---------+--------+
1 row in set (0.00 sec)

mysql> select ename, salary from employees where deptid=20 order by salary desc;
+----------+--------+
| ename    | salary |
+----------+--------+
| abhinav  |  70000 |
| neha     |  67000 |
| anshita  |  60000 |
| sonali   |  50000 |
| rajnish  |  40000 |
| rashmita |  15000 |
+----------+--------+
6 rows in set (0.00 sec)

mysql>  select ename , salary from employees where deptid=20 order by asc limit 1,2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'asc limit 1,2' at line 1
mysql>  select ename , salary from employees where deptid=20 order by salary asc limit 1,2;
+---------+--------+
| ename   | salary |
+---------+--------+
| rajnish |  40000 |
| sonali  |  50000 |
+---------+--------+
2 rows in set (0.00 sec)

mysql>  select ename , salary from employees where deptid=20 order by salary asc limit 2,2;
+---------+--------+
| ename   | salary |
+---------+--------+
| sonali  |  50000 |
| anshita |  60000 |
+---------+--------+
2 rows in set (0.00 sec)

mysql>  select ename , salary from employees where deptid=20 order by salary asc limit 2;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| rajnish  |  40000 |
+----------+--------+
2 rows in set (0.00 sec)

mysql>  select ename , salary from employees where deptid=20 order by salary ;
+----------+--------+
| ename    | salary |
+----------+--------+
| rashmita |  15000 |
| rajnish  |  40000 |
| sonali   |  50000 |
| anshita  |  60000 |
| neha     |  67000 |
| abhinav  |  70000 |
+----------+--------+
6 rows in set (0.00 sec)

mysql>  select ename , salary from employees where deptid=20 order by salary asc limit 1, 1;
+---------+--------+
| ename   | salary |
+---------+--------+
| rajnish |  40000 |
+---------+--------+
1 row in set (0.00 sec)

mysql>  select ename , salary from employees where deptid=20 order by salary asc limit 2, 1;
+--------+--------+
| ename  | salary |
+--------+--------+
| sonali |  50000 |
+--------+--------+
1 row in set (0.00 sec)