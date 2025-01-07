CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_RecursosHumanos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255),
salario DECIMAL(6,2),
dataInicio DATE,
PRIMARY KEY (id)
);

INSERT INTO tb_RecursosHumanos(nome, cargo, salario, dataInicio) 
VALUES ("Aline","Diretora",9000.00, "2021-02-15");

INSERT INTO tb_RecursosHumanos(nome, cargo, salario, dataInicio) 
VALUES ("Joana","Gerente",7000.00, "2022-10-27");

INSERT INTO tb_RecursosHumanos(nome, cargo, salario, dataInicio) 
VALUES ("Tom","Assistente",2500.00, "2023-07-19");

INSERT INTO tb_RecursosHumanos(nome, cargo, salario, dataInicio) 
VALUES ("Jean","Supervisor",5500.00, "2020-12-01");

INSERT INTO tb_RecursosHumanos(nome, cargo, salario, dataInicio) 
VALUES ("Luisa","Analista",4500.00, "2024-05-30");

SELECT * FROM tb_RecursosHumanos;

SELECT * FROM tb_RecursosHumanos WHERE salario > 2000;

SELECT * FROM tb_RecursosHumanos WHERE salario < 2000;
