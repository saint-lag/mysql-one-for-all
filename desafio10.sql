SELECT
	SONGS.title AS nome,
    COUNT(SONG_HISTORY.user_id) AS reproducoes
FROM
	`SpotifyClone`.song AS SONGS
    INNER JOIN `SpotifyClone`.song_history
    AS SONG_HISTORY ON SONGS.id = SONG_HISTORY.song_id
    INNER JOIN `SpotifyClone`.`user` AS USERS
    ON USERS.id = SONG_HISTORY.user_id
WHERE
	USERS.plan_id IN(1,2)
GROUP BY
	SONGS.title
ORDER BY
	reproducoes DESC,
    nome ASC;