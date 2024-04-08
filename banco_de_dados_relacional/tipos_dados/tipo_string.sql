-- Criar tabela
CREATE TABLE aluno (
    matricula CHAR(10) NOT NULL,
    nome VARCHAR(120) NOT NULL,
    nome_social VARCHAR(80)
);

-- Inserir dados
INSERT INTO aluno
VALUES (
    "202106A6F7", -- matricula
    "Marlos Pinheiro Borges", -- nome
    "Marlin" -- nome_social
);

-- Consultar Tabela
SELECT * FROM aluno;