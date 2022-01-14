CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id_classe INT PRIMARY KEY AUTO_INCREMENT,
classe VARCHAR(10),
raca VARCHAR (10),
poder INT
);

CREATE TABLE tb_personagens (
id_personagem INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
idade INT NOT NULL,
velocidade INT,
ataque INT,
defesa INT,
id_classe INT,
FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (classe, raca, poder)
VALUES  ("Clerigo",   "Elfo",       25),
		("Guerreiro", "Orc",        30),
		("Arqueiro",  "Anão",       35),
		("Barbaro",   "Draconico",  20),
		("Monge",     "Humano",     10);
        
INSERT INTO tb_personagens(nome, idade, velocidade, ataque, defesa, id_classe)
VALUES 	("Absoluto", 22, 3000, 2500, 800, 3),
		("TOP-BALADA", 30, 1500, 3000, 1600, 4),
        ("Torrone", 30, 1200, 3000, 500, 1),
        ("Lacthor", 55, 3000, 1500, 1000, 5),
        ("Avassalador", 35, 800, 1900, 2500, 2),
        ("Merlin", 60, 1200, 3000, 500, 1),
        ("Legolas", 30, 3000, 2500, 800, 3),
        ("Tripster", 22, 3000, 1500, 1000, 5);
        
SELECT * FROM tb_personagens
WHERE ataque > 2000;

SELECT * FROM tb_personagens
WHERE defesa >= 1000 and defesa <= 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%C%";

SELECT classe, raca, nome, ataque, defesa
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT * FROM tb_personagens
WHERE id_classe = 3;