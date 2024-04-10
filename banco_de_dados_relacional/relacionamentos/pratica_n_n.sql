DROP TABLE IF EXISTS ator_filme;
DROP TABLE IF EXISTS filme;
DROP TABLE IF EXISTS ator;


CREATE TABLE IF NOT EXISTS ator (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS filme (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS ator_filme (
    id_ator INT UNSIGNED NOT NULL,
    id_filme INT UNSIGNED NOT NULL,
    nota_atuacao DECIMAL(4, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY(id_ator, id_filme),
    FOREIGN KEY(id_ator) REFERENCES ator(id),
    FOREIGN KEY(id_filme) REFERENCES filme(id)
);

INSERT INTO 
    ator (nome) 
VALUES  
    ('Ana'), 
    ('Pedro'), 
    ('Fernanda');

SELECT * FROM ator;

INSERT INTO 
    filme (nome) 
VALUES 
    ('Uma história de amor'), 
    ('Guerra Mundial'), 
    ('Todo mundo louco!');

SELECT * FROM filme;

INSERT INTO 
    ator_filme (id_ator, id_filme, nota_atuacao) 
VALUES 
    (1, 1, 8.2),
    (1, 2, 6.3),
    (1, 3, 9.8),
    (2, 1, 5.2),
    (2, 2, 4.7),
    (2, 3, 6.1),
    (3, 1, 9.2),
    (3, 2, 9.2),
    (3, 3, 9.8);

SELECT * FROM ator_filme;


