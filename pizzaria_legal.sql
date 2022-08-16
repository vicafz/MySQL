CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(20),

PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(15),
tamanho VARCHAR(20),
borda BOOLEAN,
valor DECIMAL (6,2),
entrega VARCHAR(20),
categoria_id BIGINT,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT*FROM tb_categorias;

INSERT INTO tb_categorias(tipo)VALUES ("Salgada");
INSERT INTO tb_categorias(tipo)VALUES ("Doce");

SELECT*FROM tb_pizzas;

INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Marguerita", "P", true, 35.00, "Delivery", 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Portuguesa", "G", false, 90.00, "Mesa", 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Camarão", "G", false, 90.00, "Retirada", 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Mussarela", "M", true, 65.00, "Mesa", 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Frango c/ catupiry", "P", true, 35.00, "Retirada", 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Calabresa", "G", true, 95.00, "Mesa", 2);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Cartola", "M", false, 60.00, "Delivery", 1);
INSERT INTO tb_pizzas (sabor, tamanho, borda, valor, entrega, categoria_id) VALUES("Ovomaltine", "M", false, 60.00, "Retirada", 1);

SELECT*FROM tb_pizzas WHERE valor>45.00;
SELECT*FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
SELECT*FROM tb_pizzas WHERE sabor LIKE "m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias -- unindo as duas tabelas pela chave estrangeira;
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias -- selecionando na tabela onde o tipo de pizza é doce;
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 1;