CREATE TABLE xxamol_dept_t (
    deptempid NUMBER PRIMARY KEY
    
);
alter table xxamol_dept_t
add  hod_name varchar2(100);
alter table xxamol_dept_t
add satff_members number ;

CREATE TABLE xxamol_emp_t (
    empempid   NUMBER PRIMARY KEY,
    empname VARCHAR2(100) NOT NULL,
    salary  NUMBER CHECK (salary > 10000),
    deptempid  NUMBER,
    city    VARCHAR2(100),
    country VARCHAR2(10) DEFAULT 'IN',
    email   VARCHAR2(100) UNIQUE,
    CONSTRAINT consdeptempid FOREIGN KEY (deptempid)
        REFERENCES xxamol_dept_t(deptempid)
);

insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Rohan', 301, 18);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Kalpesh', 302, 12);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Omkar', 303, 22);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Amit', 304, 15);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Suresh', 305, 9);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Mahesh', 306, 19);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Kiran', 307, 13);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Manoj', 308, 20);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Vishal', 309, 17);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Rajesh', 310, 11);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Harish', 311, 14);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Mayur', 312, 16);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Sanjay', 313, 23);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Nikhil', 314, 10);
insert into xxamol_dept_t (hod_name, deptempid, satff_members) values ('Shankar', 315, 21);


insert into xxamol_emp_t values (1, 'Amol', 45000, 301, 'Pune', 'IN', 'amol1@gmail.com');
insert into xxamol_emp_t values (2, 'Ritika', 52000, 302, 'Mumbai', 'IN', 'ritika23@gmail.com');
insert into xxamol_emp_t values (3, 'Sagar', 38000, 303, 'Nagpur', 'IN', 'sagar88@gmail.com');
insert into xxamol_emp_t values (4, 'Neha', 61000, 304, 'Delhi', 'IN', 'neha.k@gmail.com');
insert into xxamol_emp_t values (5, 'Kunal', 34000, 305, 'Indore', 'IN', 'kunal23@gmail.com');
insert into xxamol_emp_t values (6, 'Harsha', 72000, 306, 'Hyderabad', 'IN', 'harsha@gmail.com');
insert into xxamol_emp_t values (7, 'Tanvi', 56000, 307, 'Bangalore', 'IN', 'tanvi32@gmail.com');
insert into xxamol_emp_t values (8, 'Sameer', 47000, 308, 'Chennai', 'IN', 'sameer@gmail.com');
insert into xxamol_emp_t values (9, 'Vikas', 33000, 309, 'Nashik', 'IN', 'vikas99@gmail.com');
insert into xxamol_emp_t values (10,'Pooja', 53000, 310, 'Kolkata', 'IN', 'pooja321@gmail.com');
insert into xxamol_emp_t values (11,'Aditya', 60000, 311, 'Surat', 'IN', 'aditya77@gmail.com');
insert into xxamol_emp_t values (12,'Sneha', 45000, 312, 'Jaipur', 'IN', 'sneha09@gmail.com');
insert into xxamol_emp_t values (13,'Rohit', 39000, 313, 'Lucknow', 'IN', 'rohit22@gmail.com');
insert into xxamol_emp_t values (14,'Meera', 48000, 314, 'Bhopal', 'IN', 'meera@gmail.com');
insert into xxamol_emp_t values (15,'Omkar', 55000, 315, 'Goa', 'IN', 'omkar77@gmail.com');



select e.empname, e.empempid, e.salary,e.email,d.hod_name,d.satff_members,d.deptempid
from xxamol_emp_t  e
left join xxamol_dept_t d
on 
d.deptempid = e.deptempid ;


select e.*, d.*
from   xxamol_emp_t e
join   xxamol_dept_t d
on e.deptempid = d.deptempid;


--1. Display the employee’s name who has letter A?
select empname 
from xxamol_emp_t
where empname like '%a%' ;


alter table xxamol_emp_t
add joiningdate date ;


