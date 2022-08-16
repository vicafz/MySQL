CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE tb_funcionario(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(255),
setor VARCHAR(255),
salario INT
);

ALTER TABLE tb_funcionario 
ADD qt_filhes INT;

INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("laís guedes","biologa",2500,5);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("osnir berg","pedagogo",1800,1);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("lays caetano","historiadora",1600,0);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("gabriel farias","arquiteto",1400,2);
INSERT INTO tb_funcionario(nome_funcionario,setor, salario, qt_filhes) VALUES("victoria farias","analista jr",5000,3);

SELECT salario FROM tb_funcionario WHERE salario>2000;
SELECT nome_funcionario,salario FROM tb_funcionario WHERE salario>2000;
SELECT nome_funcionario,salario FROM tb_funcionario WHERE salario<2000;

UPDATE tb_funcionario SET nome_funcionario="gabriel ph" WHERE id=1;