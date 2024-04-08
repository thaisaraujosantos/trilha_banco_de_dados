DROP TABLE IF EXISTS departamento;


CREATE TABLE IF NOT EXISTS departamento (
    -- Equivalente a Chave Primaria
    id INT NOT NULL UNIQUE,
    nome VARCHAR(60) NOT NULL,
    localizacao VARCHAR(80)
);


INSERT INTO
    departamento
VALUES
    (1, 'Gerência de TI', NULL);


-- Error: ER_DUP_ENTRY: Duplicate entry '1' for key 'departamento.id'
INSERT INTO
    departamento
VALUES
    (1, 'Gerência de TI', 'Bloco B, Terceiro Andar 310');

INSERT INTO
    departamento
VALUES
    (2, 'RH', 'Bloco B, Quarto Andar, Sala 407');

SELECT * FROM departamento;