update xxamol_emp_t set joiningdate = DATE '2023-02-11' where empempid = 1;
update xxamol_emp_t set joiningdate = DATE '2023-05-27' where empempid = 2;
update xxamol_emp_t set joiningdate = DATE '2023-09-14' where empempid = 3;
update xxamol_emp_t set joiningdate = DATE '2023-12-20' where empempid = 4;
update xxamol_emp_t set joiningdate = DATE '2024-01-18' where empempid = 5;
update xxamol_emp_t set joiningdate = DATE '2024-03-09' where empempid = 6;
update xxamol_emp_t set joiningdate = DATE '2024-05-28' where empempid = 7;
update xxamol_emp_t set joiningdate = DATE '2024-07-11' where empempid = 8;
update xxamol_emp_t set joiningdate = DATE '2024-08-30' where empempid = 9;
update xxamol_emp_t set joiningdate = DATE '2023-03-16' where empempid = 10;
update xxamol_emp_t set joiningdate = DATE '2023-07-22' where empempid = 11;
update xxamol_emp_t set joiningdate = DATE '2024-10-05' where empempid = 12;
update xxamol_emp_t set joiningdate = DATE '2023-11-19' where empempid = 13;
update xxamol_emp_t set joiningdate = DATE '2024-12-15' where empempid = 14;
update xxamol_emp_t set joiningdate = DATE '2024-09-02' where empempid = 15;



--2. Display employee and joining date for those employees joined before 31/07/24 and after 1/1/2024? 
select joiningdate, empname
from xxamol_emp_t
where joiningdate < to_date('2024-07-31', 'yyyy-mm-dd' ) and joiningdate > to_date('2024-01-01', 'yyyy-mm-dd' );


--3. Display employee name, salary who has the highest salary? 
select  empname, salary as maxsalary
from xxamol_emp_t
where salary  = (select max(salary) from xxamol_emp_t)
;


--4. Modify the whole record with an increment of 10% where doj in July? 
update xxamol_emp_t
set salary = salary *1.1 
where extract(month from joiningdate) = 7 ;
--where  TO_CHAR(joiningdate, 'MM') = '07';


--5. Delete those employee names whose names end with ‘U’ and salary less than 15000? 
insert into xxamol_emp_t (empempid,empname,salary,deptempid,city,country,email,joiningdate)
values (19, 'Kenu', 45000, 301, 'Pune', 'IN', 'kenu@gmail.com',date'2024-09-02');
insert into xxamol_emp_t (empempid,empname,salary,deptempid,city,country,email,joiningdate)
values (20, 'aman', 14999, 305, 'Pune', 'IN', 'aman@gmail.com',date'2024-09-02');

delete from xxamol_emp_t
where empname like '%u' or salary < 15000 or empname like '%U';


--6. Display employee names in upper case? 
select upper(empname) as capitalize_names
from xxamol_emp_t ;


--7. Display names of employees in ascending and descending order? 
select empname as Acsending_empNames
from xxamol_emp_t 
order by empname asc ;

select empname as Descending_empNames
from xxamol_emp_t 
order by empname desc ;


--8. Display employee name, Department name, Salary? 
alter table xxamol_dept_t
add deptname varchar2(20) ;

update  xxamol_dept_t set deptname = 'it' where deptempid = 301 ;
update  xxamol_dept_t set deptname = 'cs' where deptempid = 302 ;
update  xxamol_dept_t set deptname = 'cse' where deptempid = 303 ;
update  xxamol_dept_t set deptname = 'etc' where deptempid = 304 ;
update  xxamol_dept_t set deptname = 'mech' where deptempid = 305 ;
update  xxamol_dept_t set deptname = 'cicil' where deptempid = 306 ;
update  xxamol_dept_t set deptname = 'foe' where deptempid = 307 ;
update  xxamol_dept_t set deptname = 'fom' where deptempid = 308 ;
update  xxamol_dept_t set deptname = 'aiml' where deptempid = 309 ;
update  xxamol_dept_t set deptname = 'ds' where deptempid = 310 ;
update  xxamol_dept_t set deptname = 'el' where deptempid = 311 ;
update  xxamol_dept_t set deptname = 'aempids' where deptempid = 312 ;
update  xxamol_dept_t set deptname = 'economics' where deptempid = 313 ;
update  xxamol_dept_t set deptname = 'training' where deptempid = 314 ;
update  xxamol_dept_t set deptname = 'staff' where deptempid = 315 ;


