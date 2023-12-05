CREATE DATABASE _db_pizzaria_legal;
USE _db_pizzaria_legal;
CREATE TABLE tb_categorias(
id BIGINT auto_increment,
tipo VARCHAR (200) NOT NULL,
tamanho VARCHAR (200) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, tamanho)
VALUES ("Pizza Vegana", "Pequena"),
("Pizza Vegana", "Média"),
("Pizza Vegana", "Grande"),
("Pizza Vegetariana", "Pequena"),
("Pizza Vegetariana", "Média"),
("Pizza Vegetariana", "Grande"),
("Pizza Salgada", "Pequena"),
("Pizza Salgada", "Média"),
("Pizza Salgada", "Grande"),
("Pizza Doce", "Pequena"),
("Pizza Doce", "Média"),
("Pizza Doce", "Grande"),
("Pizza Mista", "Pequena"),
("Pizza Mista", "Média"),
("Pizza Mista", "Grande");
SELECT * FROM tb_categorias;
CREATE TABLE tb_pizzas(
id bigint auto_increment,
preco decimal (8,2) NOT NULL,
sabor VARCHAR (200) NOT NULL,
quantidade int NOT NULL, 
adicional VARCHAR (200) NOT NULL, 
borda VARCHAR (200),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(preco, sabor, quantidade, adicional, borda, categoria_id)
VALUES (74.50, "Camarão com Cream Cheese", 1, "Com Milho", "Catupiry Original", 9),
(90.00, "Brocólis com Cream Cheese", 2, "Com Cebola", "Catupiry", 4),
(62.00, "Calabresa com Cheddar", 1, "Sem Cebola", "Sem Borda Recheada", 9),
(50.00, "Escarola com Queijo Vegano", 1, "Com Cebola", "Sem Borda Recheada", 2),
(80.75, "Carne Seca com Cheddar", 2, "", "Catupiry Original", 7),
(75.00, "Carne Seca com Cream Cheese", 1, "Com Milho", "Catupiry Original", 8),
(60.00, "Salmão com Catupiry Original", 1, "", "Catupiry Original", 7),
(74.50, "Brócolis", 1, "Com Milho", "Sem Borda Recheada", 3),
(35.00, "Calabresa com Queijo", 1, "Sem Cebola", "Sem Borda Recheada", 7),
(58.50, "Marguerita", 1, "Com Bacon", "Catupiry Original", 8);

SELECT * FROM tb_pizzas;
Select * FROM tb_pizzas WHERE preco > 45.00;
Select * from tb_pizzas WHERE preco between 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE sabor like "M%";
SELECT * FROM tb_pizzas WHERE sabor like "%M%";

SELECT sabor, preco, quantidade, tb_categorias.tipo, tb_categorias.tamanho 
FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tipo ="Pizza Vegana";

