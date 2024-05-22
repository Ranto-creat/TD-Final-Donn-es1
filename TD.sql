CREATE TABLE clients(
    id_client INT PRIMARY KEY,
    nom_client VARCHAR(100) NOT NULL,
    prenom_client VARCHAR(100) NOT NULL,
    email_client VARCHAR(100) NOT NULL,
    adress_client VARCHAR(100),
    numero_telephone VARCHAR(15),
    mot_de_passe VARCHAR(50)
);
CREATE TABLE commandes(
    id_payement INT,
    payement_type VARCHAR(1),
);
CREATE TABLE produits(
    id_produit INT PRIMARY KEY,
    nom_produit VARCHAR(100) NOT NULL,
    type VARCHAR(100) NOT NULL,
    prix DECIMAL(10, 2)
);
CREATE TABLE livreur(
    id_livreur INT PRIMARY KEY,
    nom_livreur VARCHAR(100) NOT NULL,
    numero_livreur VARCHAR(50) NOT NULL
);
CREATE TABLE commander(
    id_client INT,
    id_produit INT,
    date_commande DATE NOT NULL,
    Quantité INT,
    FOREIGN KEY(id_client) REFERENCES clients(id_client),
    FOREIGN KEY(id_produit) REFERENCES produits(id_produit)
);
CREATE TABLE choisir(
    id_client INT,
    id_payement INT,
    FOREIGN KEY(id_client) REFERENCES clients(id_client),
    FOREIGN KEY(id_payement) REFERENCES commandes(id_payement)
);
CREATE TABLE livrer(
    id_produit INT,
    id_livreur INT,
    date_livraison VARCHAR(50) NOT NULL,
    FOREIGN KEY(id_produit) REFERENCES produits(id_produit),
    FOREIGN KEY(id_livreur) REFERENCES livreur(id_livreur)
);
alter table mode_de_payement
alter column payement_type char(1) check (payement_type in ('M', 'C'));
INSERT INTO produits
VALUES (20, 'yaourt', '2.2', 'nouriture');
alter table produits
add type VARCHAR(100) CHECK (payement_type in ('M', 'C'));
INSERT INTO clients
VALUES (
        15,
        'Rakoto',
        'Be',
        'RAkoto@gamil.com',
        'Analakely 101',
        '0384653213',
        'Rakoto'
    );
INSERT INTO clients
VALUES (15, 'Rakoto', 'Be', '0384653213');

ALTER TABLE mode_de_payement
ALTER COLUMN payement_type
ADD CONSTRAINT check_payement_type CHECK (payement_type IN ('M', 'C'));
ALTER TABLE mode_de_payement
ALTER column payement_type type char(1) CHECK (payement_type IN ('M', 'C'));








INSERT INTO commander VALUES (15, 20, CURRENT_DATE, 5);
INSERT INTO choisir VALUES (15, 'M');




-- Insert data into clients
INSERT INTO clients VALUES (1, 'Dupont', 'Jean', 'jean.dupont@example.com', '123 Rue A', '0600000001', 'password123');
INSERT INTO clients VALUES (2, 'Martin', 'Lucie', 'lucie.martin@example.com', '456 Rue B', '0600000002', 'password123');
INSERT INTO clients VALUES (3, 'Durand', 'Pierre', 'pierre.durand@example.com', '789 Rue C', '0600000003', 'password123');
INSERT INTO clients VALUES (4, 'Bernard', 'Marie', 'marie.bernard@example.com', '101 Rue D', '0600000004', 'password123');
INSERT INTO clients VALUES (5, 'Petit', 'Julien', 'julien.petit@example.com', '102 Rue E', '0600000005', 'password123');
INSERT INTO clients VALUES (6, 'Robert', 'Sophie', 'sophie.robert@example.com', '103 Rue F', '0600000006', 'password123');
INSERT INTO clients VALUES (7, 'Richard', 'Paul', 'paul.richard@example.com', '104 Rue G', '0600000007', 'password123');
INSERT INTO clients VALUES (8, 'Simon', 'Claire', 'claire.simon@example.com', '105 Rue H', '0600000008', 'password123');
INSERT INTO clients VALUES (9, 'Michel', 'Laura', 'laura.michel@example.com', '106 Rue I', '0600000009', 'password123');
INSERT INTO clients VALUES (10, 'Lefevre', 'Nicolas', 'nicolas.lefevre@example.com', '107 Rue J', '0600000010', 'password123');

