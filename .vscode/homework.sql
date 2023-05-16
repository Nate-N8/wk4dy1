--1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'wahlberg';
--answer 2

--2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- no data

--3. What film does the store have the most of? (search in inventory)
SELECT film_id COUNT(active) as 'number'
FROM inventory
WHERE inventory_id
GROUP BY rating;

--4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customers
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
SELECT manager_staff_id 
FROM store
WHERE manager_staff_id MAX(amount);

--6. How many different district names are there?
SELECT district
FROM address;
-- answer 603

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id
FROM film_actor;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id
FROM customer;

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT rental_rate, COUNT(*) AS sales_count
FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 250;
-- answer 3

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT rating COUNT(*) AS fim_ratings
FROM film
GROUP BY rating

