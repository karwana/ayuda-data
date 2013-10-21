SELECT
	`2007a2012`.`Año` AS `año`,
	`países_códigos`.`código` AS `país`,
	ABS(SUM(IF(`2007a2012`.`13. Des AOD (€)` > 0, 0, REPLACE(`2007a2012`.`13. Des AOD (€)`,',','')))) AS `créditos`
FROM 2007a2012
RIGHT JOIN `países_códigos` ON
	`2007a2012`.`16.a. País o región` = `países_códigos`.`nombre`
GROUP BY `Año`, `país`
ORDER BY `año`, `país`;
