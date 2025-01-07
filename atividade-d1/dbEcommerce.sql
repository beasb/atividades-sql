CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
	datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("hidratante corporal",500, "2025-12-31", 120.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("hidratante mãos",200, "2026-09-27", 50.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("hidratante rosto",700, "2025-10-02", 100.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("hidratante pés",170, "2026-09-30", 45.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("hidratante olhos",700, "2028-04-12", 150.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("shampoo",700, "2024-12-31", 70.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("condicionador",600, "2024-12-30", 75.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("hidratante capilar",900, "2024-10-11", 90.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 500 where id = 5;






