--DROP TABLE anime
DROP TABLE anime_genre;
--DROP TABLE genre
--DROP TABLE ratings
--DROP TABLE users


CREATE TABLE anime (
    anime_id INT NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
	type VARCHAR NOT NULL,
	episodes INT NOT NULL,
	rating FLOAT NOT NULL,
	num_of_members INT NOT NULL
);

CREATE TABLE genre (
    genre_id INT NOT NULL PRIMARY KEY,
    genre_name VARCHAR NOT NULL
);

CREATE TABLE anime_genre (
    anime_id INT NOT NULL REFERENCES anime (anime_id),
    genre_id INT NOT NULL REFERENCES genre (genre_id)
);

CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY,
    country VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	edad INT NOT NULL
);

CREATE TABLE ratings (
    user_id INT NOT NULL REFERENCES users (user_id),
    anime_id INT NOT NULL REFERENCES anime (anime_id),
	rating INT NOT NULL
);

ALTER TABLE genre 
ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id)REFERENCES genre(genre_id);

ALTER TABLE anime_genre 
ADD CONSTRAINT fk_anime_id FOREIGN KEY(anime_id)REFERENCES anime(anime_id);
ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id)REFERENCES genre(genre_id);

	
ALTER TABLE ratings 
	ADD CONSTRAINT fk_user_id FOREIGN KEY(user_id)REFERENCES users (user_id),
	ADD CONSTRAINT fk_anime_id FOREIGN KEY(anime_id)REFERENCES anime (anime_id);
	
		
SELECT * FROM anime 
LIMIT(10);
