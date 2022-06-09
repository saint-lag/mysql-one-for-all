SELECT
	USERS.username as usuario,
    IF(
		YEAR(MAX(SONG_HISTORY.history_date)) = "2021",
        "Usuário ativo",
        "Usuário inativo"
    ) as condicao_usuario
FROM
	`SpotifyClone`.`user` AS USERS
    INNER JOIN `SpotifyClone`.song_history AS SONG_HISTORY
    ON SONG_HISTORY.user_id = USERS.id
GROUP BY
	usuario
ORDER BY
	usuario;