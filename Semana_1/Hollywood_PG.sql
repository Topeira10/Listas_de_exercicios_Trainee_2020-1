CREATE TABLE "Movies" (
  "movie_id" int PRIMARY KEY AUTO_INCREMENT,
  "movie_name" varchar(50),
  "release_year" date
);

CREATE TABLE "Actors" (
  "actor_id" int PRIMARY KEY AUTO_INCREMENT,
  "actor_name" varchar(50),
  "gender" varchar(20)
);

CREATE TABLE "Characters" (
  "character_name" varchar(50),
  "actor_id" int,
  "movie_id" int
);

ALTER TABLE "Characters" ADD FOREIGN KEY ("actor_id") REFERENCES "Actors" ("actor_id");

ALTER TABLE "Characters" ADD FOREIGN KEY ("movie_id") REFERENCES "Movies" ("movie_id");

INSERT INTO Movies
(movie_name, release_year)
VALUES
('Django Unchained', '2013-01-18'),
('Inception', '2010-08-06'),
('Pulp Fiction', '1995-02-18'),
('Avenges', '2019-04-26'),
('Lord of the Rings', '2002-01-01');


INSERT INTO Actors
(actor_name, gender)
VALUES
('Leonardo DiCaprio', 'Male'),
('Samuel L. Jackson', 'Male'),
('Uma Turman', 'Female'),
('Robert Downey Jr', 'Male'),
('Orlando Bloom', 'Male');

INSERT INTO Characters
(character_name, idActor, idMovie)
VALUES
('Calvin Candle', 1, 1),
('Cobb', 1, 2),
('Jules Winnfield', 2, 3),
('Tony Stark', 4, 4),
('Legolas', 5, 5);

//2.2

select movie_name from Movies where release_year < '2011-01-01';
select character_name from Characters where character_name like 'C%';

//2.3
update Actors set actor_name = 'Uma Thurman' where actor_name = 'Uma Turman';

//2.4
alter table Actors add birth_date date;
update Actors set birth_date = '1977-01-13' where actor_id = 5;

//2.5
select A.actor_name, B.character_name
 from Actors A
 Left join Characters B on B.actor_id = A.actor_id;
