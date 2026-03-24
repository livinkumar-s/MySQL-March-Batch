USE marchbatch;

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(30) not null,
email varchar(50) not null unique,
phone bigint not null unique,
noOfCenturties int CHECK (noOfCenturties>20),
isActive BOOLEAN default 1
);


INSERT INTO cricketer (name,email,phone,noOfCenturties,isActive) VALUES ('Sachin Tendulkar','sachin@example.com',1234567890,25,1),
('Virat Kohli','virat@example.com',0987654321,22,1),
('MS Dhoni','ms@example.com',1122334455,15,1),
('Rohit Sharma','rohit@example.com',1122334455,18,1),
('Suresh Raina','suresh@example.com',1122334455,12,1);

Insert into cricketer (name,email,phone,noOfCenturties) value  ('Rahul Dravid','rahul@example.com',1122334455,30);


CREATE TABLE jersey (
id int primary key auto_increment,
jersey_number int not null unique,
cricketer_id int,
foreign key (cricketer_id) references cricketer(id)
);

CREATE TABLE spouse (
id int primary key auto_increment,
name varchar(30) not null,
cricketer_id int,
foreign key (cricketer_id) references cricketer(id)
);

insert into spouse (name,cricketer_id) values ('Anjali Tendulkar',11),
('Anushka Sharma',12),
('Sakshi Dhoni',13),
('Rohini Sharma',14);

select * from spouse;
