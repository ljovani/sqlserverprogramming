
create procedure colaborador
@cpf varchar(30),
@rg varchar(30),
@email varchar(50),
@data_nascimento date,
@endereco varchar(100),
@bairro varchar(50),
@cep varchar(15),
@telefone varchar(20),
@celular varchar(20),
@codigograuescolar smallint,
@senha varchar(8),
@genero smallint,
@codigotipo smallint
AS
INSERT INTO pessoas (cpf,rg,email,data_nascimento,endereco,bairro,cep,telefone,celular,codigograuescolar,senha,genero)
			VALUES (@cpf,@rg,@email,@data_nascimento,@endereco,@bairro,@cep,@telefone,@celular,@codigograuescolar,@senha,@genero)
if @@ROWCOUNT > 0
	begin
		INSERT INTO colaboradores(cpf,codigotipo) VALUES (@cpf,@codigotipo)
		if @@ROWCOUNT > 0
			commit transaction
		else
			rollback transaction
	end
else
	rollback transaction
go

create procedure cliente 
@cpf varchar(30),
@rg varchar(30),
@email varchar(50),
@data_nascimento date,
@endereco varchar(100),
@bairro varchar(50),
@cep varchar(15),
@telefone varchar(20),
@celular varchar(20),
@codigograuescolar smallint,
@senha varchar(8),
@genero smallint,
@codigotipo smallint
AS
INSERT INTO pessoas (cpf,rg,email,data_nascimento,endereco,bairro,cep,telefone,celular,codigograuescolar,senha,genero)
			VALUES (@cpf,@rg,@email,@data_nascimento,@endereco,@bairro,@cep,@telefone,@celular,@codigograuescolar,@senha,@genero)
if @@ROWCOUNT > 0
	begin
		INSERT INTO clientes (cpf,codigotipo) VALUES (@cpf,@codigotipo)
		if @@ROWCOUNT > 0
			commit transaction
		else
			rollback transaction
	end
else
	rollback transaction
go

create procedure itememprestado
@codigoemprestimo smallint,
@itemacervo smallint
AS
INSERT INTO itensemprestados VALUES (@codigoemprestimo,@itemacervo)
if @@ROWCOUNT > 0
	begin
		update itensacervo set flag_emprestimo = 1 where codigo = @itemacervo;
		if @@ROWCOUNT > 0
			commit transaction
		else
			rollback transaction
	end
else
	rollback transaction
go

create procedure itemvendido
@codigovenda smallint,
@itemacervo smallint
AS
INSERT INTO itensvenda VALUES (@codigovenda,@itemacervo)
if @@ROWCOUNT > 0
	begin
		update itensacervo set flag_vendido = 1 where codigo = @itemacervo;
		if @@ROWCOUNT > 0
			commit transaction
		else
			rollback transaction
	end
else
	rollback transaction
	