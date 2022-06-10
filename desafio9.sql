SELECT
	COUNT(*) AS quantidade_musicas_no_historico
FROM
	`SpotifyClone`.user AS USERS
    INNER JOIN `SpotifyClone`.song_history AS SONG_HISTORY
    ON USERS.id = SONG_HISTORY.user_id
WHERE
	USERS.username = "Bill"
GROUP BY
	USERS.username;