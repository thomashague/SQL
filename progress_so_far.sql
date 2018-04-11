#enter the sakila database universe
use sakila;

SELECT * FROM actor;

#1a
#Display the first and last names of all actors from the table `actor`
SELECT first_name, last_name FROM actor;

#1b?


#2a
SELECT actor_id, first_name, last_name FROM actor WHERE first_name = 'Joe' ;

#2b

#2c
SELECT * FROM actor WHERE last_name LIKE '%GEN%';


#check out the country table
SELECT * FROM country;

#2d
SELECT country_id, country FROM country WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

#3a
ALTER TABLE actor ADD middle_name VARCHAR(50) AFTER first_name;

#3b
ALTER TABLE actor modify middle_name Blob;

#3c
ALTER TABLE actor DROP middle_name;

#4a
SELECT last_name, COUNT(*) AS num  FROM actor GROUP BY last_name;

#4b
SELECT last_name, COUNT(*) AS num  FROM actor GROUP BY last_name Having COUNT(*) > 1;

#4c
UPDATE actor SET first_name = 'Harpo' WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';

#4d

#5a
describe address;

#6a
describe staff;

SELECT staff.first_name, staff.last_name, address.address
FROM staff
INNER JOIN address ON staff.address_id = address.address_id;

#6b
SELECT * FROM payment;

SELECT staff.first_name, staff.last_name, SUM(payment.amount)
FROM staff
INNER JOIN payment ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id;

#6c
describe film_actor;
describe film;

#SELECT 

#6d Hunchback Impossible appears 6 times
SELECT COUNT(film_id)
FROM inventory
WHERE film_id IN (
SELECT film_id
FROM film 
WHERE title='Hunchback Impossible')

#6e

#7a

#7b

#7c

#7e

#7f

#7g

#7h

#8a

#8b

#8c

#







