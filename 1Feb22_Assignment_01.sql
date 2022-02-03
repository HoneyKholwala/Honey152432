-- 1) Display all the information of the EMP table?
select *
from emp;
-- ################################################################


-- 2) Display unique Jobs from EMP table?
select distinct job
from emp;
-- ################################################################

-- 3) List the emps in the asc order of their Salaries?
select empno,ename,job,sal
from emp
order by sal; 


-- 4) List the details of the emps in asc order of the Dptnos and desc of Jobs?
select *
from emp
order by deptno asc, job desc;
-- ################################################################

-- 5)  Display all the unique job groups in the descending order?
select distinct job
from emp
order by job desc;
-- ################################################################

-- 6)  Display all the details of all ‘Mgrs’
select *
from emp
where job='MANAGER';
-- ################################################################

-- 7) List the emps who joined before 1981
select *
from emp
where hiredate < to_date('01-01-1981','dd-mm-yyyy') ;
-- ################################################################
 
-- 8) List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
select empno,ename,sal,(sal*12) as Annual_Salary
from emp
order by  Annual_Salary;
-- ################################################################


-- 9) Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
select empno,ename,job,hiredate
from emp
where job!='MANAGER';
-- ################################################################


-- 10)  List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
select empno,ename,sal
from emp
where mgr=7369;
-- ################################################################

-- 11)  Display all the details of the emps whose Comm  Is more than their Sal
select * 
from emp
where comm > sal;
-- ################################################################

-- 13) List the emps along with their Exp and Daily Sal is more than Rs 100
select *
from emp
where sal>100;
-- ################################################################

-- 14)  List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
select *
from emp
where job in('CLERK','ANALYST')
order by job desc;
-- ################################################################


-- 15)  List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
select *
from emp
where hiredate in(to_date('01-05-1981','dd-mm-yyyy'),to_date('03-12-1981','dd-mm-yyyy'),to_date('17-12-1981','dd-mm-yyyy'),to_date('19-01-1980','dd-mm-yyyy'))
order by hiredate ;
-- ################################################################

-- 16) List the emp who are working for the Deptno 10 or 20
select *
from emp
where deptno in(10,20)
order by deptno;
-- ################################################################


-- 17)  List the emps who are joined in the year 81
select *
from emp
where to_char(hiredate,'YYYY') = '1981'
order by hiredate;
-- ################################################################


-- 19)  List the emps Who Annual sal ranging from 22000 and 45000
select ename,sal,(sal*12) as Annual_Salary
from emp
where (sal*12) between '22000' and '45000'
order by Annual_Salary;



-- 20)  List the Enames those are having five characters in their Names
select ename
from emp
where LENGTH(ename)=5;
-- ################################################################

-- 21) List the Enames those are starting with ‘S’ and with five characters
select ename
from emp
where ename like 'S%' and LENGTH(ename)=5;
-- ################################################################


-- 22)  List the emps those are having four chars and third character must be ‘r’
select ename
from emp
where ename like '__R%' and LENGTH(ename)=4;
-- ################################################################


-- 23)  List the Five character names starting with ‘S’ and ending with ‘H’
select ename
from emp
where LENGTH(ename)=5 and (ename like 'S%' and ename like '%H');
-- ################################################################


-- 24)  List the emps who joined in January
select *
from emp
WHERE to_char(hiredate, 'mon')='jan'
order by hiredate;
-- ################################################################

-- 27)  List the emps whose names having a character set ‘ll’ together
select *
from emp
where ename like '%LL%' or ename like '%LL' or ename like 'LL%';
-- ################################################################


-- 29)  List the emps who does not belong to Deptno 20
select *
from emp
where deptno<>20
order by deptno;
-- ################################################################


--  30) List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
select *
from emp
where job not in ('PRESIDENT','MANAGER') 
order by sal ;
-- ################################################################


-- 31)  List the emps whose Empno not starting with digit78
select empno,ename,
       trim(to_char(empno,'99999'))
from emp
where trim(to_char(empno,'99999')) NOT LIKE '78%'
order by empno;
-- ################################################################


-- 33)  List the emps who are working under ‘MGR’
select *
from emp
where mgr IS NOT NULL;
-- ################################################################


--  34)  List the emps who joined in any year but not belongs to the month of March
select *
from emp
WHERE to_char(hiredate, 'mon')!='jan'
order by hiredate;
-- ################################################################


-- 35) List all the Clerks of Deptno 20
select *
from emp
where job='CLERK' and deptno=20;
-- ################################################################


-- 36)  List the emps of Deptno 30 or 10 joined in the year 1981
select *
from emp
where deptno in(10,30) and to_char(hiredate,'YYYY') = '1981';
-- ################################################################


-- 37)  Display the details of SMITH
select e.* , d.*, b.*
from emp e , dept d , branch  b
where e.deptno=d.deptno and d.branchno=b.branchno and e.ename='SMITH';
-- ################################################################


-- 38)  Display the location of SMITH
select e.ename,b.location
from emp e , dept d , branch  b
where e.deptno=d.deptno and d.branchno=b.branchno and e.ename='SMITH';
-- ################################################################