select e.empname, d.deptname, e.salary
from xxamol_dept_t d
join xxamol_emp_t e 
on e.deptempid = d.deptempid ;



--9. Display all employees who belong to the ‘Finance’ department and their salary is greater than 10000? 
insert into xxamol_dept_t(deptempid,HOD_NAME, deptname,satff_members)
values (6,'anish','finance',12) ;

insert into xxamol_emp_t (empempid,empname,salary,deptempid,city,country,email,joiningdate)
values (20, 'ashok', 43500, 6, 'maysore', 'IN', 'ashok@gmail.com',date'2024-06-15');
insert into xxamol_emp_t (empempid,empname,salary,deptempid,city,country,email,joiningdate)
values (21, 'akshit', 28469, 6, 'hyderabad', 'IN', 'akshit@gmail.com',date'2023-05-23');

select e.*
from  xxamol_emp_t e
join xxamol_dept_t d
on e.deptempid = d.deptempid
where e.salary > 30000 and deptname = 'finance' ;


-- 10. Display number of employees working in each department? 
select d.deptname AS department_name, 
COUNT(e.empempid) AS total_employees
from xxamol_dept_t d
join xxamol_emp_t e
on d.deptempid = e.deptempid
group by d.deptempid , d.DEPTNAME
ORDER BY d.deptname;


-- 11. Display the employee name, dept name and hod who belongs to Bengaluru? 
select e.empname , d.deptname , d.hod_name
from xxamol_emp_t e 
join xxamol_dept_t d
on e.deptempid = d.deptempid
where e.city = 'Bangalore' ;


-- 12. Employees whose salary exceeds the MAX salary of at least one department
select e.empempid, e.empname, e.salary, e.deptempid
from   xxamol_emp_t e
where  e.salary > ANY (
         select MAX(salary)
         from   xxamol_emp_t
         GROUP  BY deptempid
);


-- 13. Display employee name, department, manager who belongs to Pune? 
create table xx_amolmanager_xx (
    manname varchar2(20) not null,
    manempid number(10) not null,
    deptempid number , 
    foreign key (deptempid)
    references xxamol_dept_t(deptempid) 
);


insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Rohan', 101, 301);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Suresh', 102, 302);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Mahesh', 103, 303);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Prakash', 104, 304);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Ramesh', 105, 305);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Kiran', 106, 306);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Shyam', 107, 302);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Vijay', 108, 303);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Nitin', 109, 301);
insert into XX_AMOLMANAGER_XX (manname, manempid, deptempid) values ('Amar', 110, 6);

alter table xx_amolmanager_xx
add city varchar2(20) ;

update XX_AMOLMANAGER_XX
set city = 'pune' where manempid in (101,104,107) ;
update XX_AMOLMANAGER_XX
set city = 'banglore' where manempid in (102,103,105) ;
update XX_AMOLMANAGER_XX
set city = 'mumbai' where manempid in (106,108,109, 110) ;

select e.empname,d.deptname,m.manname
from XXAMOL_EMP_T e 
inner join XXAMOL_DEPT_T d 
on d.deptempid = e.deptempid
inner join XX_AMOLMANAGER_XX m 
on e.deptempid = m.deptempid 
where m.city = 'pune' ; 



-- 14. Create a view for employee information and department information, Employee empid’s, Employee name, Department empid’s, Salary, Manager? 
CREATE VIEW v_emp_dept_manager AS
select e.empempid, e.empname, e.salary, e.deptempid, d.deptname, m.manname AS manager_name
from xxamol_emp_t e
join xxamol_dept_t d 
on e.deptempid = d.deptempid
LEFT join xx_amolmanager_xx m 
on e.deptempid = m.deptempid;


