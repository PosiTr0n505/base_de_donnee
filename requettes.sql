--1. Quels produits ne sont plus en stock ? Qui fournit ces produits ?

SELECT id, marque, modele, typevoiture, f.entreprise from voiture v
join location l on l.voiture_id=id
join fournisseur f on f.entreprise=v.fournisseur_id
WHERE l.fin > CURRENT_DATE;

--2. Quels clients du Puy-de-Dôme ont loué un produit la semaine dernière ?

select DISTINCT c.id, nom, prenom, departement from client c
join location l on l.client_id=c.id
where departement=63 and CURRENT_DATE - l.debut >= 7 and CURRENT_DATE - l.debut <= 14;

--3. Quels sont les pays dans lesquels l’entreprise a des clients ?

select DISTINCT c.pays
from client c;

--4. Pour un fournisseur de votre choix, lister les produits qu’il fournit ainsi que leur prix de location hors taxe (HT) et taxes comprises (TTC)
select v.marque, v.modele, v.typeVoiture, v.prix_journalierHT AS prix_HT,
       v.prix_journalierTTC AS prix_TTC
from voiture v
join fournisseur f ON v.fournisseur_id = f.entreprise
where f.entreprise = 'BMW';

--5. Y a-t-il des articles qui n’ont jamais été loués ? Si oui, lesquels ?
SELECT DISTINCT v.marque, v.modele, v.typeVoiture
FROM voiture v
WHERE v.id NOT IN (select l.voiture_id from location l);

--6. Quel est le produit le plus cher ?
SELECT v.marque, v.modele, v.prix_journalierht, v.prix_journalierTTC
FROM voiture v
ORDER BY v.prix_journalierTTC DESC
LIMIT 1;

--Le moins cher
SELECT v.marque, v.modele, v.prix_journalierht, v.prix_journalierTTC
FROM voiture v
ORDER BY v.prix_journalierTTC ASC
LIMIT 1;
