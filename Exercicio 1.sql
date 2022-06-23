-- criar um banco de dados
CREATE DATABASE db_rhgeneration;

-- indica o banco de dados a ser usado/manipulado
USE db_rhgeneration;

CREATE TABLE tb_funcionarios(

	id BIGINT auto_increment, 
    
    -- pRIMARY KEY pode ser colocado do lado do id acima também
    
    nome VARCHAR(255),
    
    /*usar o decimal quando estiver trabalhando com dinheiro, 
    pois ele permite usar casas decimais*/
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT,

	PRIMARY KEY (id)
);

-- tras todos os dados da tabela de funcionarios
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT nome, setor, matricula, MAX(salario) AS MaiorSalario FROM tb_funcionarios; 

-- SELECT * FROM tb_funcionarios WHERE salario < 2000;



-- inserindo dados dentro da tabela
INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Andreia", 10000.60, "Tecnologia", 03);

-- query de atualização 
UPDATE tb_funcionarios
SET nome = "Marcelo"
WHERE id = 2;

SET SQL_SAFE_UPDATES = 1;

DELETE FROM tb_funcionarios;
-- delete from (nome da tabela) where (linha que deleta)
