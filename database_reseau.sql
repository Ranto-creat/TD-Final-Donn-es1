-- todo Exo2: Vues et index basiques

CREATE DATABASE reseau_social;

-- \c reseau_social;

CREATE TABLE "user" (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO "user" (id, first_name, last_name, email, date_of_birth) VALUES (1, 'Anne', 'Dubois', 'anne.dubois@example.com', '1993-09-18');
INSERT INTO "user" (id, first_name, last_name, email, date_of_birth) VALUES (2, 'Thomas', 'Rousseau', 'thomas.rousseau@example.com', '1987-06-25');
INSERT INTO "user" (id, first_name, last_name, email, date_of_birth) VALUES (3, 'Camille', 'Mercier', 'camille.mercier@example.com', '1990-12-07');
INSERT INTO "user" (id, first_name, last_name, email, date_of_birth) VALUES (4, 'Nicolas', 'Lefort', 'nicolas.lefort@example.com', '1984-04-30');
INSERT INTO "user" (id, first_name, last_name, email, date_of_birth) VALUES (5, 'Julie', 'Girard', 'julie.girard@example.com', '1996-01-12');

-- Création de la table "post"
CREATE TABLE post (
    id INT PRIMARY KEY,
    user_id INT,
    post_name VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES "user"(id)
);

-- Insertions dans la table "post"
INSERT INTO post (id, user_id, post_name) VALUES (1, 1, 'Analyste de données');
INSERT INTO post (id, user_id, post_name) VALUES (2, 2, 'Ingénieur en logiciel');
INSERT INTO post (id, user_id, post_name) VALUES (3, 3, 'Chef de projet');
INSERT INTO post (id, user_id, post_name) VALUES (4, 4, 'Spécialiste du marketing numérique');
INSERT INTO post (id, user_id, post_name) VALUES (5, 5, 'Infirmière');
