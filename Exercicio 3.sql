CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(

id BIGINT auto_increment,

nome VARCHAR(255),
nota DOUBLE,
turma INT,
matricula INT,

PRIMARY KEY (id)

);

INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Andreia", 8.5, "2", 12);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Julia", 5.6, 2, 16);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Marcos", 6.6, 1, 22);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Davi", 9.6, 1, 2);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Beatriz", 10.0, 3, 1);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Amelia", 7.5, 1, 1);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Gustavo", 3.6, 2, 18);
INSERT INTO tb_estudante(nome,nota,turma,matricula) VALUES ("Denise", 9.2, 1, 3);

SELECT * FROM tb_estudante;

SELECT * FROM tb_estudante WHERE nota > 7;
SELECT * FROM tb_estudante WHERE nota <7;

UPDATE tb_estudante
SET nota = 6.6
WHERE id = 4;