SHOW VARIABLES like '%version%';

DROP TABLE IF EXISTS departamento;


CREATE TABLE IF NOT EXISTS departamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    localizacao VARCHAR(80),
    qtde_funcionarios INT NOT NULL 
        CHECK (qtde_funcionarios >= 0)
        DEFAULT 0
);

-- Error: UNKNOWN_CODE_PLEASE_REPORT: Check constraint 'departamento_chk_1' is violated.
INSERT INTO
    departamento 
    (nome, qtde_funcionarios)
VALUES
    ('RH', -3);

INSERT INTO
    departamento 
    (nome, qtde_funcionarios)
VALUES
    ('RH', 2);

INSERT INTO
    departamento 
    (nome, qtde_funcionarios)
VALUES
    ('TI', 0);

INSERT INTO
    departamento 
    (nome)
VALUES
    ('Financeiro');

SELECT * FROM departamento;