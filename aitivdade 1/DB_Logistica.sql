create database logistica;
use logistica;

create table fornecedor(
codigo_f int,
nome varchar (255),
cnpj char (15) NOT NULL,
endereco varchar (255),
PRIMARY KEY (cnpj)
);


create table produto(
codigo_p int NOT NULL,
nome char,
descricao varchar (255),
PRIMARY KEY (codigo_p)
);

create table vendas(
num_NFiscal int NOT NULL,
data date,
valor_total int NOT NULL,
PRIMARY KEY (num_NFiscal)
);

create table loja(
codigo_f int,
nome char,
cnpj varchar(15) NOT NULL,
FOREIGN KEY (codigo_f) REFERENCES fornecedor (codigo_f),
FOREIGN KEY (cnpj) REFERENCES fornecedor (cnpj)
);

create table cliente(
codigo_p int NOT NULL,
nome char, 
endereco varchar (255),
FOREIGN KEY (codigo_p) REFERENCES produto (codigo_p)
);




