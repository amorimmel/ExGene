CREATE database db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id bigint auto_increment,
tamanho varchar (30),
primary key (id)
);

INSERT INTO tb_categoria (tamanho) VALUES ("Grande");
INSERT INTO tb_categoria (tamanho) VALUES ("Média");
INSERT INTO tb_categoria (tamanho) VALUES ("Pequena");
INSERT INTO tb_categoria (tamanho) VALUES ("Broto");


CREATE TABLE tb_pizza(
id bigint auto_increment,
sabor varchar (50) not null,
ingredientes varchar(200),
doce boolean,
preco double (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_pizza (sabor,ingredientes,doce,categoria_id,preco) VALUES ("Calabresa","Calabresa e cebola", false, 2, 55.00);
INSERT INTO tb_pizza (sabor,ingredientes,doce,categoria_id,preco) VALUES ("Mussarela","Queijo e tomate", false, 4, 29.00);
INSERT INTO tb_pizza (sabor,ingredientes,doce,categoria_id,preco) VALUES ("Sensação","Morango e chocolate", true, 1, 70.00);
INSERT INTO tb_pizza (sabor,ingredientes,doce,categoria_id,preco) VALUES ("Frango","Frango com catupiry", false, 3, 40.00);
INSERT INTO tb_pizza (sabor,ingredientes,doce,categoria_id,preco) VALUES ("Prestigio","Chocolate e coco", true ,4, 29.00);

SELECT * FROM tb_pizza where preco > 45;
SELECT * FROM tb_pizza where tb_pizza.preco between 29 and 60;
SELECT * FROM tb_pizza where sabor like "%c%";

SELECT tb_categoria.tamanho, tb_pizza.sabor, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_pizza.preco as preco_Pizza
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza where doce = true;