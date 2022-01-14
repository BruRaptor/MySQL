CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nome_categoria VARCHAR(45),
preco_categoria DECIMAL(10,2),
qnt_pizza INT
);

CREATE TABLE tb_pizzas(
id_pizza INT PRIMARY KEY AUTO_INCREMENT,
nome_pizza VARCHAR(45),
descricao VARCHAR(45),
tipo VARCHAR(30),
borda BOOLEAN NOT NULL,
tamanho VARCHAR(10),
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(nome_categoria, preco_categoria, qnt_pizza)
VALUES 	("Salgada", 37.50, 2),
		("Doce", 48.50, 1),
        ("Meio a Meio Doce", 65.50, 1),
        ("Meio a Meio Salgada", 58.50, 2),
        ("Broto", 35.50, 1);
        
INSERT INTO tb_pizzas(nome_pizza, descricao, tipo, borda, tamanho, id_categoria)
VALUES ("Calabresa", "Recheio Extra","Normal", true,"Grande", 1),
	   ("Portuguesa", "Retirar as azeitonas","Normal", false,"Grande", 1),
       ("Marguerita", "Retirar manjericão","Normal", true,"Broto", 5),
       ("Frango com catupiry", "Recheio Extra","Normal", true,"Grande", 2),
       ("Brigadeiro", "Recheio Extra","Normal", false,"Grande", 2),
       ("Romeu e Julieta", "Recheio Extra","Normal", true,"Grande", 2),
       ("Califórnia", "Sem pêsssego","Normal", false,"Broto", 3),
       ("Napolitana", "Mais chocolate","Normal", true,"Grande", 2);
       
SELECT * FROM tb_categorias
WHERE preco_categoria > 45;

SELECT * FROM tb_categorias
WHERE preco_categoria >= 29 AND preco_categoria <= 60;

SELECT * FROM tb_pizzas
WHERE nome_pizza LIKE "%c%";

SELECT nome_pizza, descricao, preco_categoria, qnt_pizza
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_pizzas.id_categoria;

SELECT * FROM tb_pizzas
WHERE id_categoria = 2;