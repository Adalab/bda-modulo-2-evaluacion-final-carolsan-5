-- Fase 2: Creación de la Base de Datos


CREATE SCHEMA IF NOT EXISTS bbdd_peliculas;

USE bbdd_peliculas;

CREATE TABLE IF NOT EXISTS peliculas (
id_pelicula INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50) NOT NULL,
año_lanzamiento YEAR NOT NULL,
duracion INT,
genero VARCHAR(25),
adulto BOOLEAN
);

-- Fase 3: Inserción de los datos en la BBDD

INSERT INTO peliculas (titulo, año_lanzamiento, duracion, genero, adulto)
VALUES
('The Godfather', 1972, 175, 'Crimen', False),
('The Godfather Part II', 1974, 202, 'Crimen', False),
('Pulp Fiction', 1994, 154, 'Crimen', True),
('Forrest Gump', 1994, 142, 'Drama', False),
('The Dark Knight', 2008, 152, 'Acción', False),
('Fight Club', 1999, 139, 'Drama', True),
('Inception', 2010, 148, 'Ciencia ficción', False),
('The Matrix', 1999, 136, 'Ciencia ficción', False),
('The Shawshank Redemption', 1994, 142, 'Drama', False),
('Interstellar', 2014, 169, 'Ciencia ficción', False),
('Gladiator', 2000, 155, 'Acción', False),
('Titanic', 1997, 195, 'Romance', False),
('Avatar', 2009, 162, 'Ciencia ficción', False),
('Saving Private Ryan', 1998, 169, 'Bélico', True),
('The Silence of the Lambs', 1991, 118, 'Thriller', True),
('Se7en', 1995, 127, 'Thriller', True),
('Goodfellas', 1990, 146, 'Crimen', True),
('The Departed', 2006, 151, 'Crimen', True),
('Whiplash', 2014, 106, 'Drama', False),
('La La Land', 2016, 128, 'Musical', False),
('The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'Fantasía', False),
('The Lord of the Rings: The Two Towers', 2002, 179, 'Fantasía', False),
('The Lord of the Rings: The Return of the King', 2003, 201, 'Fantasía', False),
('Star Wars: A New Hope', 1977, 121, 'Ciencia ficción', False),
('Star Wars: The Empire Strikes Back', 1980, 124, 'Ciencia ficción', False),
('Star Wars: Return of the Jedi', 1983, 131, 'Ciencia ficción', False),
('Back to the Future', 1985, 116, 'Aventura', False),
('Jurassic Park', 1993, 127, 'Aventura', False),
('The Lion King', 1994, 88, 'Animación', False),
('Toy Story', 1995, 81, 'Animación', False),
('Finding Nemo', 2003, 100, 'Animación', False),
('Shrek', 2001, 90, 'Animación', False),
('The Incredibles', 2004, 115, 'Animación', False),
('WALL·E', 2008, 98, 'Animación', False),
('Up', 2009, 96, 'Animación', False),
('Spirited Away', 2001, 125, 'Animación', False),
('Princess Mononoke', 1997, 134, 'Animación', True),
('The Green Mile', 1999, 189, 'Drama', True),
('The Truman Show', 1998, 103, 'Drama', False),
('The Social Network', 2010, 120, 'Drama', False),
('Joker', 2019, 122, 'Drama', True),
('Black Panther', 2018, 134, 'Acción', False),
('Iron Man', 2008, 126, 'Acción', False),
('The Avengers', 2012, 143, 'Acción', False),
('Avengers: Endgame', 2019, 181, 'Acción', False),
('Dune', 2021, 155, 'Ciencia ficción', False),
('Mad Max: Fury Road', 2015, 120, 'Acción', True),
('The Revenant', 2015, 156, 'Aventura', True),
('Parasite', 2019, 132, 'Thriller', True),
('Oldboy', 2003, 120, 'Thriller', True),
('The Pianist', 2002, 150, 'Drama', True),
('The Wolf of Wall Street', 2013, 180, 'Biografía', True),
('Her', 2013, 126, 'Drama', False),
('Gravity', 2013, 91, 'Ciencia ficción', False),
('The Shape of Water', 2017, 123, 'Fantasía', True),
('Get Out', 2017, 104, 'Terror', True),
('It', 2017, 135, 'Terror', True),
('The Conjuring', 2013, 112, 'Terror', True),
('A Quiet Place', 2018, 90, 'Terror', False),
('The Exorcist', 1973, 122, 'Terror', True),
('The Shining', 1980, 144, 'Terror', True),
('Blade Runner', 1982, 117, 'Ciencia ficción', True),
('Blade Runner 2049', 2017, 164, 'Ciencia ficción', True),
('Alien', 1979, 117, 'Ciencia ficción', True),
('Aliens', 1986, 137, 'Ciencia ficción', True),
('The Terminator', 1984, 107, 'Acción', True),
('Terminator 2: Judgment Day', 1991, 137, 'Acción', False),
('Rocky', 1976, 120, 'Drama', False),
('Raging Bull', 1980, 129, 'Biografía', True),
('Taxi Driver', 1976, 113, 'Drama', True),
('Casablanca', 1942, 102, 'Romance', False),
('Citizen Kane', 1941, 119, 'Drama', False),
('Psycho', 1960, 109, 'Terror', True),
('Vertigo', 1958, 128, 'Suspense', False),
('Rear Window', 1954, 112, 'Suspense', False),
('12 Angry Men', 1957, 96, 'Drama', False),
("Schindler's List", 1993, 195, 'Drama', True),
('American Beauty', 1999, 122, 'Drama', True),
('No Country for Old Men', 2007, 122, 'Crimen', True),
('The Big Lebowski', 1998, 117, 'Comedia', True),
('Amélie', 2001, 122, 'Romance', False),
('The Intouchables', 2011, 112, 'Drama', False),
('City of God', 2002, 130, 'Crimen', True),
("Pan's Labyrinth", 2006, 118, 'Fantasía', True),
('Roma', 2018, 135, 'Drama', True),
('Slumdog Millionaire', 2008, 120, 'Drama', False),
('Million Dollar Baby', 2004, 132, 'Drama', True),
("The King's Speech", 2010, 118, 'Biografía', False),
('Argo', 2012, 120, 'Thriller', False),
('Moonlight', 2016, 111, 'Drama', True),
('Manchester by the Sea', 2016, 137, 'Drama', True),
('Birdman', 2014, 119, 'Drama', True),
('Django Unchained', 2012, 165, 'Western', True),
('Inglourious Basterds', 2009, 153, 'Bélico', True),
('The Hateful Eight', 2015, 168, 'Western', True),
('La vita è bella', 1997, 116, 'Drama', False),
('Requiem for a Dream', 2000, 102, 'Drama', True),
('Memento', 2000, 113, 'Thriller', True),
('Eternal Sunshine of the Spotless Mind', 2004, 108, 'Drama', False),
('Donnie Darko', 2001, 113, 'Drama', True);


-- Fase 4: Obtener información a partir de los datos

-- 1. ¿Cuántas películas tienen una duración superior a 120 minutos?


SELECT COUNT(titulo) AS peliculas_largas
FROM peliculas
WHERE duracion > 120;

-- 2. ¿Cuántas películas tienen contenido adulto?

SELECT COUNT(titulo) AS total_peliculas, adulto
FROM peliculas
WHERE adulto = 1;

-- -------------------------------------------- queria que dijeran 'si' en lugar de 1

SELECT COUNT(titulo) AS total_peliculas,
CASE 
	  WHEN adulto = 0 THEN 'No'
      WHEN adulto = 1 THEN 'Si'
	END AS contenido_adulto
FROM peliculas
WHERE adulto = 1;

-- 3. ¿Cuál es la película más antigua registrada en la base de datos?

SELECT titulo AS pelicula_antigua, año_lanzamiento
FROM peliculas
ORDER BY año_lanzamiento ASC
LIMIT 1;

-- -------------------------- subconsulta?

SELECT titulo AS pelicula_antigua, año_lanzamiento
FROM peliculas
WHERE año_lanzamiento = (
    SELECT MIN(año_lanzamiento)
    FROM peliculas
);

-- 4. Muestra el promedio de duración de las películas agrupado por género.

SELECT genero, AVG(duracion) AS promedio_duracion
FROM peliculas
GROUP BY genero;


-- 5. ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.

SELECT año_lanzamiento, COUNT(titulo) AS total_peliculas
FROM peliculas
GROUP BY año_lanzamiento
ORDER BY COUNT(titulo) DESC; 

-- 6. ¿Cuál es el año con más películas en la base de datos?

SELECT año_lanzamiento, COUNT(titulo) AS total_peliculas
FROM peliculas
GROUP BY año_lanzamiento
ORDER BY COUNT(titulo) DESC
LIMIT 1; 


-- 7. Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.

SELECT genero, COUNT(titulo) AS total_peliculas
FROM peliculas
GROUP BY genero;

-- 8. Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra).

SELECT titulo AS peliculas_con_godfather
FROM peliculas
WHERE titulo LIKE '%godfather%';




