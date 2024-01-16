use sakila;
select -- 1. In the table actor, which are the actors whose last names are not repeated?
    actor_id, first_name, last_name
from
    actor
where
    last_name not in (select last_name from actor group by last_name having count(*) > 1);
            
select -- 2. Last names that appear more than once
last_name from actor
group by last_name having COUNT(*) > 1;

select -- 3. Number of rentals processed by each employee
	staff_id, COUNT(rental_id) AS rental_count from rental group by staff_id;

select -- 4. Number of films released each year
    extract(year from release_year) as release_year, count(*) as film_count from film group by release_year;

select -- 5. Number of films for each rating
    rating, count(*) as film_count from film group by rating;
    
select -- 6. Mean length of the film for each rating type
    rating, round(avg(length), 2) as mean_length from film group by rating;

select -- 7. Which kind of movies (rating) have a mean duration of more than two hours?
    rating from film group by rating
having avg(length) > 120;








