CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
tamanho VARCHAR(255)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
preco DECIMAL(6,2),
datavalidade DATE,
quantidade INT,
idcategoria BIGINT,
FOREIGN KEY (idcategoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(sabor,tamanho) 
VALUES ("Salgada","Média");

INSERT INTO tb_categorias(sabor,tamanho) 
VALUES ("Salgada","Pequena");

INSERT INTO tb_categorias(sabor,tamanho) 
VALUES ("Doce","Grande");

INSERT INTO tb_categorias(sabor,tamanho) 
VALUES ("Doce","Média");

INSERT INTO tb_categorias(sabor,tamanho) 
VALUES ("Salgada","Grande");


INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Peperoni",70.60,"2025-12-15",19,1);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Chocolate Branco",50.30,"2024-12-20",17,4);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Portuguesa",80.90,"2024-10-13",10,5);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Marguerita",90.60,"2025-11-15",18,2);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Chocolate e M&Ms",50.60,"2024-10-15",20,3);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Napolitana",60.80,"2025-12-30",19,2);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("4 Queijos",100.20,"2024-12-23",20,5);

INSERT INTO tb_pizzas(nome,preco,datavalidade,quantidade,idcategoria) 
VALUES ("Brigadeiro",99.90,"2024-10-15",10,3);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.idcategoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.idcategoria = tb_categorias.id WHERE sabor LIKE "%doce%";

