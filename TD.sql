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