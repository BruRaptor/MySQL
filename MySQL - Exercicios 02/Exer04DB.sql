CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(20) NOT NULL,
promocao VARCHAR(30) NOT NULL
);

CREATE TABLE tb_produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(35) NOT NULL,
data_coleta VARCHAR(30) NOT NULL,
fragil BOOLEAN NOT NULL,
descricao VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(tipo, promocao)
VALUES ("Fruta", "Sim"),
	   ("Fruta", "Sim"),
       ("Fruta", "Não"),
       ("Verdura", "Não"),
       ("Verdura", "Sim");

INSERT INTO tb_produtos(nome_produto, data_coleta,fragil,descricao,valor , id_categoria)
VALUES ("Abacate", "14/01/2022", TRUE, "Possui uma casca de cor verde", 8.60, 1),
	   ("Abacaxi", "14/01/2022", FALSE, "Fruto revestido por uma casca áspera", 10.12, 1),
       ("Brócolis", "12/01/2022", TRUE, "Um vegetal crucífero", 11.13, 4),
       ("Couve", "15/01/2022", FALSE, "Um vegetal que pertence à família Brassicaceae", 35.50, 5),
       ("Banana", "10/01/2022", TRUE, "Formato alongado, uma coloração amarela ou vermelha", 65.00, 3),
       ("Acerola", "13/01/2022", TRUE, "Malpighia que apresenta um fruto", 18.50, 3),
       ("Couve-flor", "09/01/2022", TRUE, "Por ser uma hortaliça altamente nutritiva", 2.80, 4),
       ("Espinafre", "09/01/2022", TRUE, "É uma erva rasteira originária do centro e sudoeste da Ásia", 75.50, 5);

SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor >= 3 AND valor <= 60;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%C%";

SELECT nome_produto, data_coleta, fragil, valor, promocao
FROM tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.id_produto = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categoria = 3;