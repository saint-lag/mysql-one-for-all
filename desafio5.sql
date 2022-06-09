SELECT 
	SONGS.title AS cancao,
    COUNT(SONG_HISTORY.song_id) AS reproducoes
FROM 
	`SpotifyClone`.song AS SONGS
    INNER JOIN `SpotifyClone`.song_history AS SONG_HISTORY
    ON SONGS.id = SONG_HISTORY.song_id
GROUP BY
	cancao
ORDER BY
	reproducoes DESC,
    cancao ASC
LIMIT
	2;