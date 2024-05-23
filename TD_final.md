# TD Finale - Données1

## Exo1: Fonction d'agregation

### 1. MCD et l'implémentation dans une base de données

- ``MCD image in with link``: [MCD image](https://github.com/Ranto-creat/TD-Final-Donn-es1/blob/main/MCD.png)

- ``Creation des tables`` [All create table](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/All_create_table.sql)

- ``Tout les insertions``[All insert](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/All_insert.sql)

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
    commander as c
INNER JOIN 
    produits as p ON c.id_produit = p.id_produit
INNER JOIN 
    clients as cl ON c.id_client = cl.id_client
WHERE 
    cl.nom_client = 'Rakoto';
````

### 3.d. Afficher chaque nom d’article, avec la quantité totale vendue

````sql
SELECT 
    p.nom_produit,
    SUM(c.quantite) AS quantite_total_vendue
FROM commander as c
INNER JOIN produits as p ON c.id_produit = p.id_produit GROUP BY p.nom_produit
ORDER BY quantite_total_vendue DESC;
````
