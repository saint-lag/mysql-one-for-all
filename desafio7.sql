SELECT
	ARTISTS.artist_name AS artista,
    ALBUMS.title AS album,
    COUNT(FAVORITES.user_id) AS seguidores
FROM 
	`SpotifyClone`.artist AS ARTISTS
    INNER JOIN `SpotifyClone`.album AS ALBUMS
    ON ARTISTS.id = ALBUMS.artist_id
    INNER JOIN `SpotifyClone`.user_artist AS FAVORITES
    ON ARTISTS.id = FAVORITES.artist_id
GROUP BY
	ARTISTS.artist_name,
    ALBUMS.title
ORDER BY
	seguidores DESC,
    artista ASC,
    album ASC;