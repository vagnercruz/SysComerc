use dbcomercio
go
-- Procedimento Select

create proc spmostrar_categoria
as
select top 200 * from categoria
order by idcategoria desc
go


-- Buscar nome

create proc spbuscar_nome
@textobuscar varchar(100)
as select * from categoria where nome like @textobuscar + '%'
go

-- Inserir Categoria

create proc spinserir_categoria
@idcategoria int output,
@nome varchar(100),
@descricao varchar(100)
as
insert  into categoria (nome, descricao) values (@nome, @descricao)
go

-- Editar Categoria

create proc speditar_categoria
@idcategoria int output,
@nome varchar(100),
@descricao varchar(100)
as update categoria set nome=@nome, descricao=@descricao
where idcategoria=@idcategoria
go


-- Deletar Categoria

create proc spdeletar_categoria
@idcategoria int
as
delete from categoria where 
idcategoria=@idcategoria
go