create table produto (
 Id serial primary Key,
 descricao varchar(100),
 preco float
);
 create table vendedor (
Id_vendedor serial primary Key,
nome varchar(30),
CPF integer,
Telefone integer
);

creste table cliente (
Id_cliente serial primary Key,
nome varchar(40),
telefone integer,
Endereço varchar(60),
tipo_cliente varchar(20)
);

create table vendas(
Id_venda serial primary Key,
Val_venda float,
Val_desconto float,
data_venda date,
Id _endedor integer,
Id_produto integer,
Id_cliente integer

);