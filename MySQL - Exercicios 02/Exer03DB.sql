CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categorias(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
tipo_produto VARCHAR(15) NOT NULL,
tipo_medicamento VARCHAR(15) NOT NULL,
quantidade INT
);

CREATE TABLE tb_produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(45) NOT NULL,
descricao VARCHAR(45) NOT NULL,
validade VARCHAR(20) NOT NULL,
promocao BOOLEAN NOT NULL,
valor DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(tipo_produto, tipo_medicamento, quantidade)
VALUES ("Medicamento", "Pediátrico", 1),
	   ("Medicamento", "Adulto", 2),
       ("Medicamento", "Receita", 1),
       ("Cosmético", "Creme", 2),
       ("Cosmético", "Luquido", 1);

INSERT INTO tb_produtos(nome_produto, descricao, validade, promocao, valor, id_categoria)
VALUES ("Dipirona", "Analgésico e Antitérmico","15/05/2023", FALSE, 2.80, 1),
	   ("Dorflex", "Relaxante Muscular","05/12/2023", TRUE, 5.89, 2),
       ("Merthiolate", "Antisséptico","10/03/2028", TRUE, 19.55, 1),
       ("Qlaira", "Contraceptivo","15/10/2023", FALSE, 59.56, 2),
       ("Roll-on Nivea", "Desodorante Antitranspirante","05/02/2028", TRUE, 2.16, 4),
       ("Roll-on Rexona", "Desodorante Antitranspirante","01/10/2024", FALSE, 6.80, 4),
       ("Hipoglos", "Pomada para assaduras","12/09/2026", FALSE, 1.80, 1),
       ("Band aid", "Protege ferimentos descobertos","15/10/2030", TRUE, 18.80, 2);

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor >= 3 AND valor <= 60;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%B%";

SELECT nome_produto, descricao, validade, tipo_medicamento, tipo_produto
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_produto = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categoria = 1;