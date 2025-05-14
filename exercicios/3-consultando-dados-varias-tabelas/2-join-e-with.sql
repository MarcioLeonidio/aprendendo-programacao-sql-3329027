-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tra.TrackId AS ID,
tra.Name AS Musica,
alb.Title AS Album,
art.Name AS Artista
FROM
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON  art.ArtistId = alb.ArtistId;

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musica AS (
SELECT
tra.TrackId AS ID,
tra.Name AS Musica,
alb.Title AS Album,
art.Name AS Artista
FROM
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON  art.ArtistId = alb.ArtistId)
SELECT Artista,
COUNT(Musica) AS Total_Musicas
FROM musica
WHERE Artista LIKE 'Caetano%';