SELECT
	`2007a2012`.`Año` AS `año`,
	`2007a2012`.`16.a. País o región` AS `nombre`,
	`continentes_códigos`.`código` AS `código`,
	SUM(REPLACE(2007a2012.`13. Des AOD (€)`,',','')) AS `total`
FROM 2007a2012
RIGHT JOIN `continentes_códigos` ON
	`2007a2012`.`16.a. País o región` = `continentes_códigos`.`nombre`
GROUP BY `año`, `código`
ORDER BY `año`, `código`;