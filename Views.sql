USE marchbatch;

CREATE TABLE user_details (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT NOT NULL,
    password VARCHAR(255) NOT NULL

);

insert into user_details (name, email, age, password) values 
('Eve Wilson', 'eve.wilson@example.com', 28, 'evesspassword');

select * from user_details;

CREATE VIEW usermail AS SELECT name,email from user_details;
SELECT * FROM usermail;

CREATE VIEW userView AS SELECT name,age,email from user_details;
CREATE VIEW adminView AS SELECT email,password from user_details;

alter table actors drop column hiii;
truncate table actors;

select * from actors;


create table contacts(
conactId int primary key auto_increment,
name varchar(50),
phone varchar(50),
createdAt datetime,
updatedAt datetime
);

drop table contacts;

select * from contacts;

insert into contacts(name,phone,createdAt,updatedAt) values
('John Doe','1234567890',now(),now()),
('Jane Smith','9876543210',now(),now()),
('Alice Johnson','5555555555',now(),now()),
('Bob Brown','1111111111',now(),now()),
('Charlie Davis','2222222222',now(),now()),
('Eve Wilson','3333333333',now(),now()),
('Frank Miller','4444444444',now(),now()),
('Grace Lee','6666666666',now(),now()),
('Hank Green','7777777777',now(),now()),
('Ivy White','8888888888',now(),now());