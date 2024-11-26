-- INSERT valides
INSERT INTO historique (id, dateInscription, nbrVoitureLoue) VALUES (1001, '2023-01-01', 1);
INSERT INTO historique (id, dateInscription, nbrVoitureLoue) VALUES (1002, '2023-02-15', 1);
INSERT INTO historique (id, dateInscription, nbrVoitureLoue) VALUES (1003, '2023-01-01', 1);
INSERT INTO historique (id, dateInscription, nbrVoitureLoue) VALUES (1004, '2023-01-01', 1);

INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id) VALUES (0001, 'Martin', 'Jean', 'jean.martin@example.com', '1985-06-15', '0612345678', '10 rue de Paris', 63, 'France', false, 1001);
INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id) VALUES (0002, 'Halilou', 'Sami', 'sami.halilou@example.com', '1993-02-02', '0612345678', '32 Rue de la roue', 75, 'France', false, 1002);
INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id) VALUES (0003, 'Durant', 'Benjamin', 'benjamin.durant@example.com', '1996-10-26', '0614545678', '24 Rue des meuniers', 32, 'France', true, NULL);
INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id) VALUES (0004, 'Rousso', 'Anthony', 'anthony.rousso@example.com', '2000-06-21', '0612346668', '63 BD lafayette', 63, 'France', false, 1003);
INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id) VALUES (0005, 'Smith', 'Bob', 'bob.smith@example.com', '1974-12-25', '0654824578', '10 main street', 99, 'USA', false, NULL);
INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id) VALUES (0006, 'Fischer', 'Hans', 'hans.fischer@example.com', '1990-09-20', '0654321098', 'Anita-Wiegand-Gasse 77c', 99, 'Germany', true, 1004);

INSERT INTO fournisseur (entreprise, tel, email, siege_social) VALUES ('Audi', '+4930123456789', 'contact@audi.de', 'Ingolstadt');
INSERT INTO fournisseur (entreprise, tel, email, siege_social) VALUES ('BMW', '+4989987654321', 'contact@bmw.de', 'Munich');
INSERT INTO fournisseur (entreprise, tel, email, siege_social) VALUES ('Wolkswagen', '+4940112233445', 'contact@wolkswagen.de', 'Wolfsbourg');

INSERT INTO concession (ville, pays, nb_employes) VALUES ('Paris', 'France', 15);
INSERT INTO concession (ville, pays, nb_employes) VALUES ('Clermont-Ferrand', 'France', 8);
INSERT INTO concession (ville, pays, nb_employes) VALUES ('Berlin', 'Allemagne', 12);
INSERT INTO concession (ville, pays, nb_employes) VALUES ('Los Angeles', 'Etats-Unis', 20);

INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (001, 'Audi', 'R8', 2022, 800.00, 960.00, 'Supercar', 15000, 'Paris', 'Audi', 8000.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (002, 'BMW', 'M4', 2020, 400.00, 480.00, 'Coupe', 25000, 'Paris', 'BMW', 3500.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (003, 'Mercedes-Benz', 'C63 AMG', 2021, 430.00, 516.00, 'Berline', 18200, 'Clermont-Ferrand', NULL, 3000.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (004, 'Audi', 'RS7', 2020, 500.00, 600.00, 'Berline', 32000, 'Clermont-Ferrand', 'Audi', 6000.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (005, 'BMW', 'M3', 2023, 400.00, 476.00, 'Berline', 9530, 'Berlin', 'BMW', 2500.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (006, 'Tesla', 'Roadster', 2024, 1400.00, 1666.00, 'Coupe Electrique', 3000, 'Berlin', NULL, 12000.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (007, 'Mercedes-Benz', 'G63', 2023, 900.00, 978.75, 'SUV', 12000, 'Los Angeles', NULL, 10000.00);
INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id, caution) VALUES (008, 'Porsche', 'Cayenne', 2024, 600.00, 652.50, 'SUV', 8000, 'Los Angeles', 'Wolkswagen', 8000.00);

INSERT INTO location (client_id, voiture_id, debut, fin) VALUES (0001, 001, '2024-11-03', '2024-12-05');
INSERT INTO location (client_id, voiture_id, debut, fin) VALUES (0002, 005, '2024-06-09', '2024-06-12');
INSERT INTO location (client_id, voiture_id, debut, fin) VALUES (0006, 008, '2024-11-16', '2024-11-27');
INSERT INTO location (client_id, voiture_id, debut, fin) VALUES (0004, 003, '2024-11-15', '2025-01-17');


-- INSERT QUI DOIVENT PAS FONCTIONNE
INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id)
VALUES (1, 'Doe', 'John', 'john.doe@example.com', '1980-01-01', '0611111111', '50 rue Lafayette', 75, 'France', false, 1003); -- Erreur avec l'ID

INSERT INTO voiture (id, marque, modele)
VALUES (103, 'Citroen', 'C3'); -- Eléments qui manquent

INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id)
VALUES (104, 'Ford', 'Focus', 2021, 40.00, 48.00, 'Compact', 8000, 'Paris', 'NonExistentSupplier'); -- Clé étrangere invalide

INSERT INTO location (client_id, voiture_id, debut, fin, coutTotal)
VALUES (999, 101, '2023-11-20', '2023-11-25', 210.00); -- Clé étrangere invalide

INSERT INTO fournisseur (entreprise, tel, email, siege_social)
VALUES ('Le nom ici est trop long pour le limite de ID', '0123456789', 'email@example.com', 'Paris'); -- Champ trop grands pour la clé primaire

INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id)
VALUES (NULL, 'Null', 'Value', 'null.value@example.com', '1995-05-05', '0678901234', 'Null Street', 33, 'France', false, 1004); -- Clé primaire ne doit pas etre null

INSERT INTO client (id, nom, prenom, mail, dateNaiss, tel, adresse, departement, pays, entreprise, historique_id)
VALUES (3, 'Invalid', 'Date', 'invalid.date@example.com', '199-15-15', '0612345678', 'Unknown', 1, 'France', false, 1003); -- Le format de date est invalide

INSERT INTO voiture (id, marque, modele, annee, prix_journalierHT, prix_journalierTTC, typeVoiture, kilometrage, concession_id, fournisseur_id)
VALUES (105, 'Toyota', 'Corolla', 2022, -30.00, -36.00, 'Sedan', 0, 'Paris', 'Toyota Supplier'); -- Nombre négatif invalide

INSERT INTO location (client_id, voiture_id, debut, fin, coutTotal)
VALUES (1, NULL, '2023-11-20', '2023-11-25', 210.00); -- Pas de clé étrangere
