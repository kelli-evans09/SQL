-- SELECT * FROM Artist;
-- INSERT Artist (ArtistName, YearEstablished) VALUES ('Backstreet Boys', '1993')
-- DELETE FROM Artist WHERE Id=33 or Id=34;
-- SELECT * FROM Artist;

-- SELECT * from Album;
-- INSERT Album (Title, ReleaseDate, AlbumLength, Label, ArtistId) VALUES ('Millennium', '1999', '1234', 'Jive Records', '23')

-- INSERT Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('I want It That Way', '2345', '05/19/1999', '7', '32', '27')
-- DELETE FROM Song WHERE Id=23;

-- INSERT Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Show Me The Meaning Of Being Lonely', '2345', '05/19/1999', '7', '32', '27')

-- SELECT Song.Title AS 'Song Title', Artist.ArtistName AS 'Artist Name', Album.Title AS 'Album Title' FROM Song
-- LEFT JOIN Artist ON Song.ArtistId=Artist.Id
-- LEFT JOIN Album ON Song.AlbumId=Album.Id;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- SELECT Album.Title, Count(Song.Id) AS 'Number Of Songs'
-- FROM Album LEFT JOIN Song ON Song.AlbumId=Album.Id GROUP BY Album.Title;

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- SELECT Artist.ArtistName, Count(Song.Id) AS 'Number Of Songs'
-- FROM Artist LEFT JOIN Song ON Song.ArtistId=Artist.Id GROUP BY Artist.ArtistName;

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
-- SELECT Album.AlbumLength, MAX(Album.AlbumLength) AS 'Longest Duration'
-- FROM Album GROUP BY Album.AlbumLength

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
-- SELECT Song.SongLength, MAX(Song.SongLength) AS 'Longest Song'
-- FROM Song GROUP BY Song.SongLength

-- Modify the previous query to also display the title of the album.
SELECT Top 1 Song.Title, MAX(Song.SongLength) AS 'Longest Song'
FROM Song LEFT JOIN Album ON Song.AlbumId=Album.Id GROUP BY Song.Title
Order by [Longest Song] Desc

-- OR use this method for the same results except for longest album
SELECT Top 1  MAX(Song.SongLength) as 'Max Duration', Album.Title 
FROM Song JOIN Album ON Song.AlbumId=Album.Id Group BY Album.Title 
Order by [Max Duration] Desc