DROP TABLE IF EXISTS departamento;


CREATE TABLE IF NOT EXISTS departamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    localizacao VARCHAR(80)
);

INSERT INTO
    departamento 
    (nome, localizacao)
VALUES
    ('Gerência de TI', NULL);

INSERT INTO
    departamento 
    (nome, localizacao)
VALUES
    ('RH', NULL);


INSERT INTO
    departamento
VALUES
    (100, 'Financeiro', 'Bloco B, Terceiro Andar 310');

INSERT INTO
    departamento (nome)
VALUES
    ('Terceirizacao');

SELECT * FROM departamento;