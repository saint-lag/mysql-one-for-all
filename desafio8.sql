SELECT
	ARTISTS.artist_name AS artista,
    ALBUMS.title AS album
FROM
	`SpotifyClone`.artist AS ARTISTS
    INNER JOIN `SpotifyClone`.album AS ALBUMS
    ON ARTISTS.id = ALBUMS.artist_id
WHERE
	ARTISTS.artist_name = "Walter Phoenix"
GROUP BY
	artista,
    album;