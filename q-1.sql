-- CREATE NEW DATABASE
-- CREATE DATABASE pet_shop; 

-- use pet_shop;

-- creating new table cats
-- CREATE TABLE cats (
-- 	cat_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50),
--     breed VARCHAR(50),
--     age INT
-- );

-- Insert into cats table
-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);

-- UPDATE cats SET name='jack' WHERE cat_id=7;
-- UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
-- UPDATE cats SET age=12 WHERE breed='Maine Coon';

-- DELETE from cats WHERE cat_id = age;

-- SELECT * FROM cats;

-- coding challange
-- CREATE DATABASE shirts_db;
-- use shirts_db;

-- Create new table shirts
-- CREATE TABLE shirts (
-- 	shirt_id INT primary key auto_increment,
--     article VARCHAR(20),
--     color VARCHAR(20),
--     shirt_size varchar(1),
--     last_worn INT
-- );

-- INSERTING DATA
-- INSERT INTO shirts (article, color, shirt_size, last_worn) values 
-- ('t-shirt', 'white', 'S', 10),
-- ('t-shirt', 'green', 'S', 200),
-- ('polo shirt', 'black', 'M', 10),
-- ('tank top', 'blue', 'S', 50),
-- ('t-shirt', 'pink', 'S', 0),
-- ('polo shirt', 'red', 'M', 5),
-- ('tank top', 'white', 'S', 200),
-- ('tank top', 'blue', 'M', 15);

-- UPDATE shirts SET shirt_size='L' where article='polo shirt';

-- DELETE from shirts where last_worn>=200;

-- DELETE FROM shirts;
-- DROP DATABASE shirts_db;

-- SELECT * FROM shirts;

-- CREATE TABLE tweets (content varchar(100), username varchar(20), created_at datetime default now());

-- DROP TABLE tweets;



-- CREATE TABLE customers (
-- 	id INT primary KEY auto_increment,
--     first_name varchar(50) not null,
--     last_name varchar(50) not null,
--     email varchar(50) not null
-- );

-- create table orders (
-- 	id int primary key auto_increment,
--     order_date date,
--     amount decimal(8,2) not null,
--     customer_id int,
--     foreign key (customer_id) references customers(id) 
-- );

-- INSERT INTO customers (first_name, last_name, email) 
-- VALUES ('Boy', 'George', 'george@gmail.com'),
--        ('George', 'Michael', 'gm@gmail.com'),
--        ('David', 'Bowie', 'david@gmail.com'),
--        ('Blue', 'Steele', 'blue@gmail.com'),
--        ('Bette', 'Davis', 'bette@aol.com');
       
       
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016-02-10', 99.99, 1),
--        ('2017-11-11', 35.50, 1),
--        ('2014-12-12', 800.67, 2),
--        ('2015-01-03', 12.50, 2),
--        ('1999-04-11', 450.25, 5);



-- select * from customers;
-- select * from orders;

-- inner join
-- select first_name, sum(amount) from customers join orders on customers.id = orders.customer_id group by first_name;

-- create table students (
-- 	id int primary key auto_increment,
--     first_name varchar(20)
-- );

-- create table papers (
-- 	title varchar(20),
--     grade varchar(5),
--     student_id int,
--     foreign key(student_id) references students(id) on delete cascade
-- );

-- alter table papers modify column grade int;
-- alter table papers modify column title varchar(100);

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- select * from students;

-- select first_name, 
-- case
-- 	when title is null then 'missing'
--     else title
-- end as title
-- ,
-- case 
-- 	when grade is null then 0
--     else grade
-- end as grade
-- from students left join papers on students.id = papers.student_id order by grade desc;

-- SELECT 
--     first_name,
--     ifnull(avg(grade), 0) as average
-- FROM
--     students
--         LEFT JOIN
--     papers ON students.id = papers.student_id
-- GROUP BY first_name;

-- SELECT 
--     first_name,
--     ifnull(avg(grade), 0) as average,
--     case 
-- 		when avg(grade) > 70 then 'passing'
--         else 'failing'
-- 	end as passing_status
-- FROM
--     students
--         LEFT JOIN
--     papers ON students.id = papers.student_id
-- GROUP BY first_name;

-- drop table students;

-- create database tv_series;
-- use tv_series;

-- CREATE TABLE reviewers (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL
-- );
 
-- CREATE TABLE series (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(100),
--     released_year YEAR,
--     genre VARCHAR(100)
-- );
 
-- CREATE TABLE reviews (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     rating DECIMAL(2 , 1 ),
--     series_id INT,
--     reviewer_id INT,
--     FOREIGN KEY (series_id)
--         REFERENCES series (id),
--     FOREIGN KEY (reviewer_id)
--         REFERENCES reviewers (id)
-- );
 
