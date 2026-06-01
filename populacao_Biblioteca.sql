-- Active: 1780255215409@@mysql-1c959a5e-estudante-af5b.h.aivencloud.com@18971@Biblioteca
insert into autor (nome_autor, pais_origem) values 
('Mariana Peres', 'México'),
('Daniel Corrêa', 'Brasil'),
('Joana Ashley', 'Estados Unidos');

insert into categorias(nome_categoria) values
('Romance'),
('Fantasia'),
('Terror');

insert into livros (nome_livro, data_lancamento, editora, edicao, id_autor, id_categoria) values
('O Hobbit', '1937-09-21', 'HarperCollins', '3ª', 1, 1),    
('Dom Casmurro', '1900-01-01', 'Carambaia', '1ª', 2, 2),       
('O Iluminado', '1977-01-28', 'Suma', '2ª', 3, 3);

insert into leitores (nome_leitor, email, telefone, data_cadastro) values
('Natália', 'natalia123@gmail.com', '(47) 9927-3746', '2026-05-01'),
('Rafael', 'rafa556@gmail.com', '(56) 6457-7423', '2026-06-05'),
('Maria', 'maria340@gmail.com', '(43) 2350-0342', '2026-04-23');

INSERT INTO historico (id_leitor, id_livro, saida, devolucao) VALUES 
(1, 1, '2026-05-20', '2026-07-03'),
(2, 2, '2026-06-28', '2026-07-15'),
(3, 3, '2026-07-02', '2026-08-30');
