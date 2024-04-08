DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS funcionario;


CREATE TABLE IF NOT EXISTS departamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    localizacao VARCHAR(80),
    qtde_funcionarios INT NOT NULL 
        CHECK (qtde_funcionarios >= 0)
        DEFAULT 0
);

CREATE TABLE IF NOT EXISTS funcionario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    id_departamento INT NOT NULL,
    salario DECIMAL(7, 2) NOT NULL DEFAULT 2000,
    estado_civil ENUM('solteiro', 'casado', 'divorciado')
        NOT NULL DEFAULT 'solteiro',
    FOREIGN KEY (id_departamento)
        REFERENCES departamento(id)
);


INSERT INTO
    funcionario 
    (nome, id_departamento)
VALUES
    ('Rafael', 2);

INSERT INTO
    funcionario 
    (nome, id_departamento)
VALUES
    ('Bruno', 2);

INSERT INTO
    funcionario 
    (nome, id_departamento)
VALUES
    ('Ana', 1);

SELECT * FROM funcionario;