select *
from v_emp_dept_manager;


-- 15. Find the highest and the lowest salary in the employee table? 
select empname, salary
from xxamol_emp_t
where salary = (select max(salary) from xxamol_emp_t);

select empname, salary
from xxamol_emp_t
where salary = (select min(salary) from xxamol_emp_t);


-- 16. Find the total salary paempid to employees who belong to the ‘HR’ department? 
select sum(salary) as total_hr_salary

from XXAMOL_EMP_T e
join XXAMOL_DEPT_T d
on e.deptempid = d.deptempid
where deptname = 'it' ;


-- 17. Find the average salary of all employees?  
select round(avg(salary),2) as avgSAL
from XXAMOL_EMP_T;




-- 18. Display the first 4 characters of employee names?  
select substr(empname,1,4) as First4Chars
from XXAMOL_EMP_T ;



-- 19. Display all employees’ names in upper and lower case?  
select upper(empname) as uppercase,lower(empname) as lowercase
from XXAMOL_EMP_T ;



-- 20. Display employees' names and manager names in a single column?  

DELETE from XX_AMOLMANAGER_XX m
where m.ROWempid NOT IN (
    select MIN(ROWempid)
    from XX_AMOLMANAGER_XX
    group by deptempid
);

select
empname || ' - Manager: ' || manname AS emp_manager
from XXAMOL_EMP_T e
join XX_AMOLMANAGER_XX m
on e.deptempid = m.deptempid;


-- 21. write a query to remove all the rows from the employee table without losing the table structure?  
truncate table XXAMOL_EMP_T ;


-- 22. find out all departments with an average salary is greater than 50000?  
select d.deptname 
from XXAMOL_DEPT_T d
join XXAMOL_EMP_T e 
on d.deptempid = e.deptempid
group by d.deptname
having avg(salary) > 50000 ;


select deptname
from XXAMOL_DEPT_T
where deptempid  in (
    select deptempid 
    from XXAMOL_emp_T
    group by deptempid 
    having avg(salary) > 50000 
) ;



-- 23. Write a query to display employee name and new column where salary grade as per below conditions  
-- If salary>50k then display salary high  
--  If Salary 30k to 50k display average. 
--  Else display as low.  

select e.empname,
case
when e.salary > 50000 then 'high salary'
when e.salary < 50000  and e.salary > 30000 then 'low salary'
else 'low'
end as grade_salary
from XXAMOL_EMP_T e ;





-- 24. Display the name and length of employee name from employee table?  
select empname , length(empname) as lengthEmpName
from XXAMOL_EMP_T ;



-- 25. Create a table employee with the following conditions    
-- emp_empid--primary key    
-- emp_name--not null    
-- city should= Bangalore    
-- salary between 10k to 50k    
-- maempid empid should be in unique    
-- dep empid is foreign key  

create table xx_emp_1(
    emp_empid number primary key,
    city varchar2(10),
    salary number(10,2) check(salary > 10000 and salary < 30000),
    mail_empid varchar2(100) unique ,
    deptempid number,
    foreign key (deptempid)
    references XXAMOL_DEPT_T
);



-- 26. List down all the employee names along with the department name?  
select e.empname, d.deptname
from XXAMOL_EMP_T e 
join XXAMOL_DEPT_T d 
on e.deptempid = d.deptempid ;



-- 27. List all emp names along with department names including emp who don’t belong to any department?  
insert into XXAMOL_EMP_T(empempid, empname,city,salary,country,email)
values(22,'abhishek','pune',30000,'india','abhi333@gmail.com') ;

select e.empname, d.deptname
from XXAMOL_EMP_T e 
left join XXAMOL_DEPT_T d 
on e.deptempid = d.deptempid ;




-- 28. list down all departments and employees working in those departments including departments who do not have employees?  

