/* Ejercicio 2. Base de datos Sakila

Para este ejercicio utilizaremos la bases de datos de Sakila. Es una base de datos de ejemplo que simula
una tienda de alquiler de películas. Contiene tablas como film (películas), actor (actores), customer
(clientes), rental (alquileres), category (categorías), entre otras. Estas tablas contienen información
sobre películas, actores, clientes, alquileres y más, y se utilizan para realizar consultas y análisis de datos
en el contexto de una tienda de alquiler de películas. */

USE sakila;

-- =========================================================================================================================
-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados. 

SELECT DISTINCT title 
FROM film;

-- =========================================================================================================================

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".

SELECT title, rating
FROM film
WHERE rating = 'PG-13';

-- =========================================================================================================================

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.

SELECT title, description
FROM film
WHERE description LIKE '%amazing%';

-- =========================================================================================================================

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.

SELECT title, length
FROM film
WHERE length > 120;

-- =========================================================================================================================

-- 5. Recupera los nombres de todos los actores.

SELECT first_name
FROM actor;

-- =========================================================================================================================

-- 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.

SELECT first_name, last_name
FROM actor
WHERE last_name IN ('Gibson');
-- ---------------------------------------------------
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%Gibson%';

-- ^ tambien podría ser
-- ---------------------------------------------------
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Gibson';

-- ^ otra opción

-- =========================================================================================================================

-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20. 

SELECT actor_id, first_name
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

-- =========================================================================================================================

-- 8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación. 

SELECT title, rating
FROM film
WHERE rating NOT IN ('R', 'PG-13');

-- =========================================================================================================================

-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento. 

SELECT rating, COUNT(title) AS total_films
FROM film
GROUP BY rating;                                 

-- =========================================================================================================================

-- 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto
-- con la cantidad de pelícuñas alquiladas.            

SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS total_rental
FROM customer AS c
INNER JOIN rental AS r
USING(customer_id)
GROUP BY customer_id;                        

-- =========================================================================================================================

-- 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.

SELECT ca.name, COUNT(r.rental_id)
FROM category AS ca
INNER JOIN film_category
USING(category_id)
INNER JOIN inventory AS i
USING (film_id)
INNER JOIN rental AS r
USING (inventory_id)
GROUP BY category_id;

                               -- * queremos el recuento de peliculas alquiladas sin repetir? o eso no importa?

SELECT ca.name, COUNT(i.film_id)
FROM category AS ca
INNER JOIN film_category
USING(category_id)
INNER JOIN inventory AS i
USING (film_id)
INNER JOIN rental AS r
USING (inventory_id)
GROUP BY category_id;            -- **dudas existenciales

-- =========================================================================================================================

-- 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.

SELECT rating, AVG(length)
FROM film
GROUP BY rating;

-- =========================================================================================================================

-- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con el title "Indian Love".

SELECT a.first_name, a.last_name, f.title
FROM actor AS a
INNER JOIN film_actor AS fa
USING(actor_id)
INNER JOIN film as f
USING(film_id)
WHERE title = 'Indian Love';

-- =========================================================================================================================

-- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.

SELECT title, description
FROM film
WHERE description LIKE '%dog%' OR '%cat%';

-- =========================================================================================================================

-- 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010. **

SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2010;  

-- =========================================================================================================================









