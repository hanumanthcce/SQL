/*using UPPER case in SQL*/
select (DEPT) from employee where upper(DEPT)='TECH'
/*Using where and AND statement*/
select * from emp where lower(Designation)='hod' and salary >=500
/*Q. Write an SQL query to fetch the records which have atleast one yellow present in any of the columns(c1,c2 or c3) */
select * from practice where 'yellow' in (c1,c2,c3)
select * from DEPT where SALARY in(100,200) or salary is null
select * from country order by case when NAME IN ('NEPAL','INDIA') then 1 else 2 end,NAME desc
select DEPTNAME||concat(concat('(',substr(EMPNAME,1,1)),')') from DEPT
select count(*),count(DEPT),case when count(*)-count(DEPT)>0 then 'NULLS is there' else 'No NULL' end from emp
select ID,SALARY from emp where NAME='A' 
show me the dept more than one employee\
select DEPT,count(*) from emp group by DEPT having count(*)>1
select TXNMONTH,AVG(TXNAMOUNT) from amazon1 group by rollup(TXNMONTH) order by AVG(TXNAMOUNT)
select DEPT,max(TXNAMOUNT) from amazon1 group by dept rollup(TXNMONTH) order by AVG(TXNAMOUNT)
with CTE as(select subject,semester,MAx(MArks) as MMARKS from sTUD group by subject,semester)select * from sTUD where (subject,semester,MARKS) in(select subject,semester,MMARKS from CTE) order by ID
select substr(ID,1,1)||substr(dept,1,2)||length(dept) from emp 