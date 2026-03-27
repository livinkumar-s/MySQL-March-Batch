use marchbatch;

SELECT name,marks,(select avg(marks) from studentmark) as avgMark
 from studentmark;

SELECT avg(marks) from studentmark;

SELECT * from studentmark 
where marks>(SELECT avg(marks) from studentmark);

select marks from studentmark where department="Mathematics";

select * from studentmark 
where marks> ANY (select marks from studentmark 
where department="Mathematics"); 

select * from studentmark;

select * from studentmark s1 where marks> (
select avg(marks) from studentmark where department = s1.department
);


select department,avg(marks) from studentmark group by department;

select s1.department from studentmark s1;