select e.empname, d.deptname
from XXAMOL_EMP_T e 
right join XXAMOL_DEPT_T d 
on e.deptempid = d.deptempid ;



-- 29. list down all possible combinations of employees and departments  
select e.empname, d.deptname
from XXAMOL_EMP_T e 
cross join XXAMOL_DEPT_T d ;



-- 30. list all employees names, department names who work in departments with more than 3 employees?  
select e.empname, d.deptname
from XXAMOL_EMP_T e 
join XXAMOL_DEPT_T d 
on d.deptempid = e.deptempid
where e.deptempid in(
    select deptempid
    from XXAMOL_EMP_T
    having count(*) > 2
    group by deptempid
) ;


-- 31. list down all employee and department names and salary for those employees whose salary is greater than 30000.   

select e.empname, d.deptname, e.salary
from XXAMOL_emp_T e 
join XXAMOL_DEPT_T d 
on e.deptempid = d.deptempid 
where e.salary > 30000 ;



-- 32. write a query to rename the table from emp to employee?  
rename xx_emp_1 to employee ;


-- 33. write a query to add a column dob to the employees table?  
alter table employee
add dob date ;


-- 34. change the data type of doj from date to varchar2?  
alter table employee 
modify (dob VARCHAR2(20)) ;



-- 35. create an index on name, phone number in employees table?  
 alter table XXAMOL_emp_T
 add phoneno number ;
update XXAMOL_EMP_T set phoneno = 9876500001 where empid = 1;
update XXAMOL_EMP_T set phoneno = 9876500002 where empid = 2;
update XXAMOL_EMP_T set phoneno = 9876500003 where empid = 3;
update XXAMOL_EMP_T set phoneno = 9876500004 where empid = 4;
update XXAMOL_EMP_T set phoneno = 9876500005 where empid = 5;
update XXAMOL_EMP_T set phoneno = 9876500006 where empid = 6;
update XXAMOL_EMP_T set phoneno = 9876500007 where empid = 7;
update XXAMOL_EMP_T set phoneno = 9876500008 where empid = 8;
update XXAMOL_EMP_T set phoneno = 9876500009 where empid = 9;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 10;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 11;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 12;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 13;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 14;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 15;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 16;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 17;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 18;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 19;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 20;
update XXAMOL_EMP_T set phoneno = 9876500010 where empid = 21;

create index indexOfNamePhone 
on XXAMOL_EMP_T(empname,phoneno) ;



-- 36. Display employees who work in the same department whose name is aman?  
select empname
from XXAMOL_EMP_T
where deptid in (
    select deptid 
    from XXAMOL_EMP_T
    where empname = 'Amol'
) ;




-- 37. find a department that has at least one employee?  
select distinct d.deptname 
from XXAMOL_DEPT_T d 
join XXAMOL_EMP_T e
on d.deptid = e.deptid 
where d.deptid in (
    select deptid 
    from XXAMOL_EMP_T
    having count(*) >= 1
    group by deptid 
) ;


select distinct d.deptname
from XXAMOL_DEPT_T d
join xxamol_emp_t e 
on d.deptid = e.deptid 
;


-- 38. find departments that don't have any employees ?  
select d.deptid, d.deptname
from XXAMOL_DEPT_T d
where NOT EXISTS (
  select 1
  from XXAMOL_EMP_T e
  where e.deptid = d.deptid
);




-- 39. Display the employee job title as per below condition   if grade is 1 then display manager   if grade is 2 then display analyst   if grade is 3 then display engineer   if grade is 4 then display others  
select
    employee_name,
    grade,
    CASE 
        when grade = 1 then 'Manager'
        when grade = 2 then 'Analyst'
        when grade = 3 then 'Engineer'
        when grade = 4 then 'Others'
        ELSE 'Not Defined'
    END AS job_title
from XXAMOL_EMP_T;



