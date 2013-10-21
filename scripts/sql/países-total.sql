SELECT
	`2007a2012`.`Año` AS `año`,
	`países_códigos`.`código` AS `país`,
	SUM(REPLACE(2007a2012.`13. Des AOD (€)`,',','')) AS `total`
FROM 2007a2012
RIGHT JOIN `países_códigos` ON
	`2007a2012`.`16.a. País o región` = `países_códigos`.`nombre`
GROUP BY `Año`, `país`
ORDER BY `año`, `país`;
