CREATE DATABASE escola;
use escola;
CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
nome varchar(300),
notas decimal (4,2),
data_nascimento DATE,
genero varchar(300),
CPF decimal (11,2),
PRIMARY KEY (id)
);
INSERT INTO alunos(nome, notas,data_nascimento, genero, CPF)
VALUES("Kaellen", 9.0, "2000-05-12", "Feminino", 458783488.29),
("Bianca", 7.8, "2000-05-12", "Feminino", 458783488.29),
("Isabella", 5.3, "2000-05-12", "Feminino", 458783488.29),
("Pedro", 8.9, "2000-05-12", "Feminino", 458783488.29),
("Gabriel", 9.0, "2000-05-12", "Feminino", 458783488.29),
("Felipe", 4.3, "2000-05-12", "Feminino", 458783488.29),
("Nubia", 7.8, "2000-05-12", "Feminino", 458783488.29),
("Yuri", 1.9, "2000-05-12", "Feminino", 458783488.29),
("Aimeé", 9.5, "2000-05-12", "Feminino", 458783488.29),
("Sidnei", 10, "2000-05-12", "Feminino", 458783488.29);
SELECT * FROM alunos Where notas > 7.0;
select * from alunos where notas < 7.0;
UPDATE alunos SET notas=3.4 where id=4;
select * from alunos;

