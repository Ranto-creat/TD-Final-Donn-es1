-- Insérer des données dans la table clients
INSERT INTO clients (id_client, nom_client, prenom_client, email_client, adress_client, numero_telephone) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@example.com', '123 Rue Principale', '0123456789'),
(2, 'Martin', 'Sophie', 'sophie.martin@example.com', '456 Rue de la Gare', '0987654321'),
(3, 'Lefevre', 'Claude', 'claude.lefevre@example.com', '789 Avenue de la République', '0246813579'),
(4, 'Moreau', 'Nathalie', 'nathalie.moreau@example.com', '12 Boulevard Victor Hugo', '0369258147'),
(5, 'Petit', 'Emilie', 'emilie.petit@example.com', '34 Rue Église', '0483726150'),
(6, 'Durand', 'Marc', 'marc.durand@example.com', '56 Rue des Écoles', '0528374610'),
(7, 'Lemoine', 'Lucie', 'lucie.lemoine@example.com', '78 Rue de la Liberté', '0617253849'),
(8, 'Bernard', 'Louis', 'louis.bernard@example.com', '90 Rue de la Paix', '0748391625'),
(9, 'Roux', 'Anna', 'anna.roux@example.com', '123 Avenue des Champs', '0839162547'),
(10, 'Giraud', 'Paul', 'paul.giraud@example.com', '456 Rue de la République', '0928173645');


INSERT INTO mode_de_payement (id_payement, payement_type) VALUES
(1, 'M'),
(2, 'C');

-- Insérer des données dans la table produits
INSERT INTO produits (id_produit, nom_produit, type_produit, prix) VALUES
(1, 'Smartphone X', 'Électronique', 400000),
(2, 'Laptop Y', 'Électronique', 1300000),
(3, 'Cafetière Z', 'Électroménager', 320000),
(4, 'Grille-pain W', 'Électroménager', 200000),
(5, 'Vélo A', 'Sport', 550000),
(6, 'Tapis de yoga B', 'Sport', 50000),
(7, 'Roman C', 'Livre', 30000),
(8, 'Encyclopédie D', 'Livre', 25000),
(9, 'Pantalon E', 'Vêtements', 20000),
(10, 'Chaussures F', 'Vêtements', 35000);


-- Insérer des données dans la table livreur
INSERT INTO livreur (id_livreur, nom_livreur, numero_livreur) VALUES
(1, 'John Doe', '0384564565'),
(2, 'Jane Smith', '0331246588'),
(3, 'Robert Brown', '0339567894'),
(4, 'Emily White', '0324657982'),
(5, 'Michael Green', '0340567895'),
(6, 'Sarah Black', '0384561654'),
(7, 'David Blue', '0325679845'),
(8, 'Laura Red', '0345678912'),
(9, 'Daniel Grey', '0324568485'),
(10, 'Sophia Purple', '0334568520');


-- Insérer des données dans la table commander
INSERT INTO commander (id_client, id_produit, date_commande, Quantité) VALUES
(1, 1, '2024-01-01', 2),
(2, 2, '2024-01-02', 1),
(3, 3, '2024-01-03', 4),
(4, 4, '2024-01-04', 3),
(5, 5, '2024-01-05', 2),
(6, 6, '2024-01-06', 1),
(7, 7, '2024-01-07', 5),
(8, 8, '2024-01-08', 3),
(9, 9, '2024-01-09', 2),
(10, 10, '2024-01-10', 4);

-- Insérer des données dans la table choisir
INSERT INTO choisir (id_client, id_payement) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insérer des données dans la table livrer
INSERT INTO livrer (id_produit, id_livreur, date_livraison) VALUES
(1, 1, '2024-01-11'),
(2, 2, '2024-01-12'),
(3, 3, '2024-01-13'),
(4, 4, '2024-01-14'),
(5, 5, '2024-01-15'),
(6, 6, '2024-01-16'),
(7, 7, '2024-01-17'),
(8, 8, '2024-01-18'),
(9, 9, '2024-01-19'),
(10, 10, '2024-01-20');
