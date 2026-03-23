Use marchbatch;

select * from actorlist;

insert into actorlist values (4, 'Brad Pitt', 57),
(5, 'Leonardo DiCaprio', 45),
(6, 'Johnny Depp', 57),
(7, 'Tom Cruise', 58),
(8, 'Will Smith', 52),
(9, 'Denzel Washington', 66),
(10, 'Morgan Freeman', 83),
(11, 'Robert De Niro', 77),
(12, 'Al Pacino', 80),
(13, 'Jack Nicholson', 84),
(14, 'Clint Eastwood', 90),
(15, 'Samuel L. Jackson', 72);

insert into actorlist (actorId, name) value (16,"personX");

SELECT * from actorlist where age is null;
SELECT * from actorlist where age>=60;

SELECT * from actorlist WHERE age BETWEEN 70 and 100;

SELECT * from actorlist WHERE age>50 and actorId>5;
SELECT * from actorlist WHERE age>50 or actorId>5;
SELECT * FROM actorlist WHERE NOT age>70;
SELECT * FROM actorlist WHERE age=40 or age=33 or age=30;
SELECT * from actorlist where age in (40,33,30,44,50,52,47,72,84);
SELECT * from actorlist where age not in (40,33,30,44,50,52,47,72,84);
SELECT * from actorlist where name like "% %";

SELECT * FROM actorlist WHERE age>60 ORDER BY actorId asc;

SELECT * from actorlist WHERE age<60 ORDER BY name asc LIMiT 3;
SELECT * from actorlist LIMIT 3 OFFSET 3;

SELECT * FROM actorlist 
ORDER BY age DESC 
LIMIT 1



