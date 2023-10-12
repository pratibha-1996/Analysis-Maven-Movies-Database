-- Write a SQL query to count the number of characters except the spaces for each actor. Return first 10 actors name length along with their name.
Select length(concat(first_name,last_name)) as length, concat(first_name,' ',last_name) as Name
from mavenmovies.actor
order by length desc
limit 10;

-- List all Oscar awardees(Actors who received Oscar award) with their full names and length of their names.

-- Find the actors who have acted in the film ‘Frost Head’.

-- Pull all the films acted by the actor ‘Will Wilson’.

-- Pull all the films which were rented and return in the month of May.

-- Pull all the films with ‘Comedy’ category.



-- Write a SQL query to find the actors who played a role in the movie 'Annie IDENTITY’. Return all the fields of the actor table.

USE mavenmovies;
SELECT A.FIRST_NAME,A.LAST_NAME FROM ACTOR A
INNER JOIN FILM_ACTOR FA
ON A.ACTOR_ID=FA.ACTOR_ID
INNER JOIN FILM F
ON FA.FILM_ID=F.FILM_ID
WHERE F.TITLE="Annie IDENTITY";

-- Which customer has the highest customer ID number, whose first name starts with an 'E' and has an address ID lower than 500?

SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME FROM CUSTOMER
WHERE ADDRESS_ID<500 AND FIRST_NAME LIKE "E%"
ORDER BY CUSTOMER_ID DESC
LIMIT 1;

-- Find the films which are rented by both Indian and Pakistani customers. (Hint: You can use CTE’s)

-- Find the films (if any) which are rented by Indian customers and not rented by Pakistani customers.

-- Find the customers who paid a sum of 100 dollars or more, for all the rentals taken by them.