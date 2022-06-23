CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

	id BIGINT auto_increment,
    
	tipo VARCHAR(255),
    quantidade INT,
    preco DOUBLE,
    sessao VARCHAR(255),
    
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Calça", 12, 591.99, "Feminina");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Camisa social", 12, 291.99, "Feminina");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Blazer mangas bufantes", 15, 691.99, "Feminina");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Saia de couro", 12, 800.99, "Feminina");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Calça social", 10, 691.99, "Masculina");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Sapato social", 3, 399.00, "Masculino");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Blusa", 15, 199.00, "Infantil");
INSERT INTO tb_produtos(tipo,quantidade,preco,sessao) VALUES ("Sandalia", 5, 599.00, "Infantil");


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET tipo = "Cacharrel"
WHERE id = 8;