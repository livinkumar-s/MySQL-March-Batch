USE marchbatch;
SELECT "Leo" as actorName, 44 as actorAge;
SELECT name as actorName, age as actorAge FROM actorlist;

SELECT round(44.154454,4) as result;
SELECT floor(44.99999) as result;
SELECT ceil(44.00000000001) as result;
SELECT abs(4) as result;
SELECT mod(4,5) as result;
SELECT POW(4,4) as result;
SELECT SQRT(81) as result;


SELECT CONCAT("Hello"," ","World","...!") as result;
SELECT length(CONCAT("Hello"," ","World","...!")) as result;
SELECT UPPER(CONCAT("Hello"," ","World","...!")) as result;
SELECT LOWER(CONCAT("Hello"," ","World","...!")) as result;
SELECT TRIM("     hi hello      ") as result;
SELECT LTRIM("     hi hello      ") as result;
SELECT RTRIM("     hi hello      ") as result;
SELECT substr("Hello guys...!",7,4) as result;
SELECT replace("Hello Hello Hello guys...!","Hello","Hi") as result;


select now() as result;
select curdate();
select curtime();
select datediff(curdate(),"2026-03-20");

CREATE TABLE employee (
    empId int,
    name varchar(50),
    salary int,
    joiningDate date
);

INSERT INTO employee VALUES (1,"John Doe",50000,"2020-01-15"),
(2,"Jane Smith",60000,"2019-03-20"),
(3,"Alice Johnson",55000,"2021-07-10"),
(4,"Bob Brown",45000,"2018-11-05"),
(5,"Charlie Davis",70000,"2022-02-28"),
(6,"Eve Wilson",65000,"2020-06-18"),
(7,"Frank Miller",48000,"2019-09-12"),
(8,"Grace Lee",52000,"2021-01-25"),
(9,"Hank Taylor",75000,"2018-05-30"),
(10,"Ivy Anderson",62000,"2022-04-15"),
(11,"Jack White",58000,"2020-10-01"),
(12,"Karen Harris",53000,"2019-12-20"),
(13,"Leo Martin",67000,"2021-03-05"),
(14,"Mia Clark",49000,"2018-08-22"),
(15,"Nina Lewis",72000,"2022-01-10");

select * from employee;

SELECT empId, upper(name) as employeeName, datediff(curdate(),joiningDate) as 
days from employee;

SELECT
    CONCAT(
        'His name is ', upper(name),
        ' and his salary is ', salary,
        '. He has been with the company for ',
        DATEDIFF(CURDATE(), joiningDate),
        ' Days.'
    ) AS employeeDetails
FROM employee; 
