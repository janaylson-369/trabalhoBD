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
	Id_vendedor integer,
	Id_produto integer,
	Id_cliente integer,
	foreign key(Id_vendedor) references vendedor (Id_vendedor),
	foreign key(Id_produto) references produto (Id_produto),
	foreign key(Id_cliente) references cliente (Id_cliente)

);

INSERT INTO produto (descricao, preco) VALUES 
('Smartphone Poco X7 Pro', 1200.00),
('Mouse Gamer', 65.00),            
('Teclado Mecânico', 75.00),         
('Cabo HDMI', 30.00);

INSERT INTO vendedor (nome, CPF, Telefone) VALUES 
('Marcos Oliveira', 123 , 99999-1111),
('Ana Costa', 987654, 99999-2222);

INSERT INTO cliente (nome, telefone, Endereço, tipo_cliente) VALUES 
('Carlos Silva', 98888-0000, 'Rua A, 10', 'Premium'),
('José Roberto', 98888-1111, 'Rua B, 20', 'Comum'),
('Maria José', 98888-2222, 'Rua C, 30', 'Premium');

INSERT INTO vendas (Val_venda, Val_desconto, data_venda, Id_vendedor, Id_produto, Id_cliente) VALUES
(1200, 100, '2026-02-01', 2, 1, 1);
(1200, 150, '2026-02-02', 1, 1, 2);

-- Q1
select *
from produto
where preco > 552;
-- Q2
select distinct tipo_cliente
from cliente
--Q3
select *
from produto
where preco > 50 and preco < 80;
--Q4
select avg(preco)