CREATE TABLE emp(
    emp_no INT PRIMARY KEY ,
    ename  VARCHAR(20),
    job    VARCHAR(20),
    mgr    INT, 
    hire_date DATE, 
    sal       int,
    comm      INT,
    dept_no   INT
);

CREATE TABLE dept(
    dept_no INT PRIMARY KEY ,
    dname   VARCHAR(20),
    location  VARCHAR(20)
);



ALTER TABLE emp
ADD FOREIGN KEY (dept_no)
references dept(dept_no)
ON DELETE SET NULL;



INSERT INTO emp VALUES(7934 , 'Miller','CLERK' , 7782 ,'1982-01-23',1300,NULL,10);   
INSERT INTO dept VALUES(40,'OPERATION' ,'BOSTON');

UPDATE emp
set dept_no = 20
where emp_no =7566;

delete from emp
where emp_no = 7566;

INSERT INTO dept VALUES(30,'ACCOUNTING' ,'NEW YORK');
INSERT INTO dept VALUES(30,'SALES' ,'CHICAGO');    




SELECT *
FROM emp
WHERE hire_date < ANY (SELECT hire_date from emp WHERE job = 'CLERK');

SELECT ename from emp where emp_no IN (select mgr from emp where ename = 'Smith');

SELECT emp.* , sal*12 "Annual salary"
from emp
where dept_no= 30 and job ='SALESMAN' and sal*12 >14000;

SELECT ename from emp where sal<1100 and job ='CLERK';

SELECT ename , sal, sal*12 "Annual salaery", dept_no
from emp
where dept_no =20 and sal>1100 and sal*12>12000;




select ename from emp where(select emp_id  ,mgr from emp where emp_id = 7698 emp.mgr IN('mgr'));
select ename from emp where(select mgr from emp where mgr = 7698);

select ename from emp where mgr = 7698;
select ename from emp where mgr in (select emp_no from emp where ename='BLAKE');

select max(sal) from emp having emp_no > 7698;

select count(*) from emp where job ='SALESMAN';

SELECT ename ,emp.dept_no , dept.dname from emp ,dept where  emp.dept_no = dept.dept_no;


WHERE hire_date > all (select hire_date from emp where job = 'CLERK');

select ename from emp 
where emp_no in (select mgr from emp where mgr= 7698);
select mgr from emp where mgr= 7698;

select ename from emp where emp_no in (select mgr from emp 
where ename ='Allen'); 

select ename from emp 
where ename like 'A%' and dept_no in(10,20); 

select ename ,  sal , comm
from emp 
where comm like '___';

select ename ,sal, hire_date from emp 
where hire_date like '__81%' and sal>2000;

select * from emp;
 where job like '%MAN';

SELECT * FROM EMp;
 where ename like 'Ad%s%';

select ename , hire_date 
from emp 
where hire_date not like '__81%' and ename like 's%' and hire_date like '__80%';

select ename 
from emp 
where ename not like '%s';

select ename from emp
where ename like any LIKE ANY ('{"S%" , "W%", "B%"}');
0
('{"AAA%", "BBB%", "CCC%"}');

select ename from emp 
where ename like '[a-c]%';

select ename
from emp
where emp;

select hire_date "ritsh bhaiya weds tejaswainy harish"
 from emp;

 describe emp;

describe  kanha;
select * from emp;
select ename,sal 
from emp 
where sal =(select max(sal) from emp 
where sal<>(select max(sal) from emp));

select sum(sal), job
from emp
group by job;

SELECT COUNT(*)  ,dept_no
from emp
group by dept_no;
select * from emp;

select COUNT(*)
from emp 
where dept_no=30;

select avg(sal), dept_no,ename,hire_date from emp
where dept_no = 20
group by dept_no;

select count(*),job,ename
from emp
where ename like'a%'
group by job;

select count(*), sum(sal),ename
from emp
where job='SALESMAN'
group by dept_no;

select ename
from emp
group by dept_no;

select dept_no
from emp
group by dept_no
where ename in(select ename from emp group by ename);