-- 40. Write a query to display, phone no in emp table if phone no is null then print not provided?  
select empname,
case 
when phoneno is not null then to_char(phoneno)
else 'not provided' end
as Phone_Numbers
from xxamol_emp_t ;




-- 41. display current date and time?  
select SYSTIMESTAMP from dual;



-- 42. display date in given format dd/mm/yy?  
select TO_CHAR(SYSDATE, 'DD/MM/YY') AS formatted_date
from dual;


-- 43. Combine department names from department table with job title with job table?  
alter table xxamol_emp_t
add jobtitleid number ;

update XXAMOL_emp_T
set jobtitleid = 1 where empid = 1 ;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 2 ;
update XXAMOL_emp_T
set jobtitleid = 3 where empid = 3 ;
update XXAMOL_emp_T
set jobtitleid = 1 where empid = 4 ;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 5 ;
update XXAMOL_emp_T
set jobtitleid = 3 where empid = 6 ;
update XXAMOL_emp_T
set jobtitleid = 1 where empid =7 ;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 8 ;
update XXAMOL_emp_T
set jobtitleid = 3 where empid = 9 ;
update XXAMOL_emp_T
set jobtitleid = 1 where empid = 10 ;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 11;
update XXAMOL_emp_T
set jobtitleid = 3 where empid = 12;
update XXAMOL_emp_T
set jobtitleid = 1 where empid = 13;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 14;
update XXAMOL_emp_T
set jobtitleid = 3 where empid = 15;
update XXAMOL_emp_T
set jobtitleid = 1 where empid = 16;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 17;
update XXAMOL_emp_T
set jobtitleid = 3 where empid = 18 ;
update XXAMOL_emp_T
set jobtitleid = 1 where empid = 19 ;
update XXAMOL_emp_T
set jobtitleid = 2 where empid = 20 ;
update XXAMOL_emp_T
set jobtitleid = 1 where empid = 21 ;

create table jobtitle (
    jobtitleid number primary key,
    jobtitle varchar2(20)
) ; 

insert all
into JOBTITLE(jobtitleid, jobtitle) values(1,'manager')
into JOBTITLE(jobtitleid, jobtitle) values(2,'analyst')
into JOBTITLE(jobtitleid, jobtitle) values(3,'engineer')
select * from dual ;

select e.empname, d.deptname, j.jobtitle 
from XXAMOL_EMP_T e 
join XXAMOL_DEPT_T d on e.deptid = d.deptid
join jobtitle j on j.jobtitleid = e.jobtitleid ;




-- 44. Display the salary of employees that are divided by 1000 ?  
select (salary / 1000) as salaryDividedBy100 
from XXAMOL_EMP_T;


-- 45. Display name and salary of employee  
select empname, salary from xxamol_emp_t ; 





-- 46. Find the position of the first occurrence of letter 'o' in word core bi?  
select 'position of o  is ' ||INSTR('core bi', 'o')  AS position
from dual;




-- 47. Find common employee names that appear in both employee and manager tables?  
update XX_AMOLMANAGER_XX 
set manname = 'Amol' where manid = 101 ;

select e.empname 
from XXAMOL_EMP_T e 
join XX_AMOLMANAGER_XX m 
on e.deptid = m.deptid 
where e.empname in (
    select manname
    from XX_AMOLMANAGER_XX
);



-- 48. Find employees names that are in the employee table not in the manager table?  
select e.empname 
from XXAMOL_EMP_T e 
join XX_AMOLMANAGER_XX m 
on e.deptid = m.deptid 
where e.empname not in (
    select manname
    from XX_AMOLMANAGER_XX
);




-- 49. Apply below functions on salary column 1) ‘CEIL’ 2) Round (up to 2 decimals) 3) ‘NVL’ 4) NVL2 5) DECODE  
select
  empname,
  salary,
  CEIL(salary) AS salary_ceil
from xxamol_emp_t;

select
  empname,
  salary,
  ROUND(salary, 2) AS salary_round_2dp
from xxamol_emp_t;

