SHOW CREATE TABLE aluno;

-- Resultado do comando SHOW CREATE
CREATE TABLE `aluno` ( 
`matricula` char(10) NOT NULL, `nome` varchar(120) NOT NULL, `nome_social` varchar(80) DEFAULT NULL, `semestre` tinyint DEFAULT NULL, `creditos_cursados` smallint DEFAULT NULL, `media_geral` decimal(4,2) DEFAULT NULL, `data_ingresso` date NOT NULL, `data_conclusao` date DEFAULT NULL, `sexo` enum('masculino','feminino') DEFAULT NULL, `periodo` enum('diurno','noturno') NOT NULL, `areas_interesse` set('Big Data','Banco de Dados','Desenvolvimento') DEFAULT NULL, `bolsita` tinyint(1) DEFAULT NULL 
) 