insert into grausescolares (grauescolar) values ('Ensino Fundamental Incompleto');
insert into grausescolares (grauescolar) values ('Ensino Fundamental Completo');
insert into grausescolares (grauescolar) values ('Ensino Médio Incompleto');
insert into grausescolares (grauescolar) values ('Ensino Médio Completo');
insert into grausescolares (grauescolar) values ('Ensino Superior Incompleto');
insert into grausescolares (grauescolar) values ('Ensino Superior Completo');

insert into generos (genero) values ('Homem');
insert into generos (genero) values ('Mulher');
insert into generos (genero) values ('Homem trans');
insert into generos (genero) values ('Mulhet trans');

insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('111.111.111-11','Pessoa teste 1','11.111.111-1','1988-04-24',1,1);
insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('222.222.222-22','Pessoa teste 2','22.222.222-2','1988-04-25',2,2);
insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('333.333.333-33','Pessoa teste 3','33.333.333-3','1988-04-26',3,3);
insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('444.444.444-44','Pessoa teste 4','44.444.444-4','1988-04-27',4,4);
insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('555.555.555-55','Pessoa teste 5','55.555.555-5','1988-04-28',5,1);
insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('666.666.666-66','Pessoa teste 6','66.666.666-6','1988-04-29',6,2);
insert into pessoas (cpf,nome,rg, data_nascimento,codigograuescolar, genero) values ('777.777.777-77','Pessoa teste 7','77.777.777-7','1988-04-30',6,3);

insert into tiposclientes (tipo) values ('estudante');
insert into tiposclientes (tipo) values ('professor');

insert into clientes (cpf, codigotipo) values ('111.111.111-11',1);
insert into clientes (cpf, codigotipo) values ('222.222.222-22',1);
insert into clientes (cpf, codigotipo) values ('333.333.333-33',2);
insert into clientes (cpf, codigotipo) values ('444.444.444-44',2);

insert into tiposcolaboradores (tipo) values ('atendente');
insert into tiposcolaboradores (tipo) values ('bibliotecário');

insert into colaboradores values ('555.555.555-55',1);
insert into colaboradores values ('666.666.666-66',1);

insert into emprestimos (cpf,quantidade_itens) values ('111.111.111-11',3);
insert into emprestimos (cpf,quantidade_itens) values ('222.222.222-22',1);

insert into itensemprestados values (1,1);
insert into itensemprestados values (1,2);
insert into itensemprestados values (1,3);
insert into itensemprestados values (2,4);
insert into colaboradores values ('777.777.777-77',2);

insert into tipositensacervo (tipo) values ('jornal');
insert into tipositensacervo (tipo) values ('livro');
insert into tipositensacervo (tipo) values ('dicionário');
insert into tipositensacervo (tipo) values ('enciclopédia');

insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (1,'Fascículo teste 1', 'editora 1', 1111111111111,5.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (1,'Fascículo teste 2', 'editora 1', 2222222222222,5.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (1,'Fascículo teste 3', 'editora 2', 4444444444444,6.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (3,'Dicionário teste 4', 'editora 3', 3333333333333,95.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (3,'Dicionário teste 5', 'editora 1', 5555555555555,105.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (2,'Livro teste 6', 'editora 3', 66666666666,75.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (2,'Livro teste 7', 'editora 4', 7777777777777,85.5);
insert into itensacervo (codigotipo,nome,editora,ISBN,preco_emprestimo) values (4,'Enciclopédia teste 8', 'editora 4', 8888888888888,115.5);