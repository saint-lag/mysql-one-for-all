SELECT 
	USERS.username AS usuario,
    COUNT(SONG_HISTORY.song_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(SONGS.length_in_sec/60), 2) AS total_minutos
FROM
	`SpotifyClone`.`user` AS USERS
    INNER JOIN `SpotifyClone`.song_history AS SONG_HISTORY ON USERS.id = SONG_HISTORY.user_id
	INNER JOIN `SpotifyClone`.song AS SONGS ON SONG_HISTORY.song_id = SONGS.id
GROUP BY
	usuario
ORDER BY
	usuario;
