use minhabiblioteca;
go

create table grausescolares(
codigo smallint not null identity(1,1) primary key,
grauescolar varchar(30) not null
)

create table generos (
codigo smallint not null identity(1,1) primary key,
genero varchar(20) not null default 'gênero'
)

create table pessoas (
cpf varchar(30) not null default '000.000.000-00' primary key,
nome varchar(100) not null default 'nome',
rg varchar(30) not null default '00.000.000-0',
email varchar(50) not null default 'email@host.com',
data_nascimento date not null,
endereco varchar(100) not null default 'endereco',
bairro varchar(50) not null default 'bairro',
cep varchar(15) not null default '00000-000',
telefone varchar(20) not null default '+55 00 0000-0000',
celular varchar(20) not null default '+55 00 00000-0000',
data_cadastro date not null default getdate(),
codigograuescolar smallint not null foreign key references grausescolares(codigo),
senha varchar(8) not null default 'senha',
genero smallint not null foreign key references generos(codigo)
)

create table tiposclientes (
codigo smallint not null identity(1,1) primary key,
tipo varchar(20) not null default 'tipo'
)

create table clientes(
cpf varchar(30) not null primary key foreign key references pessoas(cpf),
codigotipo smallint not null foreign key references tiposclientes(codigo),
quantidade_emprestimos int default 0,
quantidade_compra int default 0
)

create table tiposcolaboradores(
codigo smallint not null identity(1,1) primary key,
tipo varchar(20) not null default 'tipo'
)

create table colaboradores(
cpf varchar(30) not null foreign key references pessoas(cpf),
codigotipo smallint not null foreign key references tiposcolaboradores(codigo)
)

create table tipositensacervo(
codigo smallint not null identity(1,1) primary key,
tipo varchar(20) not null default 'tipo'
)

create table itensacervo(
codigo smallint not null identity(1,1) primary key,
codigotipo smallint not null foreign key references tipositensacervo(codigo),
nome varchar(100) not null default 'nome',
editora varchar(100) not null default 'editora',
ISBN numeric(13,0) default 0000000000000,
preco_emprestimo decimal not null default 0.00,
preco_compra float not null default 0.00,
preco_venda float not null default 0.00,
data_cadastro date default getdate(),
flag_emprestimo smallint not null default 0,
flag_vendido smallint not null default 0
)  

create table emprestimos(
codigo smallint not null identity(1,1) primary key,
cpf varchar(30) not null foreign key references clientes(cpf),
quantidade_itens int not null default 1,
valor float not null default 0.00,
data_cadastro date not null default getdate()
)

create table itensemprestados(
codigoemprestimo smallint not null foreign key references emprestimos(codigo),
codigoitemacervo smallint not null foreign key references itensacervo(codigo)
)

create table venda (
codigo smallint not null identity(1,1) primary key,
cpf varchar(30) not null foreign key references clientes(cpf),
quantidade_itens int not null,
valor float not null default 0.00,
data_cadastro date not null default getdate()
)

create table itensvenda (
codigovenda smallint not null foreign key references venda(codigo),
coditemacervo smallint not null foreign key references itensacervo(codigo)
)
