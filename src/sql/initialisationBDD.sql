DROP TABLE IF EXISTS itemCarte ;
CREATE TABLE itemCarte (idItemCarte INT  AUTO_INCREMENT NOT NULL,
nom VARCHAR(20),
type ENUM('SANDWICH', 'PANINI', 'SALADE', 'PIZZA','BOISSON','DESSERT','MENU'),
description VARCHAR(200),
img VARCHAR(100),
disponible BOOL,
prix DECIMAL,
PRIMARY KEY (idItemCarte) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS commande ;
CREATE TABLE commande (idCommande INT  AUTO_INCREMENT NOT NULL,
Date VARCHAR(10),
idClient INT NOT NULL,
PRIMARY KEY (idCommande) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS client ;
CREATE TABLE client (idClient INT  AUTO_INCREMENT NOT NULL,
pseudo VARCHAR(20),
password VARCHAR(20),
mail VARCHAR(20),
PRIMARY KEY (idClient) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS contenir ;
CREATE TABLE contenir (idItemCarte INT  AUTO_INCREMENT NOT NULL,
idCommande INT NOT NULL,
PRIMARY KEY (idItemCarte,
 idCommande) ) ENGINE=InnoDB;

ALTER TABLE commande ADD CONSTRAINT FK_commande_idClient FOREIGN KEY (idClient) REFERENCES client (idClient);

ALTER TABLE contenir ADD CONSTRAINT FK_contenir_idItemCarte FOREIGN KEY (idItemCarte) REFERENCES itemCarte (idItemCarte);
ALTER TABLE contenir ADD CONSTRAINT FK_contenir_idCommande FOREIGN KEY (idCommande) REFERENCES commande (idCommande);