-- INSERT INTO series (title, released_year, genre) VALUES
--     ('Archer', 2009, 'Animation'),
--     ('Arrested Development', 2003, 'Comedy'),
--     ("Bob's Burgers", 2011, 'Animation'),
--     ('Bojack Horseman', 2014, 'Animation'),
--     ("Breaking Bad", 2008, 'Drama'),
--     ('Curb Your Enthusiasm', 2000, 'Comedy'),
--     ("Fargo", 2014, 'Drama'),
--     ('Freaks and Geeks', 1999, 'Comedy'),
--     ('General Hospital', 1963, 'Drama'),
--     ('Halt and Catch Fire', 2014, 'Drama'),
--     ('Malcolm In The Middle', 2000, 'Comedy'),
--     ('Pushing Daisies', 2007, 'Comedy'),
--     ('Seinfeld', 1989, 'Comedy'),
--     ('Stranger Things', 2016, 'Drama');
 
 
-- INSERT INTO reviewers (first_name, last_name) VALUES
--     ('Thomas', 'Stoneman'),
--     ('Wyatt', 'Skaggs'),
--     ('Kimbra', 'Masters'),
--     ('Domingo', 'Cortes'),
--     ('Colt', 'Steele'),
--     ('Pinkie', 'Petit'),
--     ('Marlon', 'Crafford');
    
 
-- INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
--     (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
--     (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
--     (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
--     (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
--     (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
--     (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
--     (7,2,9.1),(7,5,9.7),
--     (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
--     (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
--     (10,5,9.9),
--     (13,3,8.0),(13,4,7.2),
--     (14,2,8.5),(14,3,8.9),(14,4,8.9);

-- select title, avg(rating) as avg_rating from series join reviews on series.id = reviews.series_id group by title order by avg_rating;

-- select first_name, last_name, rating from reviewers join reviews on reviewers.id = reviews.reviewer_id;

-- select title from series where id not in (select series_id from reviews);

-- select genre, avg(rating) as avg_rating from series join reviews on series.id = reviews.series_id group by genre;

-- SELECT 
--     first_name,
--     last_name,
--     ifnull(COUNT(rating),0) AS 'count',
--     ifnull(MIN(rating), 0) AS 'min',
--     ifnull(MAX(rating), 0) AS 'max',
--     round(ifnull(AVG(rating), 0), 2)  AS 'avg',
--     case 
-- 		when count(rating) > 0 then 'active'
--         else 'inactive'
-- 	end as status
-- FROM
--     reviewers
--         left JOIN
--     reviews ON reviewers.id = reviews.reviewer_id
-- GROUP BY first_name , last_name; 

-- SELECT 
--     title,
--     rating,
--     CONCAT(first_name, ' ', last_name) AS reviewer
-- FROM
--     reviews
--         JOIN
--     series ON series.id = reviews.series_id
--         JOIN
--     reviewers ON reviewers.id = reviews.reviewer_id;

-- select @@SESSION.sql_modes;

-- CREATE TABLE employees (
--     emp_no INT PRIMARY KEY AUTO_INCREMENT,
--     department VARCHAR(20),
--     salary INT
-- );
--  
-- INSERT INTO employees (department, salary) VALUES
-- ('engineering', 80000),
-- ('engineering', 69000),
-- ('engineering', 70000),
-- ('engineering', 103000),
-- ('engineering', 67000),
-- ('engineering', 89000),
-- ('engineering', 91000),
-- ('sales', 59000),
-- ('sales', 70000),
-- ('sales', 159000),
-- ('sales', 72000),
-- ('sales', 60000),
-- ('sales', 61000),
-- ('sales', 61000),
-- ('customer service', 38000),
-- ('customer service', 45000),
-- ('customer service', 61000),
-- ('customer service', 40000),
-- ('customer service', 31000),
-- ('customer service', 56000),
-- ('customer service', 55000);
 
 
-- SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;
 
-- SELECT 
--     emp_no, 
--     department, 
--     salary, 
--     MIN(salary) OVER(),
--     MAX(salary) OVER()
-- FROM employees;
    
    
-- SELECT 
--     emp_no, department, salary, round(avg(salary) over(partition by department), 2)
-- FROM
--     employees;
--     
-- SELECT 
--     emp_no, 
--     department, 
--     salary,
--     NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
-- 	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
-- FROM employees;


-- Database triggers
-- use book_shop;

-- create table users (name varchar(20), age int);

-- insert into users (name, age) values('abhi', 234);

-- select * from users;

-- -- trigger
-- DELIMITER $$
-- CREATE TRIGGER must_be_adult
-- 	before insert on users for each row
--     begin
-- 		if new.age < 18
--         then
-- 			signal sqlstate '45000'
-- 				set message_text = 'Must be an adult';
-- 		end if;
-- 	end;
-- $$
-- DELIMITER ;