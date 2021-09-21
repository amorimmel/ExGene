CREATE DATABASE db_ecommerce;
USE db_ecommerce; 


CREATE TABLE produto (
	id bigint auto_increment,
    nome varchar(200),
    genero varchar(10),
    categoria varchar(100),
    preco decimal(7,2),
    primary key (id)
);


INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Calça skinny", "Feminino", "Calça", 120.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Vestido manga curta", "Feminino", "Vestido", 100.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Calça jeans", "Masculino", "Jeans", 120.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Camiseta básica", "Unissex", "Básico", 30.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Bermuda algodão", "Masculino", "Bermuda", 550.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Calça skinny jeans", "Unissex", "Jeans", 120.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Biquini", "Feminino", "Praia", 50.00);
INSERT INTO produto (nome, genero, categoria, preco) VALUES ("Boné", "Masculino", "Acessórios", 50.00);


SELECT * FROM produto;
SELECT * FROM produto WHERE preco < 500.00;
SELECT * FROM produto WHERE preco > 500.00;


UPDATE produto SET preco = 150.00 WHERE id = 3;
UPDATE produto SET preco = 150.00 WHERE id = 6;