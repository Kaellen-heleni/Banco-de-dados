CREATE DATABASE rh_empresa;
USE rh_empresa;
CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	salario decimal NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    aniversario date,
    
    PRIMARY KEY (id)
    );
    ALTER TABLE tb_colaboradores
RENAME COLUMN aniversario to data_nascimento;
ALTER TABLE tb_colaboradores
ADD data_admissao date;
ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(10,2);
INSERT INTO tb_colaboradores(nome, salario, cargo, data_nascimento, data_admissao)
VALUE ("Kaellen", 30000.00, "Gestora de Projetos", "2000-05-12", "2020-03-12"),
("Bianca", 12000.00, "Desenvolvedora Back-End", "1998-03-18", "2021-11-09"),
("Pedro", 1000.00, "Estagiário", "2003-11-05", "2021-11-09"),
("Isabella", 12000.00, "QA", "2005-01-13", "2021-12-01"),
("Gabriel", 8000.00, "Desenvolvedor Front-End", "2002-03-14", "2021-01-12");
SELECT * FROM tb_colaboradores WHERE salario >= 2000.00;
SELECT * FROM tb_colaboradores WHERE salario <= 2000.00;
UPDATE tb_colaboradores SET salario=11902.00 WHERE id=4;




