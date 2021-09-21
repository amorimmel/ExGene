CREATE database RH;

USE RH;
Create table funcionarios (
id int auto_increment,
nome varchar(50) not null,
idade int,
email varchar(80),
salario double(6,2),
primary key (id)
);

INSERT INTO funcionarios (nome,idade,email,salario) values ("Maria",26,"maria@gmail.com",1500);
INSERT INTO funcionarios (nome,idade,email,salario) values ("Joao",30,"joao@gmail.com",1800);
INSERT INTO funcionarios (nome,idade,email,salario) values ("Marta",29,"marta@gmail.com",2300);
INSERT INTO funcionarios (nome,idade,email,salario) values ("Pedro",35,"pedro@gmail.com",3000);
INSERT INTO funcionarios (nome,idade,email,salario) values ("Joana",20,"joana@gmail.com",1000);

select * from funcionarios;
select * from funcionarios where salario >2000;
select * from funcionarios where salario <2000;

UPDATE tb_funcionarios SET salario = 1900.00 WHERE id = 2;
UPDATE tb_funcionarios SET salario = 1900.00 WHERE id = 5;
