CREATE TABLE Category(
	category_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	parent INT DEFAULT NULL
);

INSERT INTO Category VALUES
(1, 'ELECTRONICS', NULL),
(2, 'TELEVISIONS', 1),
(3, 'TUBES', 2),
(4, 'LCD', 2),
(5, 'PLASMA', 2),
(6, 'PORTABLE ELECTRONICS', 2),
(7, 'MP3 PLAYER', 6),
(8, 'FLASH', 7),
(9, 'CD PLAYERS', 6),
(10, '2 WAY RADIOS', 6);

CREATE TABLE nested_category(
	category_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	lft INT NOT NULL,
	rgt INT NOT NULL
);

INSERT INTO nested_category VALUES
(1, 'ELECTRONICS', 1, 20),
(2, 'TELEVISIONS', 2, 9),
(3, 'TUBE', 3, 4),
(4, 'LCD', 5, 6),
(5, 'PLASMA', 7, 8),
(6, 'PORTABLE ELECTRONICS', 10, 19),
(7, 'MP3 PLAYERS', 11, 14),
(8, 'FLASH', 12, 13),
(9, 'CD PLAYERS', 15, 16),
(10, '2 WAY RADIOS', 17, 18);



















































x
