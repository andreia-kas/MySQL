-- criar um banco de dados
CREATE DATABASE db_rhgeneration;

-- indica o banco de dados a ser usado/manipulado
USE db_rhgeneration;

-- criação da tabela de setor precisa vir primeiro do que a tb de funcionarios
CREATE TABLE tb_setor(
id BIGINT auto_increment,
nome_setor VARCHAR (255),

PRIMARY KEY (id)

);

CREATE TABLE tb_funcionarios(

	id BIGINT auto_increment, 
    
    -- primary key pode ser colocado do lado do id acima também
    
    nome VARCHAR(255),
    
    /*usar o decimal quando estiver trabalhando com dinheiro, 
    pois ele permite usar casas decimais*/
    salario DECIMAL(9,2),
    matricula INT,
	setor_id bigint,
    
    /* fk_setor_id bigint 
    boas praticas para identificar a chave estrangeira*/
    
	PRIMARY KEY (id),
    FOREIGN KEY (setor_id) REFERENCES tb_setor(id)
);

SELECT * FROM tb_setor;
 
 -- query inserção de dados
INSERT INTO tb_setor(nome_setor) VALUES ("Administração");
INSERT INTO tb_setor(nome_setor) VALUES ("Tecnologia");
INSERT INTO tb_setor(nome_setor) VALUES ("Financeiro");

INSERT INTO tb_funcionarios(nome, salario, matricula,setor_id) VALUES ("Wan", 20000,1,3);
INSERT INTO tb_funcionarios(nome, salario, matricula,setor_id) VALUES ("Wellington", 15000,2,1);
INSERT INTO tb_funcionarios(nome, salario, matricula,setor_id) VALUES ("Rosa", 23000,3,2);

SELECT * FROM tb_funcionarios INNER JOIN tb_setor
ON tb_setor.id = tb_funcionarios.setor_id;

ALTER TABLE tb_funcionarios
CHANGE setor_id fk_setor_id BIGINT