select ename,dept_no from emp
 where dept_no in (select dept_no from emp group by dept_no having count(*)<=3);

 select dept_no
 from emp
 group by dept_no
 having count(*)<=3;

 select ename, dept_no,sal
 from emp
 where sal in(select max(sal) from emp group by dept_no);
 where dept_no in (select dept_no from emp group by dept_no);

select ename ,dept_no,sal
from emp
where sal in (select max(Sal) from emp group by dept_no);

select count(*) ,dept_no,hire_date
from emp
group by dept_no;

select max(Sal) from emp group by dept_no;

select ename ,sal
from emp
where sal >800;

select ename ,sal from emp 
group by ename having sal>800;

select * from emp where dept_no = 20 and job =(select job from emp where ename ='smith');

SELECT ename,sal from emp
where sal between 1001 and 2999;

select dept_no from emp where ename ='Smith';
select hire_date , sal from emp where dept_no =(select dept_no from emp where ename = 'king');

select dept_no from emp where ename ='king';

select ename from emp where sal=800;

select ename from emp where dept_no =(select dept_no from emp where dept_no = 20);

select * from emp;

select * from dept;


select dname ,location,dept_no from dept where
 dept_no =(select dept_no from emp where ename = 'king');

select location from dept where
dept_no  =(select dept_no from emp where comm is not null and dept_no = 40);

select dname from dept where dept_no in(select dept_no from emp where sal =800);

select ename, sal from emp 
where sal in (select max(Sal) from emp);

select ename , hire_date from emp
where hire_date in(select min(hire_date) from emp);

select * from emp;
select ename , hire_date from emp
where hire_date in(select max(hire_date) from emp);

select  max(sal) from emp
where sal<(select max(sal) from emp);

select max(sal) from emp;

select  max(sal) from emp
where sal<(select max(sal) from emp where sal<(select max(sal) from emp));

select max(sal) from emp
where sal<(select max(sal) from emp);

select ename from emp
where sal =(select max(Sal)from emp 
where sal<(select max(sal) from emp));


select dname from dept 
where dept_no=(select dept_no from emp where sal in(select max(sal) from emp
where sal<(select max(sal) from emp)));

select dname from dept where dept_no =(select dept_no from emp where sal in(select max(sal) from emp
where sal<(select max(sal) from emp)));

select max(sal) from emp
where sal<(select max(sal) from emp);

select * from emp
 select dname from dept where dept_no=(select dept_no from emp);

 select dname from dept
 where dept_no in(select dept_no from emp 
 where sal in(select max(sal)from emp where sal<(select max(sal)from emp)));

 select min(hire_date) from emp;

select ename from emp where sal in
 (select min(sal) from emp where sal> (select min(sal) from emp));

select * from dept;
where sal >all(select sal from emp where ename ='jhones');

select ename from emp where emp_no in(select mgr from emp where ename = 'adams');


select emp_no from emp where dept_no in (select dept_no from dept where location = 'NEW YORK');

select ename from emp where job in('SALESMAN' ,'CLERK') and dept_no
 in(select dept_no from dept where location='CHICAGO' and dept_no in
 (select dept_no from emp where emp_no
  in
  (select mgr from emp where sal>(select sal from emp where job='Clark'and sal<(select sal from emp where ename ='Jones' and dept_no
   in(select dept_no from dept where dname = 'SALES' and dept_no(select dept_no from emp where emp_no
   in (select mgr from emp where emp_no in (select mgr from emp where emp_no
   in (select emp_no from emp where dept_no in 
   (select dept_no from dept where location = 'NEW YORK')))))))))));

   select ename from emp 
   where emp_no in (select mgr from emp where ename= 'Smith')
  and sal in (select sal from emp
    where sal>(select sal from emp where job='Cleark') 
   and sal<(select sal from emp where ename='Jones'));
   select * from dept;


select ename from emp
where job in (select job from emp where dept_no 
in(select dept_no from dept where dname='SALES')
AND ename in(select ename from emp where mgr 
in (select emp_no from emp where mgr 
in(select emp_no from emp where dept_no 
in(select dept_no from dept where location = 'NEW YORK')))));



select* from emp;

--it's a big nestad query.............