select
  empname,
  NVL(salary, 0) AS salary_nvl
from xxamol_emp_t;

select
  empname,
  salary,
  NVL2(salary, 'Has Salary', 'No Salary') AS salary_flag
from xxamol_emp_t;


select
  empname,
  jobtitleid,
  DECODE(jobtitleid,
         1, 'Manager',
         2, 'Analyst',
         3, 'Engineer',
         'Not Defined') AS job_title
from xxamol_emp_t;



-- 50. Try the functions below on employee name 1. ’TRIM’ 2. ’RTRIM’ 3. ’LPAD’ 4. ’RPAD’ 5. SUBSTR 6. INSTR  
select empname,
TRIM(empname) AS trimmed_name
from xxamol_emp_t;

select empname,
RTRIM(empname) AS rtrimmed_name
from xxamol_emp_t;

select empname,
       LPAD(empname, 15, '*') AS lpad_name
from xxamol_emp_t;

select empname,
       RPAD(empname, 15, '#') AS rpad_name
from xxamol_emp_t;



-- 51. Find the third highest salary in each department?  

select deptid,empname,salary
from (
select empname, deptid, salary,
DENSE_RANK() OVER (
    PARTITIon BY deptid
    ORDER BY salary DESC
) AS sal_rank
    from xxamol_emp_t
) e
where e.sal_rank = 3
ORDER BY e.deptid;




-- Write a query to rank employees within each department based on their salaries (highest salary gets rank 1). Use both DENSE_RANK and RANK. 
select
e.deptid,
e.empid,
e.empname,
e.salary,
RANK()       OVER (PARTITIon BY e.deptid ORDER BY e.salary DESC)       AS rank_in_dept,
DENSE_RANK() OVER (PARTITIon BY e.deptid ORDER BY e.salary DESC)       AS dense_rank_in_dept
from XXAMOL_EMP_T e
ORDER BY e.deptid, rank_in_dept, e.empid;



-- Find the names of employees who earn more than the average salary of all employees in the company. 
select empname
from XXAMOL_EMP_T 
where salary > (select avg(salary)
from XXAMOL_EMP_T
);


-- from the employees table, find all pairs of employees who belong to the same department. 
select
e1.deptid,
e1.empid   AS emp1_id,
e1.empname AS emp1_name,
e2.empid   AS emp2_id,
e2.empname AS emp2_name
from XXAMOL_EMP_T e1
join XXAMOL_EMP_T e2
  on e1.deptid = e2.deptid
 AND e1.empid < e2.empid   
ORDER BY e1.deptid, e1.empid, e2.empid;



-- For each employee, calculate 20% of their salary as BONUS and display the rounded bonus value. 
select empname, round(salary*.20, 2) as bonus
from XXAMOL_EMP_T ;




-- Format the employee names to display the first letter in uppercase and the rest in lowercase. Also, extract the first three letters of their department names. 

select empname, initcap(lower(empname))
from XXAMOL_EMP_T;



-- Find the top 3 highest-paid employees in the company. Use a subquery and RANK. 

select empid, empname, salary 
from(select e1.*,
rank() over(order by e1.salary desc )as ranksalary
from xxamol_emp_t e1
) x
where x.ranksalary < 4 
order by salary desc ,empname ; 





-- Find the names of employees who earn the second-highest salary in each department. 
select empname, deptid,salary
from(
select e1.*,
rank() over(partition by e1.deptid order by e1.salary desc ) as ranksal
from XXAMOL_EMP_T e1 
) x 
where x.ranksal = 2 
order by deptid  ;



 

-- Find the department with the highest average salary and list all employees in that department. 
select e.deptid,d.deptname 
from XXAMOL_EMP_T e 
join XXAMOL_DEPT_T d 
on d.deptid = e.deptid 
having avg(e.salary) < e.salary
group by e.deptid ;


-- The XXCK_EMP_T table has a new column COMMISSIon that can have NULL values. Write a query to replace NULL in COMMISSIon with 0 and calculate the total compensation as SALARY + COMMISSION. 

