CREATE DATABASE db_rh;
USE db_rh;

-- Criar uma tabela de funcionaries

CREATE TABLE tb_funcionarios (
id_usuario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
cpf VARCHAR(20) NOT NULL, 
estado_civil VARCHAR(15) NOT NULL,
profissao VARCHAR(45) NOT NULL,
salario FLOAT NOT NULL,
PRIMARY KEY (id_usuario)
);

-- Popule esta tabela com até 5 dados

INSERT INTO tb_funcionarios (nome,cpf,estado_civil,profissao,salario)
VALUES ('Maria conceição', '465.156.468-42', 'Casada', 'Diarista', 1600);

INSERT INTO tb_funcionarios (nome,cpf,estado_civil,profissao,salario)
VALUES ('Pedro Geraldo da Silva', '355.206.458-02', 'Solteiro', 'Ajudante de cozinha', 1800);

INSERT INTO tb_funcionarios (nome,cpf,estado_civil,profissao,salario)
VALUES ('Hellen de Oliveira', '455.253.428-11', 'Solteira', 'Garçonete', 2800);

INSERT INTO tb_funcionarios (nome,cpf,estado_civil,profissao,salario)
VALUES ('Camila Santos', '425.506.828-17', 'Casada', 'Recepcionista', 3500);

INSERT INTO tb_funcionarios (nome,cpf,estado_civil,profissao,salario)
VALUES ('Caio Ribeiro', '385.926.268-X', 'Casado', 'Gerente', 5500);

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.

SELECT * FROM tb_funcionarios WHERE salario > 2000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
SELECT * FROM tb_funcionarios WHERE salario < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
UPDATE tb_funcionarios
SET salario = 1900
WHERE id_usuario = 2;