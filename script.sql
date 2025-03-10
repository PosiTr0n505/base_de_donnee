DROP TABLE 
location, voiture, pays, concession, 
fournisseur, client;

CREATE TABLE client (
  id numeric(4) PRIMARY KEY,
  nom varchar(50) NOT NULL,
  prenom varchar(50) NOT NULL,
  mail varchar(50) NOT NULL,
  dateNaiss date CHECK (current_date - dateNaiss > 6394) NOT NULL,
  tel varchar(15) NOT NULL,
  adresse varchar(255) NOT NULL,
  departement numeric(2) default 99,
  pays varchar(30),
  entreprise boolean default false
);

CREATE TABLE fournisseur (
  entreprise varchar(30) PRIMARY KEY,
  tel varchar(15) NOT NULL,
  email varchar(50) NOT NULL,
  siege_social varchar(30)
);

CREATE TABLE pays (
  nom varchar(30) PRIMARY KEY,
  taxe numeric (4,2)
);

CREATE TABLE concession (
  ville varchar(30) PRIMARY KEY,
  pays varchar(20) REFERENCES pays(nom),
  nb_employes numeric(2)
);

CREATE TABLE voiture (
  id numeric(3) PRIMARY KEY,
  marque varchar(30) NOT NULL,
  modele varchar(30) NOT NULL,
  annee numeric(4) NOT NULL,
  prix_journalierHT numeric(7,2) NOT NULL,
  typeVoiture varchar(30),
  kilometrage numeric(7), -- a modifier aprés chaque location
  concession_ville varchar(30) REFERENCES concession(ville) NOT NULL,
  fournisseur_id varchar(30) REFERENCES fournisseur(entreprise) default NULL,
  caution numeric(8,2) NOT NULL
);

CREATE TABLE location (
  client_id numeric REFERENCES client(id),
  voiture_id numeric REFERENCES voiture(id),
  debut date NOT NULL,
  fin date NOT NULL,
  PRIMARY KEY (client_id, voiture_id, debut),
  CHECK (fin > debut)
);