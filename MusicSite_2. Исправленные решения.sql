-- Создаём таблицу жанров
CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL
);

-- Создаём таблицу артистов
CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

-- Создаём связь "многие-ко-многим" "Жанры-Артисты"
CREATE TABLE IF NOT EXISTS GenresArtists (
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

-- Создаём таблицу альбомов
CREATE TABLE IF NOT exists Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_of_release INTEGER NOT NULL 
);

-- Создаём связь "многие-ко-многим" "Артисты-Альбомы"
CREATE TABLE IF NOT EXISTS ArtistsAlbums (
	artist_id INTEGER REFERENCES Artists(id),
	album_id INTEGER REFERENCES Albums(id),
	CONSTRAINT pk2 PRIMARY KEY (artist_id,album_id)
);

-- Создаём таблицу ТРЕКОВ
-- Cоздаём связь "один-к-одному" с таблицей альбомов
CREATE TABLE IF NOT EXISTS Trecks (
	id SERIAL PRIMARY KEY ,
	name VARCHAR(80) NOT NULL ,
	duration INTEGER NOT NULL ,
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);

-- Создаём таблицу СБОРНИКОВ
CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year_of_release INTEGER NOT NULL 
);
-- Создаём связь "многие-ко-многим" "Сборники-треки"
CREATE TABLE IF NOT EXISTS CollectionsTrecks (
	сollection_id INTEGER REFERENCES Collections(id),
	treck_id INTEGER REFERENCES Trecks(id),
	CONSTRAINT pk3 PRIMARY KEY (сollection_id,treck_id)	
);

-- ЗАПОЛНЯЕМ ТАБЛИЦЫ 
-- Жанры
INSERT INTO Genres (name)
VALUES ('pop');
INSERT INTO Genres (name)
VALUES ('disco' );
INSERT INTO Genres (name)
VALUES ('rock' );
INSERT INTO Genres (name)
VALUES ('folk' );
INSERT INTO Genres (name)
VALUES ('classical' );
INSERT INTO Genres (name)
VALUES ('jazz' );
INSERT INTO Genres (name)
VALUES ('hip hop' );
INSERT INTO Genres (name)
VALUES ('new age' );

-- Альбомы
INSERT INTO Albums (name,year_of_release)
VALUES ('Sunday',2017);
INSERT INTO Albums (name,year_of_release)
VALUES ('Mondey',2018);
INSERT INTO Albums (name,year_of_release)
VALUES ('Tuesday',2019);
INSERT INTO Albums (name,year_of_release)
VALUES ('Wednesday',2020);
INSERT INTO Albums (name,year_of_release)
VALUES ('Thursday',2021);
INSERT INTO Albums (name,year_of_release)
VALUES ('Friday',2022);

--Сборники
INSERT INTO Collections (name,year_of_release)
VALUES ('Winter',2017);
INSERT INTO Collections (name,year_of_release)
VALUES ('Spring',2018);
INSERT INTO Collections (name,year_of_release)
VALUES ('Summer',2019);
INSERT INTO Collections (name,year_of_release)
VALUES ('Autumn',2020);
INSERT INTO Collections (name,year_of_release)
VALUES ('Yesterday',2021);
INSERT INTO Collections (name,year_of_release)
VALUES ('Today',2022);

-- Артисты 
INSERT INTO Artists (name)
VALUES ('Arkham Knights');
INSERT INTO Artists (name)
VALUES ('Nostalgraph');
INSERT INTO Artists (name)
VALUES ('Kvaii ');
INSERT INTO Artists (name)
VALUES ('Daniel Rigoni');
INSERT INTO Artists (name)
VALUES ('Kohta Imafuku');
INSERT INTO Artists (name)
VALUES ('Huem');
INSERT INTO Artists (name)
VALUES ('Alphacube');
INSERT INTO Artists (name)
VALUES ('Bryn Whiting');
INSERT INTO Artists (name)
VALUES ('Harshil Kamdar');
INSERT INTO Artists (name)
VALUES ('Inversed');
INSERT INTO Artists (name)
VALUES ('Tom Exo ');
INSERT INTO Artists (name)
VALUES ('HALIENE');
INSERT INTO Artists (name)
VALUES ('Discordia');
INSERT INTO Artists (name)
VALUES ('Darren Bax');
INSERT INTO Artists (name)
VALUES ('Alphacube');
INSERT INTO Artists (name)
VALUES ('Darkingz ');
INSERT INTO Artists (name)
VALUES ('Carl Pearce');








