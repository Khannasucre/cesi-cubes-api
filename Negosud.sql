CREATE TABLE `clients` (
  `idclient` int PRIMARY KEY,
  `nomclient` varchar(50),
  `prenomclient` varchar(50),
  `adresseclient` varchar(50),
  `numeroclient` varchar(50)
);

CREATE TABLE `fournisseurs` (
  `idfournisseur` int PRIMARY KEY,
  `nomfournisseur` varchar(50),
  `adressefournisseur` varchar(50),
  `numerofournisseur` varchar(50)
);

CREATE TABLE `familles` (
  `idfamille` int PRIMARY KEY,
  `nomvin` varchar(50),
  `quantite` INT,
  `prixvin` varchar(50),
  `idfournisseur` int,
  `iddomaine` int
);

CREATE TABLE `articles` (
  `idarticle` int PRIMARY KEY,
  `numeroarticle` int,
  `prixarcticle` varchar(50),
  `idfamille` int,
  `idclient` int
);

CREATE TABLE `domaines` (
  `iddomaine` int PRIMARY KEY,
  `nomdomaine` varchar(50),
  `adressedomaine` varchar(50),
  `numerodomaine` varchar(50),
  `idfournisseur` int
);

ALTER TABLE `articles` ADD FOREIGN KEY (`idfamille`) REFERENCES `familles` (`idfamille`);

ALTER TABLE `domaines` ADD FOREIGN KEY (`idfournisseur`) REFERENCES `fournisseurs` (`idfournisseur`);

ALTER TABLE `familles` ADD FOREIGN KEY (`idfournisseur`) REFERENCES `fournisseurs` (`idfournisseur`);

ALTER TABLE `articles` ADD FOREIGN KEY (`idclient`) REFERENCES `clients` (`idclient`);

ALTER TABLE `familles` ADD FOREIGN KEY (`iddomaine`) REFERENCES `domaines` (`iddomaine`);

