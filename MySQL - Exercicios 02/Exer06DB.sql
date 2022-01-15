CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(50) NOT NULL,
promocao BOOLEAN NOT NULL
);

CREATE TABLE tb_produtos(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(100) NOT NULL,
duracao VARCHAR(50) NOT NULL,
certificado BOOLEAN NOT NULL,
descricao VARCHAR(250) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(tipo, promocao)
VALUES 	("EAD",  		 TRUE),
		("EAD", 		FALSE),
        ("Presencial",   TRUE),
        ("Presencial",  FALSE),
        ("Híbrido",      TRUE),
        ("Híbrido",     FALSE);
        
INSERT INTO tb_produtos(nome_produto, duracao, certificado, descricao, valor, id_categoria)
VALUES("Python", "90 dias", 1, "Aprenda Python 3.8.5 com Expressões Lambdas, Iteradores, Geradores, Orientação a Objetos e muito mais!", 34.90, 1),
	  ("Machine Learning", "30 dias", 0, "Aprenda as técnicas que o mundo real exige e torne-se um profissional competitivo na área de Inteligência Artificial!", 27.90, 2),
      ("Git e Github", "30 dias", 1, "Tudo que você precisa para começar a versionar seus arquivos e contribuir com a comunidade opensource", 32.90, 3),
      ("Power BI", "60 dias", 0, "Aprenda o passo a passo exato para criar dashboards e relatórios dinâmicos usando Business Intelligence", 34.90, 4),
      ("Inglês", "160 dias", 1, "Aprender Inglês tem que ser Fantástico! Chega de Aulas Chatas na Escola de Inglês! Aprenda o que Realmente Importa", 27.90, 5),
      ("Microsoft Excel", "90 dias", 0, "Aprenda Excel de forma completa e aplique seus conhecimentos construindo uma ferramenta avançada", 55.90, 2),
      ("Macros VBA", "30 dias", 0, "Aprenda do Básico ao Avançado de Macros VBA para o Excel de forma prática e construindo suas próprias ferramentas", 45.90, 1),
      ("Java", "180 dias", 1, "Curso mais didático e completo de Java e OO, UML, JDBC, JavaFX, Spring Boot, JPA, Hibernate, MySQL, MongoDB", 38.90, 1);
      
SELECT * FROM tb_produtos
WHERE valor > 50;

SELECT * FROM tb_produtos
WHERE valor >= 3 AND valor <= 60;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE "%j%";

SELECT nome_produto, duracao, descricao, valor, certificado
FROM tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.id_produto = tb_produtos.id_categoria;

SELECT * FROM tb_produtos
WHERE id_categoria = 2;