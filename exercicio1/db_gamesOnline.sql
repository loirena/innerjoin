create database db_gamesOnline;
use db_gamesOnline;

create table tb_classes
(
id bigint (5) auto_increment,
classe varchar (20) not null,
primary key (id)
);

insert into tb_classes (classe) values ("Mago");
insert into tb_classes (classe) values ("Feiticeiro");
insert into tb_classes (classe) values ("Ninja");
insert into tb_classes (classe) values ("Lutador");
insert into tb_classes (classe) values ("Bárbaro");


create table tb_brawlers
(
id bigint (5) auto_increment,
nome varchar (20) not null, 
ataque bigint (4) not null,
defesa bigint (4) not null, 
primary key (id),
classes_id bigint not null, 
foreign key (classes_id) references tb_classes (id)
);

insert into tb_brawlers (nome, ataque, defesa, classes_id) values ("Corbac", 1000, 2000,1);
insert into tb_brawlers (nome, ataque, defesa, classes_id) values ("Lou", 1050, 2300,2);
insert into tb_brawlers (nome, ataque, defesa, classes_id) values ("Edgar", 2050, 800,3);
insert into tb_brawlers (nome, ataque, defesa, classes_id) values ("Costo", 2025, 1100,4);
insert into tb_brawlers (nome, ataque, defesa, classes_id) values ("Billie", 2300, 1050,5);

select * from tb_brawlers where ataque >2000;
select * from tb_brawlers where defesa>1000 or defesa<2000;
select * from tb_brawlers where nome like '%c%';

select * from tb_brawlers
 inner join tb_classes on tb_classes.id = tb_brawlers.classes_id;
 
 select * from tb_brawlers
  inner join tb_classes on tb_brawlers.classes_id = tb_classes.id where tb_classes.id = 1;
  