-- Insert data into commandes
INSERT INTO commandes VALUES (1, 'C');
INSERT INTO commandes VALUES (2, 'D');
INSERT INTO commandes VALUES (3, 'C');
INSERT INTO commandes VALUES (4, 'D');
INSERT INTO commandes VALUES (5, 'C');
INSERT INTO commandes VALUES (6, 'D');
INSERT INTO commandes VALUES (7, 'C');
INSERT INTO commandes VALUES (8, 'D');
INSERT INTO commandes VALUES (9, 'C');
INSERT INTO commandes VALUES (10, 'D');

-- Insert data into produits
INSERT INTO produits VALUES (1, 'Produit A', 'Type 1', 10.00);
INSERT INTO produits VALUES (2, 'Produit B', 'Type 1', 20.00);
INSERT INTO produits VALUES (3, 'Produit C', 'Type 2', 30.00);
INSERT INTO produits VALUES (4, 'Produit D', 'Type 2', 40.00);
INSERT INTO produits VALUES (5, 'Produit E', 'Type 3', 50.00);
INSERT INTO produits VALUES (6, 'Produit F', 'Type 3', 60.00);
INSERT INTO produits VALUES (7, 'Produit G', 'Type 1', 70.00);
INSERT INTO produits VALUES (8, 'Produit H', 'Type 2', 80.00);
INSERT INTO produits VALUES (9, 'Produit I', 'Type 3', 90.00);
INSERT INTO produits VALUES (10, 'Produit J', 'Type 1', 100.00);

-- Insert data into livreur
INSERT INTO livreur VALUES (1, 'Livreur A', '0700000001');
INSERT INTO livreur VALUES (2, 'Livreur B', '0700000002');
INSERT INTO livreur VALUES (3, 'Livreur C', '0700000003');
INSERT INTO livreur VALUES (4, 'Livreur D', '0700000004');
INSERT INTO livreur VALUES (5, 'Livreur E', '0700000005');
INSERT INTO livreur VALUES (6, 'Livreur F', '0700000006');
INSERT INTO livreur VALUES (7, 'Livreur G', '0700000007');
INSERT INTO livreur VALUES (8, 'Livreur H', '0700000008');
INSERT INTO livreur VALUES (9, 'Livreur I', '0700000009');
INSERT INTO livreur VALUES (10, 'Livreur J', '0700000010');

-- Insert data into commander
INSERT INTO commander VALUES (1, 1, '2024-05-01', 2);
INSERT INTO commander VALUES (2, 2, '2024-05-02', 1);
INSERT INTO commander VALUES (3, 3, '2024-05-03', 3);
INSERT INTO commander VALUES (4, 4, '2024-05-04', 1);
INSERT INTO commander VALUES (5, 5, '2024-05-05', 2);
INSERT INTO commander VALUES (6, 6, '2024-05-06', 1);
INSERT INTO commander VALUES (7, 7, '2024-05-07', 3);
INSERT INTO commander VALUES (8, 8, '2024-05-08', 1);
INSERT INTO commander VALUES (9, 9, '2024-05-09', 2);
INSERT INTO commander VALUES (10, 10, '2024-05-10', 1);

-- Insert data into choisir
INSERT INTO choisir VALUES (1, 1);
INSERT INTO choisir VALUES (2, 2);
INSERT INTO choisir VALUES (3, 3);
INSERT INTO choisir VALUES (4, 4);
INSERT INTO choisir VALUES (5, 5);
INSERT INTO choisir VALUES (6, 6);
INSERT INTO choisir VALUES (7, 7);
INSERT INTO choisir VALUES (8, 8);
INSERT INTO choisir VALUES (9, 9);
INSERT INTO choisir VALUES (10, 10);

-- Insert data into livrer
INSERT INTO livrer VALUES (1, 1, '2024-05-11');
INSERT INTO livrer VALUES (2, 2, '2024-05-12');
INSERT INTO livrer VALUES (3, 3, '2024-05-13');
INSERT INTO livrer VALUES (4, 4, '2024-05-14');
INSERT INTO livrer VALUES (5, 5, '2024-05-15');
INSERT INTO livrer VALUES (6, 6, '2024-05-16');
INSERT INTO livrer VALUES (7, 7, '2024-05-17');
INSERT INTO livrer VALUES (8, 8, '2024-05-18');
INSERT INTO livrer VALUES (9, 9, '2024-05-19');
INSERT INTO livrer VALUES (10, 10, '2024-05-20');




