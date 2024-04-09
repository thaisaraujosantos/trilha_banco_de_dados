DROP TABLE IF EXISTS pedido;
DROP TABLE IF EXISTS cliente;

CREATE TABLE IF NOT EXISTS cliente (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(120) NOT NULL,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS pedido (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_cliente INT UNSIGNED,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id) 
);

INSERT INTO cliente (nome, email)
VALUES ('Maria', 'mariamaria@xyzmail.com');

INSERT INTO cliente (nome, email, data_cadastro)
VALUES ('Rebeca', 'rebeca123@abcmail.com', '2021-11-10 23:59:23');

SELECT * FROM cliente;