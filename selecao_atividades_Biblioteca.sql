-- Where e select

use Biblioteca;
-- quest 1
select * from livros;

-- quest 2
select nome_livro as Livro, editora 
from livros;

-- quest 3
select * from leitores
where nome_leitor = 'Natália';

-- quest 4
select nome_livro from livros
where id_autor = 1;

-- quest 5
select nome_leitor as nome, data_cadastro from leitores
where data_cadastro > '2026-05-01';

-- quest 6
select H.id_livro, L.nome_livro from historico as H
join livros as L on L.id_livro = H.id_livro
where devolucao < '2026-08-01';

-- quest 7
select nome_leitor as nome, email from leitores
where email like '%@gmail.com';

-- quest 8
select nome_leitor as nome from leitores 
where telefone is not null;

-- quest 9
select L.nome_livro, C.nome_categoria from livros as L
join categorias as C on L.id_categoria = C.id_categoria
where nome_categoria = 'Romance';

-- quest 10 
select Le.nome_leitor, Li.nome_livro, H.saida from historico as H
join livros as Li on H.id_livro = Li.id_livro
join leitores as Le on Le.id_leitor = H.id_leitor
where nome_leitor = 'Rafael';


