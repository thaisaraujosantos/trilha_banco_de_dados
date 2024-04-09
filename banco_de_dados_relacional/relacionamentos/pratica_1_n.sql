-- usuario: id, nome, email
-- postagem: id, titulo, conteudo, id usuario

DROP TABLE IF EXISTS postagem;
DROP TABLE IF EXISTS usuario;

CREATE TABLE IF NOT EXISTS usuario (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS postagem (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(120) NOT NULL,
    conteudo TEXT NOT NULL,
    id_usuario INT UNSIGNED,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

INSERT INTO usuario (id, nome, email)
VALUES (1, 'João', 'joãocarlos@abcmail.com');

INSERT INTO usuario (id, nome, email)
VALUES (2, 'Maria', 'mariacristina@abcmail.com');

INSERT INTO usuario (id, nome, email)
VALUES (3, 'Roberta', 'robertatereza@abcmail.com');

INSERT INTO postagem (id, titulo, conteudo, id_usuario)
VALUES (1, 'Relacionamento 1', 'Conteudo 1', 2);

INSERT INTO postagem (id, titulo, conteudo, id_usuario)
VALUES (2, 'Relacionamento 2', 'Conteudo 2', 2);

INSERT INTO postagem (id, titulo, conteudo, id_usuario)
VALUES (3, 'Relacionamento 3', 'Conteudo 3', 1);

SELECT * FROM usuario;
SELECT * FROM postagem;