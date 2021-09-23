CREATE database db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo) VALUES ("Intensivão");
INSERT INTO tb_categoria (tipo) VALUES ("Tecnologo");
INSERT INTO tb_categoria (tipo) VALUES ("EAD");
INSERT INTO tb_categoria (tipo) VALUES ("Presencial");


CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar (50) not null,
preco decimal (7,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Programação",500.00, 2);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Inglês", 700.00, 1);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Publicidade e propaganda", 300.00, 3);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Adm", 100.00, 4);
INSERT INTO tb_produto (nome,preco,categoria_id) VALUES ("Redes", 275.50, 2);



SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco between 300 and 600;
SELECT * FROM tb_produto where nome like "%j%";

SELECT tb_categoria.tipo, tb_produto.nome, tb_produto.preco, tb_produto.categoria_id
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
