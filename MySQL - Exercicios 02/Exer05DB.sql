CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(50) NOT NULL,
promocao BOOLEAN NOT NULL
);

CREATE TABLE tb_produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(100) NOT NULL,
tamanho VARCHAR(50) NOT NULL,
estoque INT NOT NULL,
descricao VARCHAR(250) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(tipo, promocao)
VALUES 	("Hidráulico",  TRUE),
		("Hidráulico", FALSE),
        ("Elétrico",    TRUE),
        ("Elétrico",   FALSE),
        ("Pintura",     TRUE),
        ("Pintura",    FALSE);
        
INSERT INTO tb_produtos(nome_produto, tamanho, estoque, descricao, valor, id_categoria)
VALUES ("Pincel", "Pequeno", 20, "Pintura de pincel de rolo", 85.48, 4),
	   ("Kit Rolo Mágico Para Pintura", "Grande", 35, "Para Pintura S/ Sujeira Prático Pinta Fácil", 56.40, 5),
       ("Cabo Sil 2,5mm", "Grande", 80, "Cabo Flexível Bitola (mm): 2,50", 60.00, 3),
       ("Cabo Sil 1,5mm", "Grande", 80, "Cabo Flexível Bitola (mm): 1,50", 56.42, 4),
       ("Cano PVC", "Grande", 60, "Cano Soldável para Água Fria 1m 20mm 1/2", 9.42, 2),
       ("Tê PVC", "Pequeno", 40, "Conexão hidráulica Tê PVC da Marca Tigre com bitola de 1/2 20mm", 01.92, 1),
       ("Joelho 45°", "Pequeno", 40, "Conexão hidráulica Joelho 45° PVC da Marca Plastilit com bitola de 1/2 20mm", 01.56, 2),
       ("Adaptador PVC", "Pequeno", 40, "Conexão hidráulica Adaptador PVC da Marca Plastilit com bitola de 1/2 20mm", 11.56, 1);
       
SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor >= 3 AND valor <= 60;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%C%";

SELECT nome_produto, estoque, descricao, valor, promocao
FROM tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.id_produto = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categoria = 2;