-- Треки
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Odyssey',230,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Own ',200,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Autumn Hearts',220,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Lost In The Abyss',130,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Own My',167,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Enja',221,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Myself',203,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Essence Of My Sound',189,1);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My',127,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('The World In My Eyes',330,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('By myself',320,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Odyssey',201,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Oh My God',176,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Orihime',189,2);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Autumn Hearts',212,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('The Hilltop',206,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Beyond the Stars',232,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Bemy Self',250,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Myself By',254,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Southern Winds',175,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('By Myself By',163,3);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Arena',221,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Light ',335,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Emotions',210,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Premyne',189,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Black Sky',195,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Stay With Me',169,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Destiny',230,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Cosmos',210,4);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Waiting for You',230,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Fortress',207,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Janma',200,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Ascension',230,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Permanence',222,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Under Control ',254,5);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Warrior',190,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Aeternum',212,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Only One',200,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Stay With Me',177,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Beemy',187,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('To See You Again',202,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('My Mind',229,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Forgotten',185,6);
INSERT INTO Trecks (name,duration,album_id)
VALUES ('Alphacube',211,6);

-- Таблица- связка "Жанр-Исполнитель"
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,1);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,12);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,3);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,16);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (1,9);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,4);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,2);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,1);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (2,6);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,10);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,4);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,17);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (3,8);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (4,5);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (4,4);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (4,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,15);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,7);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,6);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,17);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (5,2);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,13);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,14);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,7);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,3);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,11);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (6,9);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,17);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,1);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,3);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (7,7);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (8,6);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (8,15);
INSERT INTO GenresArtists (genre_id,artist_id)
VALUES (8,10);

-- Таблица - связка "  Артист-Альбом  "
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (1,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (2,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (3,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (13,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (14,1);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (4,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (5,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (6,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (10,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (11,2);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (7,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (8,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (9,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (6,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (1,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (16,3);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (10,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (11,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (12,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (7,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (3,4);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (13,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (14,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (15,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (2,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (8,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (3,5);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (16,6);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (17,6);
INSERT INTO ArtistsAlbums (artist_id,album_id)
VALUES (10,6);

-- Таблица-связка "Сборники-треки"
INSERT INTO CollectionsTrecks (сollection_id,treck_id)
VALUES (1,3),
	   (1,6),
	   (1,10),
	   (1,13),
	   (1,22),
       (1,27),
       (1,31),
       (1,39),
       (1,44) ;
INSERT INTO CollectionsTrecks (сollection_id,treck_id)
VALUES (2,2),
	   (2,5),
	   (2,9),
	   (2,13),
	   (2,22),
       (2,17),
       (2,25),
       (2,44),
       (3,1),
	   (3,11),
	   (3,17),
	   (3,19),
	   (3,20),
       (3,25),
       (3,28),
       (3,32),
       (3,34),
	   (3,27),
       (3,40),
       (3,41),
       (3,43),
       (4,4),
	   (4,12),
	   (4,15),
	   (4,24),
	   (4,29),
       (4,33),
       (4,38),
       (5,1),
	   (5,18),
	   (5,20),
	   (5,26),
	   (5,28),
       (5,31),
       (5,33),
       (5,39),
       (5,40),
	   (5,41),
       (5,44),
       (6,9),
	   (6,13),
	   (6,17),
	   (6,21),
	   (6,22),
       (6,35),
       (6,38),
       (6,41);



-- ДОРАБОТКА ПЕРВОГО ВАРИАНТА РЕШЕНИЙ ДОМАШНЕГО ЗАДАНИЯ.
-- РЕШЕНИЕ ЗАДАЧ , которые были решены неверно
   
      


-- ЗАДАНИЕ 2 , ЗАДАЧА 5 :
--Вывести название треков, которые содержат слово «мой» или «my».
-- РЕШЕНИЕ(неверное): 
--SELECT name FROM  Trecks
--WHERE name  ILIKE '%My%';

--Исправление
SELECT name FROM  Trecks
WHERE name ILIKE 'My %'
OR name ILIKE '% My'
OR name ILIKE '% My %'
OR name ILIKE 'My'



-- ЗАДАНИЕ 3 , ЗАДАЧА 2
-- Количество треков, вошедших в альбомы 2019–2020 годов.


--  Альбомы
--SELECT id, name,year_of_release FROM  Albums ;
-- Треки   
--SELECT id,name,duration,album_id FROM  Trecks;
-- Объединение Альбомов и Треков
--SELECT al.id,al.name,year_of_release,tr.name,duration FROM Albums al
--JOIN Trecks tr ON al.id=tr.album_id ;

-- РЕШЕНИЕ (неверное):
-- Количество треков, вошедших в альбомы 2019–2020 годов.
--SELECT al.name,COUNT(tr.name) FROM Albums al
--JOIN Trecks tr ON al.id=tr.album_id
--WHERE year_of_release BETWEEN 2019 AND 2020
--GROUP BY al.name ;

-- РЕШЕНИЕ ( исправленное )
SELECT COUNT(tr.name) FROM Albums al
JOIN Trecks tr ON al.id=tr.album_id
WHERE year_of_release BETWEEN 2019 AND 2020





















