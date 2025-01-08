CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255),
tamanho VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL(6,2),
quantidade INT,
datavalidade DATE,
idcategoria BIGINT,
FOREIGN KEY (idcategoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,tamanho) 
VALUES ("Cosméticos","Pequeno");

INSERT INTO tb_categorias(tipo,tamanho) 
VALUES ("Cosméticos","Médio");

INSERT INTO tb_categorias(tipo,tamanho) 
VALUES ("Cosméticos","Grande");

INSERT INTO tb_categorias(tipo,tamanho) 
VALUES ("Remédios","Pequeno");

INSERT INTO tb_categorias(tipo,tamanho) 
VALUES ("Remédios","Grande");


INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Sabonete",2.50,15,"2026-12-07",1);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Shampoo",12.90,12,"2025-12-20",3);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Condicionador",13.90,12,"2025-12-22",3);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Rivotril",52.20,35,"2026-12-22",4);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("KOLI D3",22.50,25,"2025-12-30",5);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Perfume",67.90,10,"2026-12-08",2);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Ibuprofeno",10.90,13,"2025-12-15",4);

INSERT INTO tb_produtos(nome,preco,quantidade,datavalidade,idcategoria) 
VALUES ("Dorflex",7.50,12,"2026-12-07",4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 45.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.idcategoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.idcategoria = tb_categorias.id WHERE tipo LIKE "%cosméticos%" ;



