CREATE DATABASE db_farmacia_bem_estar;
use db_farmacia_bem_estar;
CREATE TABLE tb_categorias(
id BIGINT auto_increment,
nome_categoria VARCHAR (255) NOT NULL,
descricao_categoria VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Remédio", "Medicamentos em geral"),
("Cosmético", "Produtos de cuidados com a pele"),
("Maquiagem", "Produtos de maquiagem para pele, olhos e boca"),
("Produto Capilar", "Kits de tratamento capilar e de coloração"),
("Vitaminas e Suplementos", "Complexos vitaminicos e suplementos alimentares"),
("Saúde Bucal", "Produtos para saúde bucal em geral"),
("Primeiros Socorros", "Produtos para realizar curativos e primeiros socorros"),
("Higiene Pessoal", "Produtos para higiene pessoal, fraldas, lenço umedecido");

select * from tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome VARCHAR (200) NOT NULL,
preco decimal (8,2) NOT NULL, 
quantidade int NOT NULL,
prescricao boolean,
marca VARCHAR (200) NOT NULL,
id_categoria bigint,
PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);
INSERT INTO tb_produtos (nome, preco, quantidade, prescricao, marca, id_categoria)
VALUES ("Dipirona", 5.00, 1, false, "Eurofarma", 1),
("Fralda", 30.00, 1, false, "Pampers", 8),
("Base", 40.00, 1, false, "Bruna Tavares", 3),
("Creme Hidratante para Corpo", 27.00, 1, false, "Neutrogena", 2),
("Fenobarbital", 37.00, 1, true, "Gardenal", 1),
("Clonazepam", 40.00, 2, true, "Rivotril", 1),
("Suplemento Alimentar Nutren", 130.00, 1, false, "Nestle", 5),
("Kit Shampoo e Condicionador", 42.00, 1, false, "Pantene", 4),
("Esparadrapo", 17.00, 2, false, "NexCare", 7),
("Lenço Umedecido", 18.00, 1, false, "Meu nenê", 8),
("Tinta Loiro Esplendido", 22.00, 1, false, "Beauty Color", 4);
SELECT * FROM tb_produtos;
Select * FROM tb_produtos WHERE preco > 50.00;
Select * from tb_produtos WHERE preco between 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT nome, preco, quantidade, prescricao, marca, tb_categorias.nome_categoria, tb_categorias.descricao_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id WHERE nome_categoria = "Remédio";