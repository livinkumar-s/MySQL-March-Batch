USE marchbatch;

CREATE TABLE user_details (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT NOT NULL,
    password VARCHAR(255) NOT NULL,

);

insert into user_details (name, email, age, password) values 
('Eve Wilson', 'eve.wilson@example.com', 28, 'evesspassword');

select * from user_details;

CREATE VIEW usermail AS SELECT name,email from user_details;
SELECT * FROM usermail;

CREATE VIEW userView AS SELECT name,age,email from user_details;
CREATE VIEW adminView AS SELECT email,password from user_details;
