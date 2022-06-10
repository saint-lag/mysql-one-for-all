SELECT
	MIN(PLANS.price) AS faturamento_minimo,
    MAX(PLANS.price) AS faturamento_maximo,
    ROUND(AVG(PLANS.price), 2) AS faturamento_medio,
    SUM(PLANS.price) AS faturamento_total
FROM
	`SpotifyClone`.plan AS PLANS
    INNER JOIN `SpotifyClone`.`user` as USERS
    ON PLANS.id = USERS.plan_id;