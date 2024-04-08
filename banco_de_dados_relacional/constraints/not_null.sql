DROP TABLE IF EXISTS departamento;


CREATE TABLE IF NOT EXISTS departamento (
    id INT NOT NULL,
    nome VARCHAR(60) NOT NULL,
    localizacao VARCHAR(80)
);


-- Error: ER_BAD_NULL_ERROR: Column 'id' cannot be null
INSERT INTO
    departamento
VALUES
    (NULL, 'Gerência de TI', 'Bloco B, Terceiro Andar 310');

-- Error: ER_BAD_NULL_ERROR: Column 'nome' cannot be null
INSERT INTO
    departamento
VALUES
    (1, NULL, 'Bloco B, Terceiro Andar 310');

INSERT INTO
    departamento
VALUES
    (1, 'Gerência de TI', 'Bloco B, Terceiro Andar 310');

INSERT INTO
    departamento
VALUES
    (2, 'RH', NULL);

SELECT * FROM departamento;




