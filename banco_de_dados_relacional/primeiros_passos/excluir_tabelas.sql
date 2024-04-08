-- DDL

-- Criar nova tabela
USE starwars;
CREATE TABLE IF NOT EXISTS testeTabela (
    id  INT,
    nome VARCHAR(120),
    altura DECIMAL(4, 2),
    destaque BOOLEAN,
    nascimento DATE
);

-- Excluir tabela
DROP TABLE IF EXISTS testeTabela;
DROP TABLE testeTabela;

--Excluir BD
DROP DATABASE planeta;