alter table xxamol_emp_t
add commission number ;

update XXAMOL_EMP_T
set commission = 2000 where empid = 1 ;
update XXAMOL_EMP_T
set commission = 3000 where empid = 3 ;
update XXAMOL_EMP_T
set commission = 4000 where empid = 5 ;
update XXAMOL_EMP_T
set commission = 1000 where empid = 9 ;
update XXAMOL_EMP_T
set commission = 1300 where empid = 2 ;
update XXAMOL_EMP_T
set commission = 1200 where empid = 17 ;
update XXAMOL_EMP_T
set commission = 1900 where empid = 13;
update XXAMOL_EMP_T
set commission = 1800 where empid = 18 ;
update XXAMOL_EMP_T
set commission = 2000 where empid = 12 ;

select
empid,
empname,
salary,
NVL(commission, 0) AS commission,
salary + NVL(commission, 0) AS total_compensation
from XXAMOL_EMP_T;




-- Rank employees based on their salary using DENSE_RANK. 
select empid,empname,salary,
dense_rank() over (order by salary desc) as salary_rank
from XXAMOL_EMP_T;





-- Write a query to find the total salary and average salary of employees for each department. 
select nvl(deptid, 0), round(avg(salary),2) as average_sal , sum(salary) as sumSalary
from XXAMOL_EMP_T
group by deptid 
order by deptid;





-- Write a query to find the top 3 employees with the highest salaries. 
select empname,salary
from (
select e1.*,
rank() over(order by salary desc) as salrank
from XXAMOL_EMP_T e1
)x 
where x.salrank <= 3 
order by salary desc;





-- Find the department with the highest average salary using subqueries. 
select deptid
from (
select deptid, avg(salary) AS avg_salary
from xxamol_emp_t
group by deptid
) dept_avg
where avg_salary = (
select MAX(avg_salary)
from (
select avg(salary) AS avg_salary
from xxamol_emp_t
group by deptid
) avg_per_dept
);






-- Write a query to find the employee with the maximum salary in each department. 
select nvl(deptid,0),empname
from(
select e1.*,
rank() over(partition by deptid order by salary desc) as sal_rank
from XXAMOL_EMP_T e1
)x
where x.sal_rank <2 ;




-- Write a query to find the average and highest salary for each department.  

select
deptid,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary
from XXAMOL_EMP_T
group by deptid
order by deptid;





-- Write a query to find the third highest salary in the company. 
select salary
from (
    select 
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dr
    from XXAMOL_EMP_T
) t
where dr = 3;






-- Rank employees by their salary within each department using DENSE_RANK. 

select
    empid,
    empname,
    deptid,
    salary,
    DENSE_RANK() OVER (
        partition by deptid
        order by salary DESC
    ) as salary_rank
from XXAMOL_EMP_T
order by deptid, salary_rank, empid;




-- Write a query to find departments that have more than one employee. 

select
    deptid,
    COUNT(*) AS employee_count
from XXAMOL_EMP_T
group by deptid
having COUNT(*) > 2;










-- delete duplicate records from rows 
-- find 3rd highest salary of employee with using dense rank and without using
-- find 3rd highest salary of emp of respective department
-- give me the name of emp with their managers
-- find emp who have salary greater than avd salary of their respective dept 
--1
delete from XXAMOL_EMP_T
where rowid not in (
    select MIN(rowid)
    from XXAMOL_EMP_T
    group by empid, empname, salary, deptid
);


--2
select salary
from (
    select salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS dr
    from XXAMOL_EMP_T
) t
where dr = 3;

--3
select MAX(salary) AS third_highest
from XXAMOL_EMP_T
where salary < (
    select MAX(salary)
    from XXAMOL_EMP_T
    where salary < (
        select MAX(salary)
        from XXAMOL_EMP_T
    )
);

--4
select salary
from (
    select 
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dr
    from XXAMOL_EMP_T
) t
where dr = 3;