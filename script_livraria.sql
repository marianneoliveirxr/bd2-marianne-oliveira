create database livraria;
drop database livraria;
use livraria;
create table cliente(
id_cliente int(5) auto_increment,
nome varchar(50) not null,
endereco varchar(50),
cep int(8),
email varchar(60),
telefone varchar(50),
primary key(id_cliente)
);
create table vendedores(
id_vendedores int(5) auto_increment,
nome varchar(50) not null,
telefone varchar(50) not null,
email varchar(60),
primary key(id_vendedores)
);
create table pedido(
id_pedido int(5) auto_increment,
id_cliente int(5),
id_vendedores int(5),
descricao varchar (11),
primary key(id_pedido),
foreign key(id_cliente) references
cliente(id_cliente),
foreign key(id_vendedores) references
vendedores(id_vendedores)
);
create table livros(
id_livros int(8) auto_increment,
nome varchar(60) not null,
preco int(8) not null,
editora varchar(70) not null,
primary key(id_livros)
);
create table estoque(
id_estoque int(5) auto_increment,
quantidade varchar(45),
id_livros int(8),
primary key(id_estoque),
foreign key(id_livros) references
livros(id_livros)
);
create table nota_fiscal(
idnota_fiscal int(5) auto_increment,
numero varchar(30),
primary key(idnota_fiscal)
);
INSERT INTO livros(nome, preco, editora) VALUES
('O Sol', 299, 'Editora ABC'),
('Lua Nova', 49, 'Editora XYZ'),
('Mar de Gente', 588, 'Editora LMN'),
('Terra Prometida', 499, 'Editora DEF'),
('Céu Azul', 249, 'Editora GHI');
INSERT INTO cliente (nome, endereco, cep, email, telefone) VALUES
('Ana Silva', 'Rua A, 123', 12345678, 'ana.silva@example.com', '11987654321'),
('João Santos', 'Av. B, 456', 23456789, 'joao.santos@example.com', '11976543210'),
('Maria Oliveira', 'Rua C, 789', 34567890, 'maria.oliveira@example.com', '11965432109'),
('Pedro Almeida', 'Rua D, 101', 45678901, 'pedro.almeida@example.com', '11954321098'),
('Clara Costa', 'Av. E, 202', 56789012, 'clara.costa@example.com', '11943210987');
