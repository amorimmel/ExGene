CREATE database db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id bigint auto_increment,
nome varchar (50) not null,
poder varchar (100),
primary key (id)
);

INSERT INTO tb_classe (nome,poder) VALUES ("Amazona","Super-força");
INSERT INTO tb_classe (nome,poder) VALUES ("Mago","Prepara poções");
INSERT INTO tb_classe (nome,poder) VALUES ("Guerreiro","Habilidade de luta marcial");
INSERT INTO tb_classe (nome,poder) VALUES ("Druida","Magia Sagrada");
INSERT INTO tb_classe (nome,poder) VALUES ("Ladino","Roubar itens");

CREATE TABLE tb_personagem(
id bigint auto_increment,
nome varchar (50) not null,
nivel int ,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

INSERT INTO tb_personagem (nome,nivel,ataque,defesa,classe_id) VALUES ("Mestre dos magos",100,1000,2000,2);
INSERT INTO tb_personagem (nome,nivel,ataque,defesa,classe_id) VALUES ("Mario",8,2000,100,5);
INSERT INTO tb_personagem (nome,nivel,ataque,defesa,classe_id) VALUES ("Sonic",100,1000,10,3);
INSERT INTO tb_personagem (nome,nivel,ataque,defesa,classe_id) VALUES ("Mulher-maravilha",25,10000,1000,1);
INSERT INTO tb_personagem (nome,nivel,ataque,defesa,classe_id) VALUES ("Batman",1000,75,4000,3);
INSERT INTO tb_personagem (nome,nivel,ataque,defesa,classe_id) VALUES ("Homem de ferro",100,1000,20,4);

SELECT * FROM tb_personagem where ataque > 2000;
SELECT * FROM tb_personagem where defesa between 1000 and 2000;
SELECT * FROM tb_personagem where nome like "%C%";
SELECT  tb_classe.nome as nome_Classe, tb_classe.poder, tb_personagem.nome as nome_Personagem, tb_personagem.ataque, tb_personagem.defesa, 
tb_personagem.classe_id from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
