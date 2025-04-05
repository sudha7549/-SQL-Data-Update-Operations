--Drop table if it already exists
DROP TABLE IF EXISTS users;

--Create the users table

CREATE TABLE IF NOT EXISTS users(
   user_id SERIAL PRIMARY KEY,
   username VARCHAR(50) NOT NULL,
   email VARCHAR(100) NOT NULL,
   age INT,
   city VARCHAR(50)
);

   SELECT * FROM users;

--Insert 5 sample users in user table
INSERT INTO users(username, email, age, city)
 VALUES ('Sudhanshu', 'sudha7549@gmail.com', 25, 'Mumbai'),
        ('Sudhan', 'sudhan75@gmail.com', 23, 'Delhi'),
		('Nitish', 'nitish49@gmail.com', 20, 'Bangalore'),
		('Niran', 'niran549@gmail.com', 22, 'Pune'),
		('Annu', 'annu252@gmail.com', 23, 'Chennai');

SELECT username, city, age FROM users;

UPDATE users 
 SET age=28
 WHERE username='Nitish';

SELECT * FROM users ORDER BY user_id ASC;


UPDATE users
 SET city='Bihar'
   Where age>22;

  SELECT * FROM users;

  UPDATE users
 SET age=22, city='kolkata'
   Where username='Sudhan';

UPDATE users
SET age=age+2
WHERE email LIKE '%@gmail.com';

   

   

