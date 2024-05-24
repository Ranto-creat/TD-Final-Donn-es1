# TD Finale - Données1

## Exo1: Fonction d'agregation

### 1. MCD et l'implémentation dans une base de données

- ``MCD image in with link``: [**``MCD image``**](https://github.com/Ranto-creat/TD-Final-Donn-es1/blob/main/MCD.png)

- ``Creation des tables``: [**``All create table``**](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/All_create_table.sql)

- ``Tout les insertions``: [**``All insert``**](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/All_insert.sql)

### 2. Insertion de Rakoto dans la base de données

````sql
INSERT INTO clients
VALUES (15,'Rakoto','Be','Rakoto@gamil.com','Analakely 101','0384653213','Rakoto');
````

````sql
INSERT INTO produits
VALUES (20, 'yaourt', '2.2', 'nouriture');
````

````sql
INSERT INTO mode_de_payement (id_payement, payement_type) VALUES
(1, 'M'); -- MVola = 'M'
````

````sql
INSERT INTO commander VALUES (15, 20, CURRENT_DATE, 5);
````

````sql
INSERT INTO choisir (id_client, id_payement) VALUES
(15, 1);
````

### 3.a. Le nombre d’articles dans la base de données

````sql
SELECT  COUNT(nom_produit) as nombre_articles FROM produits ;
````

### 3.b. afficher en même temps le prix unitaire le moins cher, et le prix unitaire le plus cher

````sql
SELECT 
    type,
    MIN(prix) AS prix_minimum,
    MAX(prix) AS prix_maximum
FROM 
    produits
GROUP BY 
    type;
````

### 3.c. Afficher chaque commande de Rakoto avec notamment le prix total payé par commande

````sql
SELECT 
    p.nom_produit,
    c.quantite,
    p.prix * c.quantite AS prix_total
FROM 
    commander c
INNER JOIN 
    produits p ON c.id_produit = p.id_produit
INNER JOIN 
    clients cl ON c.id_client = cl.id_client
WHERE 
    cl.nom_client = 'Rakoto';
````

### 3.d. Afficher chaque nom d’article, avec la quantité totale vendue

````sql
SELECT 
    p.nom_produit,
    SUM(c.quantite) AS quantite_total_vendue
FROM commander c
INNER JOIN produits p ON c.id_produit = p.id_produit GROUP BY p.nom_produit
ORDER BY quantite_total_vendue DESC;
````

### 3.e. Afficher le total des commandes payées pour cette année ci

````sql
SELECT SUM(produits.prix * commander.quantite) AS total_gagne
FROM commander
INNER JOIN produits ON commander.id_produit = produits.id_produit
WHERE EXTRACT(YEAR FROM commander.date_commande) = EXTRACT(YEAR FROM CURRENT_DATE);
````

## Exo2: Vues et index basiques

- réseau social data base : [**``reseau social``**](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/database_reseau.sql)

### 1. Proposition de  solution pour améliorer les performances des requêtes SELECT

#### L'utilisation l'indexation permettra d'accélérer la recherche et la récupération des données

````sql
CREATE INDEX idx_first_name ON user (first_name);
````

***Exemple d'utilisation***

````sql
SELECT * FROM user WHERE first_name = 'John';
````

### 2. Creation de ``VIEW`` à la table "user" qui affiche(nom, prenom, âge, e-mail, et le nombre de post posté)

````sql
CREATE VIEW user_publics AS
SELECT 
    u.last_name,
    u.first_name,
    u.email,
    u.age,
    COUNT(p.id) AS nombre_de_posts
FROM 
    "user" AS u
LEFT JOIN 
    post AS p ON u.id = p.user_id
GROUP BY 
    u.id, u.last_name, u.first_name, u.date_of_birth, u.email;
````

### 3. Afficher la liste des utilisateurs qui ont moins de 20 ans qui ont déjà posté

````sql
SELECT *
FROM user_publics
WHERE age < 20 AND nombre_de_posts > 0;
````

### 4. Afficher la liste des utilisateurs qui ont moins de 20 ans qui ont déjà posté (Sans utiliser ``VIEW``)

````sql
SELECT 
    u.last_name,
    u.first_name,
    u.age,
    u.email,
    COUNT(p.id) AS nombre_de_posts
FROM "user" u INNER JOIN post p ON u.id = p.user_id
GROUP BY 
    u.id, u.last_name, u.first_name, u.date_of_birth, u.email
HAVING 
    age < 20 AND COUNT(p.id) > 0;
````
