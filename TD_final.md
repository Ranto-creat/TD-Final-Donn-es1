# TD Finale - Données1

## Exo1: Fonction d'agregation

1. MCD et l'implémentation dans une base de données

- MCD image in with link: [MCD image](https://github.com/Ranto-creat/TD-Final-Donn-es1/blob/main/MCD.png)

- Creation des tables [creation table](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/All_create_table.sql)

- Tout les insertions [insertions](https://github.com/Ranto-creat/TD-Final-Don-es1/blob/main/All_insert.sql)

2. Insertion de Rakoto dans la base de données

````markdown
INSERT INTO clients
VALUES (15,'Rakoto','Be','RAkoto@gamil.com','Analakely 101','0384653213','Rakoto');
````

````markdown
INSERT INTO produits
VALUES (20, 'yaourt', '2.2', 'nouriture');
````

````markdown
INSERT INTO commander VALUES (15, 20, CURRENT_DATE, 5);
````

1. a. Le nombre d’articles dans la base de données

````markdown
SELECT  COUNT(nom_produit) as nombre_articles FROM produits ;
````
