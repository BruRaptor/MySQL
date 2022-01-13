CREATE DATABASE db_escola;
USE db_escola;

-- Crie um banco de dados para um registro de uma escola com 5 atributos

CREATE TABLE tb_alunos(
id_aluno INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
data_nascimento VARCHAR(15) NOT NULL,
sexo VARCHAR(10) NOT NULL,
curso VARCHAR(45) NOT NULL,
nota INT NOT NULL,
PRIMARY KEY(id_aluno)
);

-- Popule esta tabela com até 8 dados

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Rafaela Santos', '15/06/2009', 'Feminino', 'Analise e Desenvolvimento de sistema', 8);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Gabriel Godoi', '05/11/2001', 'Masculino', 'Gastronomia', 7);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Hector Sanches', '20/08/1999', 'Masculino', 'Recursos Humanos', 6);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Andreia Silveira', '05/11/1995', 'Feminino', 'Medicina', 9);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('João Pedro Santos', '08/09/2005', 'Masculino', 'Administração', 6);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Patricia da Costa', '26/03/2007', 'Feminino', 'Jornalismo', 7);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Nilson Soares', '06/02/2010', 'Masculino', 'Contabilidade', 6);

INSERT INTO tb_alunos(nome,data_nascimento,sexo,curso,nota)
VALUES('Mikaely dos Anjos', '08/12/1990', 'Feminino', 'Economia', 6);

-- Faça um select que retorne o/as estudantes  com a nota maior do que 7.

SELECT * FROM tb_alunos WHERE nota > 7;

-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.

SELECT * FROM tb_alunos WHERE nota < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

UPDATE tb_alunos
SET nota = 8
WHERE id_aluno = 7;