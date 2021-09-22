CREATE database db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo) VALUES ("Comprimido");
INSERT INTO tb_categoria (tipo) VALUES ("Xarope");
INSERT INTO tb_categoria (tipo) VALUES ("Pomada");
INSERT INTO tb_categoria (tipo) VALUES ("Cosmético");


CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar (50) not null,
descricao varchar(200),
infantil boolean,
preco double (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,descricao,infantil,preco,categoria_id) VALUES ("Dipirona","Analgesico",false, 12.50, 1);
INSERT INTO tb_produto (nome,descricao,infantil,preco,categoria_id) VALUES ("Melagriao", "Indicado para tosse", false, 23.00, 2);
INSERT INTO tb_produto (nome,descricao,infantil,preco,categoria_id)VALUES ("AS", "Alivio dores de intensidade leve a moderada",true,45.00, 1);
INSERT INTO tb_produto (nome,descricao,infantil,preco,categoria_id) VALUES ("Hipoglos","Pomada multirreparadora",true, 58.00, 3);
INSERT INTO tb_produto (nome,descricao,infantil,preco,categoria_id) VALUES ("Protetor labial", "Hidratação labial",false, 12.78, 4);

SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco between 3 and 60;
SELECT * FROM tb_produto where nome like "%b%";

SELECT tb_categoria.tipo, tb_produto.nome, tb_produto.descricao, tb_produto.preco, tb_produto.categoria_id
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto where infantil = true;
