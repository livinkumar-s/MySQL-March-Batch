use marchbatch;

CREATE TABLE studentMark (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT check (marks >= 0 and marks <= 100),
    department VARCHAR(50)
);

Insert into studentMark values (1, 'Alice', 85, 'Computer Science'),
(2, 'Bob', 78, 'Mathematics'),
(3, 'Charlie', 92, 'Computer Science'),
(4, 'David', 88, 'Mathematics'),
(5, 'Eve', 95, 'Computer Science'),
(6, 'Frank', 80, 'Mathematics'),
(7, 'Grace', 90, 'Computer Science'),
(8, 'Heidi', 82, 'Mathematics'),
(9, 'Ivan', 87, 'Computer Science'),
(10, 'Judy', 91, 'Commerce'),
(11, 'Karl', 79, 'Commerce'),
(12, 'Leo', 84, 'Commerce'),
(13, 'Mallory', 93, 'Commerce'),
(14, 'Nina', 77, 'Commerce'),
(15, 'Oscar', 89, 'Commerce');

select * from studentmark;
select * from actorlist;
select count(*)-count(age) as noOfNullsInAge from actorlist;

select 5-3;

select count(*) from studentmark;
select max(marks) from studentmark;
select min(marks) from studentmark;
select avg(marks) from studentmark;
SELECT sum(marks) from studentmark;


select avg(marks) from studentmark where department="Commerce";

select name, avg(marks) from studentmark;
select name,marks from studentmark;


select department,avg(marks) from studentmark
GROUP BY department having avg(marks)>=85;

select * from studentmark where marks>avg(marks);
select count(*) from studentmark where marks>90;