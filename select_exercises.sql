use albums_db;
show tables;

-- # 3 a) 31 rows
select * 
from albums;

-- # 3 b) 23 artists
select distinct artist
from albums;

-- # 3 c) id
describe albums;

-- # 3 d) 1967 and 2011
select min(release_date), max(release_date)
from albums;

-- # 4 a) the Dark side of the moon and The Wall
select name 
from albums 
where artist = 'Pink Floyd';

-- # 4 b) 1967
select release_date
from albums 
where name = "Sgt. Pepper's Lonely Hearts Club Band";

-- # 4 c) Grunge, alternative rock
select genre
from albums 
where name = 'Nevermind';

-- # 4 d)
select name 
from albums 
where release_date < '2000' 
and release_date >= '1990';

-- # 5 e)
select name, sales
from albums
where sales < 20;

-- # 5 f) Because they are not valued as 'rock'
select name, genre
from albums 
where genre = 'rock';

