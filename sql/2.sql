-- Задание 2 
SELECT first_name,salary FROM workers, works;
SELECT first_name,salary FROM workers, works
WHERE salary <30000;
SELECT first_name,positions,salary FROM workers, works
WHERE salary <30000;