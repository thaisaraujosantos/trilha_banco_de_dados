DROP TABLE aluno;

-- Criar Tabela
CREATE TABLE aluno (
    matricula CHAR(10) NOT NULL,
    nome VARCHAR(120) NOT NULL,
    nome_social VARCHAR(80),
    semestre TINYINT DEFAULT 1,
    creditos_cursados SMALLINT DEFAULT 0,
    media_geral DECIMAL(4, 2) DEFAULT 0,
    data_ingresso DATE NOT NULL DEFAULT (CURRENT_DATE),
    data_conclusao DATE,
    sexo ENUM('masculino','feminino'),
    periodo ENUM('diurno','noturno') NOT NULL,
    areas_interesse SET('Big Data', 'Banco de Dados', 'Desenvolvimento'),
    bolsita BOOLEAN DEFAULT false
);

-- Inserir dados
INSERT INTO aluno
VALUES (
    "202106A6F7", -- matricula
    "Marlos Pinheiro Borges", -- nome
    "Marlin", -- nome_social
    3, -- semestre
    56, -- creditos_cursados
    8.7, -- medial_geral
    "2021-02-10", -- data_ingresso
    NULL, -- data_conclusao
    'masculino', -- sexo
    'noturno', -- periodo
    'Banco de Dados,Desenvolvimento', -- areas_interesse (não pode ter espaços)
    true -- bolsita
);

-- Consultar Tabela
SELECT * FROM aluno;