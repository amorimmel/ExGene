CREATE database db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo) VALUES ("Doce");
INSERT INTO tb_categoria (tipo) VALUES ("Azeda");
INSERT INTO tb_categoria (tipo) VALUES ("Nacional");
INSERT INTO tb_categoria (tipo) VALUES ("Importada");


CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar (50) not null,
preco decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Laranja",9.99, 1);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Melao", 52.00, 4);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Morango", 8.50, 3);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Kiwi", 10.00, 2);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Alface", 4.00, 3);



SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco between 3 and 60;
SELECT * FROM tb_produto where nome like "%c%";

SELECT tb_categoria.tipo, tb_produto.nome, tb_produto.preco, tb_produto.categoria_id
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;


