-- Задание 1

CREATE DATABASE IF NOT EXISTS company;
USE company;
CREATE TABLE IF NOT EXISTS workers (
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL
);

INSERT INTO workers (id, first_name, last_name) VALUES (null,'Igor','Avdeev');
INSERT INTO workers (id, first_name, last_name) VALUES (null, 'Denis','Kovalev');
INSERT INTO workers (id, first_name, last_name) VALUES (null,'Katerina','Arsentieva');
INSERT INTO workers (id, first_name, last_name) VALUES (null,'Nataliya','Khakimova');
INSERT INTO workers (id, first_name, last_name) VALUES (null, 'Vera', 'Krasnova');

 

CREATE TABLE IF NOT EXISTS works (
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
positions VARCHAR(30),
salary INT, 
currency CHAR 
);
INSERT INTO works (id, positions, salary, currency) VALUES (null, 'Dsigner', 26874, '₽');
INSERT INTO works (id, positions, salary, currency) VALUES (null, 'Manager', 40174, '₽');
INSERT INTO works (id, positions, salary, currency) VALUES (null, 'Accountant', 32578, '₽');
INSERT INTO works (id, positions, salary, currency) VALUES (null, 'Cleaner', 14065, '₽');
ALTER TABLE wokers ADD work_id INTEGER NOT NULL;
UPDATE workers SET work_id=1 WHERE id IN (1, 4);
UPDATE workers SET work_id=2 WHERE id=2;
UPDATE workers SET work_id=3 WHERE id=3; 
UPDATE workers SET work_id=5 WHERE id=5;

SELECT worker.first_name, worker.last_name, work.positions, work.salary,work.currency
FROM workers worker
INNER JOIN works work ON worker.work_id=work.id;





