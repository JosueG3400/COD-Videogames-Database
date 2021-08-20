-- Which games where great in your(josue) opinion?
SELECT `title`, `rating`
FROM `VideoGames`.`COD`
WHERE `rating` >= 8;

-- What Call of Duty games have been released in the passed 5 years?
SELECT `title`, `release`
FROM `VideoGames`.`COD`
WHERE `release` >= 2016;

-- Which Call of Duty came out on Nintendo DS?
SELECT `title`, `release`, `plat5_id`, `plat_name`
FROM `VideoGames`.`COD`, `VideoGames`.`COD_plat`, `VideoGames`.`plat_types`
WHERE `COD`.`id` = `COD_plat`.`cod_id`,
AND `COD_plat`.`plat5_id` = `plat_types`.`plat_id`;
