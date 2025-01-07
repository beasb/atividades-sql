CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
armas VARCHAR(255),
vidas INT,
forca INT,
idclasses BIGINT,
FOREIGN KEY (idclasses) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (tipo)
VALUES ("Bruxa");

INSERT INTO tb_classes (tipo)
VALUES ("Arqueiro");

INSERT INTO tb_classes (tipo)
VALUES ("Cavaleiro");

INSERT INTO tb_classes (tipo)
VALUES ("Caçador");

INSERT INTO tb_classes (tipo)
VALUES ("Guerreiro");


INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Lyra","Arco e Flecha",3,53,4);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Ragnar","Espada Lua",7,100,5);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Uther","Katana",8,270,3);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Morgana","Cajado",13,310,1);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Apollo","Arco e Flecha",10,180,2);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Artemis","Arco e Flecha",5,193,2);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Grimm","Varinha",13,100,1);

INSERT INTO tb_personagens (nome,armas,vidas,forca,idclasses)
VALUES ("Gwyn","Espada Machete",7,177,5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE forca BETWEEN 100 AND 200;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.idclasses = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.idclasses = tb_classes.id WHERE tipo LIKE "%arqueiro%";

SELECT * FROM tb_personagens as pers  INNER JOIN tb_classes cla 
ON pers.idclasses = cla.id WHERE tipo LIKE "%bruxa%";


