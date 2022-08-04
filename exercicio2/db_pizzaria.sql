create database db_pizzaria;
use db_pizzaria;

create table tb_categoria
(
id bigint (5) auto_increment,
categoria varchar (20) not null,
primary key (id)
);
insert into tb_categoria (categoria) values ("Salgada");
insert into tb_categoria (categoria) values ("Doce");

create table tb_pizza
(
id bigint (5) auto_increment,
sabor varchar (20) not null,
tamanho char not null,
valor decimal (5,2) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Calabresa", 'p', 30.00, 1);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Mussarela", 'm', 50.00, 1);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Frango", 'g', 80.00, 1);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Camarão", 'p', 50.00, 1);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Brigadeiro", 'p', 30.00, 2);
insert into tb_pizza (sabor, tamanho, valor, categoria_id) values ("Cartola", 'm', 40.00, 2);

select * from tb_pizza where valor >45.00;
select * from tb_pizza where valor >55.00 and valor <99.00;
select * from tb_pizza where sabor like '%m%';

select * from tb_pizza
 inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
 
 select * from tb_pizza
  inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.id = 2;
