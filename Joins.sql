USE marchbatch;

SELECT * FROM cricketer;
SELECT * from jersey;

SELECT cricketer.name, jersey.jersey_number FROM cricketer 
inner join jersey ON cricketer.id=jersey.cricketer_id;

CREATE TABLE student (
id int primary key auto_increment,
name varchar(30) not null,
deptId int
);
CREATE TABLE department (
id int primary key auto_increment,
deptName varchar(30) not null
);

INSERT INTO department (deptName) VALUES ('CSE'),('ECE'),('MECH'),('CIVIL'),('IT');

INSERT INTO student (name, deptId) VALUES ('Karl', 1), ('Leo', 6);


select * from department;
select * from student;

select * from student cross join department;

select * from cricketer;
select * from jersey;
select * from spouse;


select concat("His name is ", c.name, " and his jersey number is ",
 j.jersey_number, ". His spouse is ", s.name, ". He has scored ",
 c.noOfCenturies, " centuries.") as info from cricketer c
inner join jersey j ON c.id=j.cricketer_id
inner join spouse s ON c.id=s.cricketer_id;