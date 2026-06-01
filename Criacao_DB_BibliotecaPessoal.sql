-- Active: 1780255215409@@mysql-1c959a5e-estudante-af5b.h.aivencloud.com@18971@EscolaDB
create database Biblioteca;

use Biblioteca;

create table autor(
    id_autor int primary key auto_increment not null,
    nome_autor varchar(50) default 'Desconhecido',
    pais_origem varchar(50) default 'Desconhecido'
);

create table categorias(
    id_categoria int primary key auto_increment not null,
    nome_categoria varchar(30) not null
);


create table livros(
    id_livro int primary key auto_increment not null,
    nome_livro varchar(50) not null,
    data_lancamento date not null,
    editora varchar(40) not null,
    edicao varchar(50) default '1ª',
    id_autor int,
    id_categoria int,
    foreign key (id_autor) references autor(id_autor), 
    foreign key (id_categoria) references categorias(id_categoria) 

);

create table leitores(
    id_leitor int primary key auto_increment not null,
    nome_leitor varchar(50) not null,
    email varchar(60) not null,
    telefone varchar(15),
    data_cadastro date not null

);

create table historico(
    id_historico int primary key auto_increment not null,
    id_leitor int,
    id_livro int,
    foreign key (id_leitor) references leitores(id_leitor),
    foreign key (id_livro) references livros(id_livro),
    saida date not null,
    devolucao date not null
);


