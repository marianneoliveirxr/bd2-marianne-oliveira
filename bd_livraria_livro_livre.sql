create database livravia;
use livraria;
create table cliente
	(
		id_cliente int(5) auto_increment,
        nome varchar(50) not null,
        endereco varchar (20),
        email varchar(20),
        cpf varchar(11),
        Primary Key(id_cliente)
    );
create table pedidos
	(
		id_pedidos int(5) auto_increment,
        ide_cliente int(5),
        descricao varchar(11) not null,
        datapedido varchar(11) not null,
        Primary Key(id_pedidos),
        foreign key (id_cliente) References cliente(id_cliente)
    );
create table funcionarios
	(
		id_funcionario int(5) auto_increment,
        nome varchar(20) not null,
        cpf varchar(11),
        carga_horaria varchar(2), 
        endereco varchar(20),
        email varchar(20),
        telefone varchar(11),
        salario varchar(5)
    );
    create table livro
    (
		id_livro int(5) auto_increment,
        titulo varchar(20),
        preco_custo varchar(4),
        editora varchar(20),
        quantidade numeric(5),
		genero varchar(20)
    );
    