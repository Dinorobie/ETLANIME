--ETL Project: Anime Ratings Relational Database

--Drop existing tables
DROP TABLE anime_genre;
DROP TABLE genre;
DROP TABLE ratings;
DROP TABLE users;
DROP TABLE anime;

--Creating Tables
CREATE TABLE anime (
    anime_id INT NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
	type VARCHAR NOT NULL,
	episodes INT NOT NULL,
	rating FLOAT,
	num_of_members INT NOT NULL
);

CREATE TABLE genre (
    genre_id INT NOT NULL PRIMARY KEY,
    genre_name VARCHAR NOT NULL
);

CREATE TABLE anime_genre (
	anime_genre_id INT NOT NULL PRIMARY KEY,
    anime_id INT NOT NULL,
    genre_id INT NOT NULL,
	FOREIGN KEY(anime_id)REFERENCES anime(anime_id),
	FOREIGN KEY(genre_id)REFERENCES genre(genre_id)
);

CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY,
    country VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	age INT NOT NULL
);

CREATE TABLE ratings (
	ratings_id INT NOT NULL PRIMARY KEY,
    user_id INT NOT NULL,
    anime_id INT NOT NULL,
	rating INT NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY(anime_id) REFERENCES anime(anime_id)
);

--ALTER TABLE genre 
--ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id)REFERENCES genre(genre_id);

--ALTER TABLE anime_genre 
--ADD CONSTRAINT fk_anime_id FOREIGN KEY(anime_id)REFERENCES anime(anime_id),
--ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id)REFERENCES genre(genre_id);

	
--ALTER TABLE ratings 
--	ADD CONSTRAINT fk_user_id FOREIGN KEY(user_id)REFERENCES users (user_id),
--	ADD CONSTRAINT fk_anime_id FOREIGN KEY(anime_id)REFERENCES anime (anime_id);
	
--Testing Queries	
SELECT * FROM ratings 
LIMIT(10);
