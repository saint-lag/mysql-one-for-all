SELECT 
	COUNT(DISTINCT(SONGS.id)) AS cancoes,
    COUNT(DISTINCT(ARTISTS.id)) AS artistas,
    COUNT(DISTINCT(ALBUMS.id)) AS albuns
FROM
	`SpotifyClone`.artist AS ARTISTS
    INNER JOIN `SpotifyClone`.album AS ALBUMS ON ARTISTS.id = ALBUMS.artist_id
    INNER JOIN `SpotifyClone`.song AS SONGS ON ALBUMS.id = SONGS.album_id;