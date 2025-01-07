CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
turma INT,
nota DECIMAL(6,2),
idade INT,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("John",75, 9.7, 12);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("Paul",75, 8.7, 13);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("George",72, 7.9, 10);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("Ringo",72, 6.8, 11);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("Harrison",73, 4.6, 17);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("Lennon",73, 6.7, 18);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("Mccartney",74, 3.7, 16);
INSERT INTO tb_estudantes(nome, turma, nota, idade) 
VALUES ("Star",74, 2.7, 16);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

UPDATE tb_estudantes SET nota = 7.2 where id = 4;



