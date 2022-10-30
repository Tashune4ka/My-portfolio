CREATE DATABASE women_clothing;

USE women_clothing;

CREATE TABLE dresses(
Dress_ID INT NOT NULL,
Article VARCHAR (20) NOT NULL,
Brand VARCHAR (40) NOT NULL, 
Colour VARCHAR (20) NOT NULL, 
Material VARCHAR (20) NOT NULL,
Stock INT NOT NULL,
Price DECIMAL (4,2) NOT NULL, 
PRIMARY KEY (Dress_ID),
UNIQUE (Article)
);

EXPLAIN dresses;

INSERT INTO dresses(Dress_ID, Article, Brand, Colour, Material, Stock, Price)
VALUES ('1', 'MV25633401', 'Zara', 'pink', 'cotton', '24', '44.99'),
('2', 'DU2005330291', 'H&M', 'blue', 'silk', '15', '34.99'),
('3', 'AA25935128', 'Mango', 'green', 'wool', '22', '55.99'),
('4', 'BF42502358', 'H&M', 'yellow', 'linen', '10', '49.99')
;

SELECT * FROM dresses;

UPDATE dresses
SET Brand = 'Uniqlo'
WHERE Dress_ID = 4;

UPDATE dresses
SET Article = 'DU20053302'
WHERE Dress_ID = '2';

SELECT * FROM dresses;

DELETE FROM dresses
WHERE Dress_ID = 4;

SELECT * FROM dresses;
