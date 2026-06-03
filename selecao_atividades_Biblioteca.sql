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

-- operadores lógicos

-- quest 1
select * from leitores 
where nome_leitor = 'Natália' and email = 'natalia123@gmail.com';

-- quest 2
select nome_livro, editora from livros 
where id_categoria = 1 or id_categoria = 3;

-- quest 3
select * from autor
where not pais_origem = 'Brasil';

-- quest 4
select * from historico
where saida >= '2026-06-01' and devolucao <= '2026-08-01';

-- quest 5
select L.nome_livro, A.nome_autor, L.editora from livros as L
join autor as A on A.id_autor = L.id_autor
where L.editora = 'Suma' and (L.id_autor = 3 or L.id_categoria = 1);

-- Betwen
 -- quest 1 
select nome_livro, data_lancamento from livros
 where data_lancamento between '1900-01-01' and '1980-12-31';

-- quest 2
select * from historico
where saida between '2026-06-01' and '2026-07-15';

-- quest 3
select nome_livro from livros
where not data_lancamento between '1930-01-01' and '1950-12-31';

-- quest 4
select nome_leitor from leitores
where nome_leitor between 'M' and 'Z';

-- quest 5
select Le.nome_leitor, Li.nome_livro, H.devolucao from leitores as Le
join historico as H on Le.id_leitor = H.id_leitor
join livros as Li on Li.id_livro = H.id_livro
where devolucao between '2026-07-01' and '2026-08-31';

-- IN e NOT IN

-- quest 1
select nome_livro as titulo, editora from livros
where id_categoria in (1, 3);

-- quest 2
select pais_origem from autor
where not pais_origem in ('Brasil', 'México');

-- quest 3
select * from leitores 
where nome_leitor in ('Natália', 'Maria');

-- quest 4
select Le.nome_leitor, Li.nome_livro, H.saida from leitores as Le
join historico as H on H.id_leitor = Le.id_leitor
join livros as Li on Li.id_livro = H.id_livro
where H.id_leitor in (1, 2);

-- LIKE

-- quest 1
select nome_livro from livros
where nome_livro  like 'O%';

-- quest 2
select * from autor
where nome_autor like '%êa';

-- quest 3
select nome_livro from livros
where nome_livro like '%Iluminado%';

-- quest 4
select nome_leitor, email from leitores
where email not like '%@gmail.com';


-- OPERADORES ARITMÉTICOS

-- quest 1
select (devolucao - saida) as dias_emprestimo from historico;

-- quest 2
select nome_livro, (id_livro + 1) as proxima_edicao from livros; 
-- a questão acima está com o id para praticar pos edicao está como "char"
-- então não ia dar para somar

-- quest 3 (multa de 5 dias)
select nome_leitor, id_leitor, (5 * 2.50) as multa_fixa from leitores;

-- quest 4
select id_livro, nome_livro, (id_livro / 2) as prateleira_destino from livros
where id_livro > 1;

-- Order By e Group By

-- quest 1
select * from leitores
order by nome_leitor asc;

-- quest 2
select nome_livro, data_lancamento from livros
order by data_lancamento desc;

-- quest 3
select editora, count(*) as qtd_livros from livros
group by editora 
order by qtd_livros desc;

-- quest 4
select C.nome_categoria, count(L.id_livro) as qtd_livros 
from categorias as C
join livros as L on C.id_categoria = L.id_categoria
group by C.nome_categoria
order by C.nome_categoria asc;

