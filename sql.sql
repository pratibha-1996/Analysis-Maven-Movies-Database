-- Write an SQL query to count the number of characters except the spaces for each actor. Return first 10 actors name length along with their name.
Select length(concat(first_name,last_name)) as length, concat(first_name,' ',last_name) as Name
from mavenmovies.actor
order by length desc
limit 10;

-- List all Oscar awardees(Actors who received Oscar awards) with their full names and length of their names.
Select length(concat(first_name,last_name)) as length, concat(first_name,' ',last_name) as Name
from actor_award
where awards like "%Oscar%";

-- Find the actors who have acted in the film ‘Frost Head’.
SELECT FIRST_NAME,LAST_NAME FROM ACTOR A
INNER JOIN FILM_ACTOR FA
ON A.ACTOR_ID=FA.ACTOR_ID
INNER JOIN FILM F
ON FA.FILM_ID=F.FILM_ID
WHERE F.TITLE="FROST HEAD";

-- Pull all the films acted by the actor ‘Will Wilson’.
SELECT F.TITLE FROM ACTOR A
INNER JOIN FILM_ACTOR FA
ON A.ACTOR_ID=FA.ACTOR_ID
INNER JOIN FILM F
ON FA.FILM_ID=F.FILM_ID
WHERE A.FIRST_NAME="WILL" AND A.LAST_NAME="WILSON";

-- Pull all the films which were rented and return in the month of May.
SELECT TITLE FROM FILM F
INNER JOIN INVENTORY T 
ON F.FILM_ID=T.FILM_ID
INNER JOIN RENTAL R
ON T.INVENTORY_ID=R.INVENTORY_ID
WHERE MONTH(R.RENTAL_DATE) =5 AND MONTH(R.RETURN_DATE) =5;

-- Pull all the films with ‘Comedy’ category.
SELECT F.TITLE FROM FILM F
INNER JOIN FILM_CATEGORY FC
ON F.FILM_ID=FC.FILM_ID
INNER JOIN CATEGORY C
ON FC.CATEGORY_ID=C.CATEGORY_ID
WHERE C.NAME="COMEDY";

-- Write a SQL query to find the actors who played a role in the movie 'Annie IDENTITY’. Return all the fields of the actor table.

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
