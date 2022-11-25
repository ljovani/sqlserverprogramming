
/*
create view cadastrocompletoclientes as
select 
	p.cpf, 
	p.nome, 
	p.rg, 
	p.email AS "e-mail", 
	p.data_nascimento AS "data de nascimento", 
	p.endereco AS "endere�o", 
	p.bairro, 
	p.cep, 
	p.telefone, 
	p.celular, 
	p.data_cadastro AS "data de cadastro",
	t.tipo AS "tipo de cliente",
	ge1.grauescolar AS "grau escolaridade",
	ge2.genero AS "g�nero",
	c.quantidade_emprestimos AS "quantidade de empr�stimos",
	c.quantidade_compra AS "quantidade de compras"
from 
clientes c 
inner join pessoas p on c.cpf = p.cpf
inner join tiposclientes t on c.codigotipo = t.codigo
inner join grausescolares ge1 on ge1.codigo = p.codigograuescolar
inner join generos ge2 on ge2.codigo = p.genero
*/
/*
create view cadastrocompletocolaboradores as
select 
c.cpf,
p.nome,
p.rg,
p.email,
p.data_nascimento AS "data de nascimento",
p.endereco,
p.bairro,
p.cep,
p.telefone,
p.celular,
p.data_cadastro AS "data de cadastro",
ge1.grauescolar AS "grau de escolaridade",
ge2.genero AS "g�nero",
t.tipo AS "tipo de colaborador"
from
colaboradores c
inner join pessoas p on c.cpf = p.cpf
inner join grausescolares ge1 on ge1.codigo = p.codigograuescolar
inner join generos ge2 on ge2.codigo = p.genero
inner join tiposcolaboradores t on t.codigo = c.codigotipo


create view cadastrocompletoitensacervo as
select 
t.tipo,
i.nome,
i.editora,
i.ISBN,
i.preco_emprestimo AS "pre�o do empr�stimo",
i.preco_compra AS "pre�o da compra",
i.preco_venda AS "pre�o da venda",
i.data_cadastro AS "data de cadastro",
iif(i.flag_emprestimo=0, 'n�o emprestado', 'emprestado') AS "status de empr�stimo",
iif(i.flag_vendido=0, 'n�o vendido', 'vendido') AS "status de venda"
from 
itensacervo i
inner join tipositensacervo t on i.codigotipo = t.codigo

create view cadastroemprestimos as
select 
e.cpf,
p.nome,
e.quantidade_itens AS "quantidade de itens",
e.data_cadastro AS "data de cadastro"
from 
emprestimos e
inner join pessoas p on e.cpf = p.cpf;


create view cadastroitensemprestados as
select
t.tipo AS "tipo de item",
i2.nome,
i2.preco_emprestimo AS "pre�o do empr�stimo",
p.cpf,
p.nome AS "devedor",
e.data_cadastro AS "data do empr�stimo"
from
itensemprestados i1 
inner join emprestimos e on i1.codigoemprestimo = e.codigo
inner join itensacervo i2 on i1.codigoitemacervo = i2.codigo
inner join pessoas p on e.cpf = p.cpf
inner join tipositensacervo t on i2.codigotipo = t.codigo

create view cadastrocompletovendas as
select 
v.cpf,
p.nome AS "comprador",
v.quantidade_itens AS "quantidade_itens",
v.valor,
v.data_cadastro AS "data de cadastro"
from 
venda v
inner join pessoas p on v.cpf = p.cpf;


create view cadastrocompletoitensvenda as
select 
v.cpf,
p.nome AS "comprador",
t.tipo,
i.nome AS "item",
i.preco_venda AS "pre�o de venda",
v.data_cadastro AS "data de cadastro"
from 
itensvenda aux 
inner join venda v on aux.codigovenda = v.codigo
inner join pessoas p on v.cpf = p.cpf
inner join itensacervo i on aux.coditemacervo = i.codigo
inner join tipositensacervo t on i.codigotipo = t.codigo
*/