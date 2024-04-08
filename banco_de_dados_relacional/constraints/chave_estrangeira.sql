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

-- Error: ER_NO_REFERENCED_ROW_2: Cannot add or update a child row: a foreign key constraint fails (`constraints`.`funcionario`, CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`))
INSERT INTO
    funcionario 
    (nome, id_departamento)
VALUES
    ('Joao', 112);


SELECT * FROM departamento;
SELECT * FROM funcionario;