select ename from emp
where job in('Salesman','Clerk')
and dept_no in(select dept_no from dept where location='CHICAGO')
AND emp_no in (select mgr from emp where sal in(select sal from emp 
             where sal>(select sal from emp where job ='Clerk')
              and sal<(select sal from emp where ename='Jhones')))
AND job in(select job from emp where dept_no
           in(select job from emp where dept_no
           in(select dept_no from dept where dname='SALES')))

AND emp_no in(select emp_no from emp where mgr
           in(select emp_no from emp where mgr
           in(select emp_no from emp where dept_no
           in(select dept_no from dept where location='NEW YORK'))));

select *from emp;
  select dname,sal
  from emp ,dept
  where emp.dept_no=dept.dept_no and dname='Accounting';  

  select dname,sal*12 "Annual sal"
  from emp,dept
  where emp.dept_no= dept.dept_no and sal=23400;


select dname,sal,ename
  from emp,dept
  where emp.dept_no= dept.dept_no and sal>(select sal from emp 
                                       where emp_no in(select mgr from emp 
                                                      where ename='smith'));

select e.ename,d.dname,d.location from emp e,dept d
where e.dept_no=d.dept_no(+);

select e.ename,d.dname,d.location from emp e left outer join dept d
on e.dept_no=d.dept_no;

select * from emp e, dept d
where e.dept_no=d.dept_no(+);

select * from emp e left outer join  dept d 
on e.dept_no=d.dept_no;

select * from emp e cross join dept d
on e.dept_no=d.dept_no;

select ename, sal,dname,location 
from emp e full join dept d
on e.dept_no=d.dept_no and sal>(select sal from emp 
                                       where emp_no in(select mgr from emp 
                                                      where ename='smith'));

select emp.ename,dept.dname from emp full OUTER join dept 
on dept.dept_no=emp.dept_no;

select e1.ename, e2.ename, e1.sal
from emp e1 JOIN emp e2
on e1.mgr=e2.emp_no
and e1.job=e2.job;


select e1.ename, e2.ename,d1.dname, d2.dname
 emp e1 inner JOIN emp e2 inner join,  dept d1 INNER join dept d2
on e1.mgr=e2.emp_no
 AND  e1.dept_no=d1.dept_no
AND    d1.dept_no = d2.=dept_no;

select ename from emp
where hire_date in(select min(hire_date) from emp);

select e1.ename, e2.ename, d1.dname
from (emp e1 join emp e2 on e1.mgr=e2.emp_no)
 inner join dept d1 
   on e1.dept_no=d1.dept_no;

select d1.dname,e1.ename from 
emp e1 inner join dept d1
on  e1.dept_no=d1.dept_no;

SELECT E1.ENAME, E1.JOB, E2.ENAME, D1.DNAME
FROM (EMP AS E1
LEFT JOIN EMP AS E2 ON
E1.MGR = E2.EMP_NO)
LEFT JOIN DEPT AS D1 ON
E2.DEPT_NO = D1.DEPT_NO;

select e1.ename ,e2.ename,d1.dname,d2.dname
from (emp as e1 join emp as e2 on e1.mgr=e2.emp_no)
     inner join dept as d1 on e1.dept_no=d1.dept_no
     inner join dept as d2 on e2.dept_no=d2.dept_no;


select e1.ename,d1.dname,e2.ename,d2.dname
from emp e1 left join dept d1
on e1.dept_no=d1.dept_no
join emp e2 on e1.mgr=e2.emp_no
inner join dept d2 on e2.dept_no=d2.dept_no;

select 
count(distinct job) from emp ;

select count(job) from emp;

select CONCAT(ename,REVERSE(ename),
SUBSTRING(ename,1,6), REPLACE(ename,'a','*')) as "superise mo*-f**/er"
 from emp;

select ename, CHAR_LENGTH(ename) as "length" from emp;

select * from books limit 5,6596565566464;

select* from emp;

select ename,job from emp
where SUBSTR(job,1,3)='MAN' or  
SUBSTR(job,-3,3) ='MAN';


select * from emp
where TO_CHAR(hire_date,'DD') IN ('17','19','22');

select database();

use coustomer_and_order;
select database();

use kanha;
select * from emp e left join dept d 
on e.dept_no=d.dept_no 
order by sal desc;
