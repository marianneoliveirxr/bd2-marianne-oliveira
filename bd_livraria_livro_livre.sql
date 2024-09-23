create database livravia;
use livraria;
show databases;
show tables;
drop database livraria;
create table cliente
	(
		id_cliente int(5) auto_increment,
        nome varchar(50) not null,
        endereco varchar (20),
	cep int(8),
	numero_residencia varchar(5),
        email varchar(20),
        cpf varchar(11),
        primary Key(id_cliente)
    );
create table vendedor(
	id_vendedor int(5) auto_increment,
	nome varchar(60) not null,
	telefone varchar(20),
	email varchar(30),
	cnpj int(14) not null,
	primary key (id_vendedor)
     );
create table pedido(
	id_pedido int(5) auto_increment,
	id_vendedor int(5),
	id_cliente int(5),
	descricao varchar(40) not null,
	datapedido date,
	forma_pagamento varchar(20),
	primary key(id_pedido),
	foreign key(id_cliente) references
	cliente(id_cliente),
	foreign key(id_vendedor) references
	vendedor(id_vendedor)
     );
create table livros(
	id_livro int(5) auto_increment,
	nome varchar(50) not null,
	preco int(6),
	editora varchar(20),
	primary key(id_livro)
      );
create table nota_fiscal(
	idnota_fiscal int(5) auto_increment,
	numero varchar(30),
	primary key (idnota_fiscal)
      );
create table pedidolivros(
	id_cliente int(5),
	id_vendedor int(5),
	id_livro int(5),
	id_pedido int(5),
	idnota_fiscal int(5),
	foreign key(id_cliente) references
	cliente(id_cliente),
	foreign key(id_vendedor) references 
	vendedor(id_vendedor),
	foreign key(id_livro) references
	livros(id_livro),
	foreign key(id_pedido) references
	pedido(id_pedido),
	foreign key(idnota_fiscal)
      );
create table estoque(
	id_estoque int(5) auto_increment, 
	id_livro int(5),
	quantidade varchar(45),
	primary key id_estoque,
	foreign key(id_livro) references
	livros(id_livro)
      );       
INSERT INTO cliente (nome, endereco, cep, numero_residencia, email, cpf) VALUES
('João Silva', 'Rua A', 12345678, '123', 'joao@example.com', '12345678901'),
('Maria Oliveira', 'Rua B', 23456789, '456', 'maria@example.com', '23456789012');

INSERT INTO vendedor (nome, telefone, email, cnpj) VALUES
('Carlos Santos', '11987654321', 'carlos@example.com', 12345678000195),
('Ana Lima', '11998765432', 'ana@example.com', 98765432000196);

INSERT INTO pedido (id_vendedor, id_cliente, descricao, datapedido, forma_pagamento) VALUES
(1, 1, 'Pedido de Livros', '2024-09-01', 'Cartão'),
(2, 2, 'Pedido de Material Escolar', '2024-09-02', 'Dinheiro');

INSERT INTO livros (nome, preco, editora) VALUES
('Livro A', 30, 'Editora X'),
('Livro B', 45, 'Editora Y');

INSERT INTO nota_fiscal (numero) VALUES
('NF-001'),
('NF-002');\

INSERT INTO pedidolivros (id_cliente, id_vendedor, id_livro, id_pedido, idnota_fiscal) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2);

INSERT INTO estoque (id_livro, quantidade) VALUES
(1, '10'),
(2, '5');

                  

                         
    
