CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(

id BIGINT auto_increment,

categoria VARCHAR(255),
sabor VARCHAR (255),

PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria,sabor) VALUES ("Grande", "Salgada");
INSERT INTO tb_categorias(categoria,sabor) VALUES ("Premium", "Salgada");
INSERT INTO tb_categorias(categoria,sabor) VALUES ("Broto", "Salgada");
INSERT INTO tb_categorias(categoria,sabor) VALUES ("Broto", "Doce");
INSERT INTO tb_categorias(categoria,sabor) VALUES ("Grande", "Doce");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(

id BIGINT auto_increment,

sabor_pizza VARCHAR(255),
quantidade INT,
preco DECIMAL (4,2),
modo_pgto VARCHAR (255),
categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)

);

INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Frango com Catupiry", 1, 45.99, "Débito", 1);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Camarão", 1, 69.90, "Crédito", 2);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Chocolate com morango", 1, 49.90, "VR", 5);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Brócolis com mussarela", 1, 52.00, "Débito", 1);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Chocolate branco e banana", 1, 29.90, "Dinheiro", 4);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("5 queijos", 1, 39.90, "Credito", 3);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Vegetariana", 1, 40.00, "VR", 3);
INSERT INTO tb_pizzas(sabor_pizza,quantidade,preco,modo_pgto,categoria_id) VALUES ("Romeu e Julieta", 1, 52.00, "Credito", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco > 50 and preco < 100;
SELECT * FROM tb_pizzas WHERE sabor_pizza LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT tb_pizzas.sabor_pizza, tb_categorias.sabor, tb_categorias.categoria FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.id = 5;