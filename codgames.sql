CREATE DATABASE `VideoGames`; -- https://en.wikipedia.org/wiki/Call_of_Duty

CREATE TABLE `VideoGames`.`COD`
(
  `id` INT(11) NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `release` INT(11) DEFAULT NULL, -- year
  `modes` VARCHAR(100) NOT NULL, -- multiplayer, single-player, zombies, br
  `copies_sold` INT(11) NOT NULL, -- count in millions
  `rating` INT(11) NOT NULL, -- rating scale from 0 - 10, if rate is (0 - 3) = trash, (4 - 7) = its alright could've been better, (8 - 10) great game
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `VideoGames`.`COD` VALUES
(
  (1, 'Call of Duty', 2003, 'single-player, multiplayer', 4.5, 5),
  (2, 'Call of Duty 2', 2005, 'single-player, multiplayer', 6, 5),
  (3, 'Call of Duty 3', 2006, 'single-player, multiplayer', 7.2, 5),
  (4, 'Call of Duty 4: Modern Warfare', 2007, 'single-player, multiplayer', 15.7, 6),
  (5, 'Call of Duty: World at War', 2008, 'single-player, multiplayer, zombies', 15.7, 5),
  (6, 'Call of Duty: Modern Warfare 2', 2009, 'single-player, multiplayer', 22.7, 5),
  (7, 'Call of Duty: Black Ops', 2010, 'single-player, multiplayer, zombies', 30.9, 6),
  (8, 'Call of Duty: Modern Warfare 3', 2011, 'single-player, multiplayer, co-op survival', 30.7, 5),
  (9, 'Call of Duty: Black Ops 2',2012, 'single-player, multiplayer, zombies', 29.5, 8),
  (10, 'Call of Duty: Ghosts', 2013, 'single-player, multiplayer, extinction', 28.8, 0),
  (11, 'Call of Duty: Advanced Warfare', 2014, 'single-player, multiplayer, zombies, co-op survival', 21.7, 6),
  (12, 'Call of Duty: Black Ops 3', 2015, 'single-player, multiplayer, zombies', 26.7, 10),
  (13, 'Call of Duty: Infinite Warfare', 2016, 'single-player, multiplayer, zombies', 13.2, 9),
  (14, 'Call of Duty: WWII', 2017, 'single-player, multiplayer, zombies', 19.8, 3),
  (15, 'Call of Duty: Black Ops 4', 2018,'multiplayer, zombies, blackout', 3.5, 8),
  (16, 'Call of Duty: Modern Warfare', 2019,'single-player, multiplayer, co-op, warzone', 30, 7),
  (17, 'Call of Duty: Black Ops Cold War', 2020,'single-player, multiplayer, zombies', 5.7, 4)
);

CREATE TABLE `VideoGames`.`COD_plat`
(
  `cod_id` INT(11) NOT NULL,
  `plat1_id` INT(11) DEFAULT NULL,
  `plat2_id` INT(11) DEFAULT NULL,
  `plat3_id` INT(11) DEFAULT NULL,
  `plat4_id` INT(11) DEFAULT NULL,
  `plat5_id` INT(11) DEFAULT NULL,
  `plat6_id` INT(11) DEFAULT NULL,
  `plat7_id` INT(11) DEFAULT NULL,
  `plat8_id` INT(11) DEFAULT NULL,
  `plat9_id` INT(11) DEFAULT NULL,
  `plat10_id` INT(11) DEFAULT NULL,
  `plat11_id` INT(11) DEFAULT NULL,
  `plat12_id` INT(11) DEFAULT NULL,
  `plat13_id` INT(11) DEFAULT NULL,
  `plat14_id` INT(11) DEFAULT NULL,
  PRIMARY KEY (`cod_id`),
  FOREIGN KEY (`cod_id`) REFERENCES `VideoGames`.`COD` (`id`),
  FOREIGN KEY (`plat1_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat2_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat3_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat4_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat5_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat6_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat7_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat8_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat9_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat10_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat11_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat12_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat13_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`),
  FOREIGN KEY (`plat14_id`) REFERENCES `VideoGames`.`plat_types` (`plat_id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `VideoGames`.`COD_plat` VALUES
(
  (1, 1, 2, 3, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 12, NULL, NULL),
  (2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL),
  (3, NULL, 2, 3, 4, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 13, 14),
  (4, 1, 2, 3, 4, 5, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (5, 1, 2, 3, 4, 5, NULL, 7, NULL, 9, NULL, NULL, NULL, 13, NULL),
  (6, 1, 2, 3, NULL, 5, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
  (7, 1, 2, 3, 4, 5, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
  (8, 1, 2, 3, 4, 5, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
  (9, 1, 2, 3, NULL, NULL, 6, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL),
  (10, 1, 2, 3, NULL, NULL, 6, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (11, 1, 2, 3, NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (12, 1, 2, 3, NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (13, 1, NULL, NULL,NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (14, 1, NULL, NULL,NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (15, 1, NULL, NULL,NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (16, 1, NULL, NULL,NULL, NULL, NULL, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL),
  (17, 1, NULL, NULL,NULL, NULL, NULL, NULL, 8, 9, 10, 11, NULL, NULL, NULL)
);

CREATE TABLE `VideoGames`.`plat_types`
(
  `plat_id` INT(11) NOT NULL,
  `plat_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`plat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `VideoGames`.`plat_types` VALUES
(
  (1, 'PC'),
  (2, 'XBOX_360'),
  (3, 'PS3'),
  (4, 'Wii'),
  (5, 'NDS'),
  (6, 'WiiU'),
  (7, 'Mobile'),
  (8, 'PS4'),
  (9, 'XBOX_ONE'),
  (10, 'PS5'),
  (11, 'XBOX_S'),
  (12, 'N-Gage'),
  (13, 'PS2'),
  (14, 'XBOX')
);
