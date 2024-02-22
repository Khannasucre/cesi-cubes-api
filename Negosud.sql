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
  `quantite` INT
);

CREATE TABLE `articles` (
  `idarticle` int PRIMARY KEY,
  `numeroarticle` int
);

CREATE TABLE `domaines` (
  `iddomaine` int PRIMARY KEY,
  `nomdomaine` varchar(50),
  `adressedomaine` varchar(50),
  `numerodomaine` varchar(50)
);

