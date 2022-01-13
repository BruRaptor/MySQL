CREATE DATABASE db_commerce;
USE db_commerce;

-- Crie uma tabela de produto com 5 atributos

CREATE TABLE tb_produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
marca VARCHAR(30) NOT NULL,
modelo VARCHAR(30) NOT NULL,
lancamento VARCHAR(15) NOT NULL,
valor FLOAT NOT NULL,
PRIMARY KEY(id_produto)
);

-- Popule esta tabela com até 8 dados

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('Galaxy S21', 'Samsung', 'S21', '01/2021', 3552);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('Motorola One Zoom', 'Motorola', 'One Zoom', '03/2019', 450);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('Motorola Moto G100', 'Motorola', 'Moto G100', '01/2021', 450);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('iPhone XR', 'Apple', 'iPhone XR', '03/2017', 3440);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('Poco X3 NFC' , 'Xiaomi', 'Poco X3 NFC', '03/2020', 450);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('Galaxy S21 FE 5G' , 'Samsung', 'Galaxy S21 FE 5G','01/2022', 4049);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('Black Shark 4' , 'Xiaomi', 'Black Shark 4','01/2021', 3650);

INSERT INTO tb_produtos(nome,marca,modelo,lancamento,valor)
VALUES('ROG Phone 5' , 'Asus', 'ROG Phone 5','01/2021', 4674);

-- Faça um select que retorne os produtos com o valor maior do que 500.

SELECT * FROM tb_produtos WHERE valor > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.

SELECT * FROM tb_produtos WHERE valor < 500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

UPDATE tb_produtos
SET valor = 3500
WHERE id_produto = 6;
