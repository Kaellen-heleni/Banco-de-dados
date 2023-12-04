CREATE DATABASE E_commerce;
use E_commerce;
CREATE TABLE produtos(
id bigint auto_increment,
nome_produto varchar(300) NOT NULL,
marca varchar (300) NOT NULL,
data_validade date,
preco decimal NOT NULL,
categoria varchar(300),
PRIMARY KEY (id)
);
ALTER TABLE produtos MODIFY preco DECIMAL(10,2);
INSERT INTO produtos (nome_produto, marca, data_validade, preco, categoria)
VALUE ("Macarrão Parafuso", "Adria", "2024-03-14", 7.98, "Massas"),
("Bolacha Recheada", "Oreo", "2023-12-21", 5.99, "Biscoitos"),
("Papel Higiênico", "Neve", "2032-12-15", 512.00, "Artigos de Limpeza"),
("Desodorante", "Dove", "2028-06-14", 13.50, "Higiene Pessoal"),
("Arroz", "Camil", "2027-07-13", 8.00, "Não-perecíveis"),
("Feijão", "Camil", "2026-12-23", 698.00, "Não-perecíveis"),
("Miojo", "Turma da Mônica", "2032-10-09", 1.99, "Industrializados"),
("Coca-Cola", "Coca-cola", "2029-12-12", 12.00, "Refrigerantes"),
("Esmalte", "Colorama", "2045-12-03", 7.98, "Cosméticos");
select * FROM produtos WHERE preco >= 500.00;
select * FROM produtos WHERE preco <= 500.00;
update produtos SET data_validade = "2029-12-11" WHERE id=3;
select * from produtos;


