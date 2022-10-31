CREATE DATABASE women_clothing1;

USE women_clothing1;

CREATE TABLE colours1(
ColourID INT NOT NULL PRIMARY KEY,   
ColourName VARCHAR (20) NOT NULL
);

INSERT INTO colours1(ColourID, ColourName)
VALUES (1,'red'), (2,'blue'), (3,'yellow'), (4,'pink'), (5,'black'), (6,'white');

CREATE TABLE materials1(
MaterialID INT NOT NULL PRIMARY KEY,   
MaterialName VARCHAR (20) NOT NULL
);

INSERT INTO materials1 (MaterialID, MaterialName)
VALUES (1,'cashmere'), (2,'cotton'), (3,'leather'), (4,'linen'), (5,'silk'), (6,'wool');


CREATE TABLE dresses1(
DressID INT NOT NULL PRIMARY KEY,
Article VARCHAR (20) NOT NULL UNIQUE,
Brand VARCHAR (40) NOT NULL, 
ColourID INT, 
MaterialID INT,
Stock INT NOT NULL,
Price DECIMAL (4,2) NOT NULL, 
KEY ColourID (ColourID),
KEY MaterialID (MaterialID),
CONSTRAINT dresses_ibfk_1 FOREIGN KEY (ColourID) REFERENCES colours1 (ColourID),
CONSTRAINT dresses_ibfk_2 FOREIGN KEY (MaterialID) REFERENCES materials1 (MaterialID)
);

INSERT INTO dresses1(DressID, Article, Brand, ColourID, MaterialID, Stock, Price)
VALUES (1, 'MV25633401', 'Zara', 3, 2, '24', '44.99'),
(2, 'DU2005330291', 'H&M', 1, 5, '15', '34.99'),
(3, 'AA25935128', 'Mango', 5, 1, '22', '55.99'),
(4, 'BF42502358', 'H&M', 6, 3, '10', '49.99')
;