CREATE database db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo) VALUES ("Decoração");
INSERT INTO tb_categoria (tipo) VALUES ("Material de acabamento");
INSERT INTO tb_categoria (tipo) VALUES ("Material para construção");
INSERT INTO tb_categoria (tipo) VALUES ("Ferramentas");


CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar (50) not null,
preco decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Azulejo",29.58, 2);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Areia", 55.00, 3);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Vaso para plantas", 67.00, 1);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Martelo", 14.75, 4);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Cimento", 47.00, 3);



SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco between 3 and 60;
SELECT * FROM tb_produto where nome like "%c%";

SELECT tb_categoria.tipo, tb_produto.nome, tb_produto.preco, tb_produto.categoria_id
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
