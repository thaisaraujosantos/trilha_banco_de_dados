DROP TABLE IF EXISTS item_venda;
DROP TABLE IF EXISTS venda;
DROP TABLE IF EXISTS produto;

CREATE TABLE IF NOT EXISTS produto (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (120) NOT NULL,
    preco DECIMAL (8, 2) NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS venda(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS item_venda(
    id_produto INT UNSIGNED NOT NULL,
    id_venda INT UNSIGNED NOT NULL,
    qtde INT NOT NULL DEFAULT 1,
    preco DECIMAL (8, 2) NOT NULL,
    PRIMARY KEY (id_produto, id_venda),
    FOREIGN KEY (id_venda) REFERENCES venda(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);

INSERT INTO produto 
    (nome, preco) 
VALUES 
    ('Caneta', 3.99),
    ('Caderno', 23.49),
    ('Geladeira', 3109.55),
    ('Computador Gamer', 8998.99);

SELECT * FROM produto;

INSERT INTO venda 
    (data) 
VALUES 
    ('2021-02-12 11:30:45'),
    ('2021-02-12 11:33:11'),
    ('2021-02-12 11:39:27'),
    ('2021-02-12 12:08:00');

SELECT * FROM venda;

INSERT INTO item_venda 
    (id_venda, id_produto, qtde, preco) 
VALUES 
    (1, 1, 100, 2.99),
    (2, 2, 2, 23.49),
    (2, 4, 1, 8500),
    (3, 1, 100, 2.99),
    (4, 1, 1, 3000);

SELECT * FROM item_venda;