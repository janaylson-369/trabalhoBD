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

-- Inserindo Produtos
INSERT INTO produto (descricao, preco) VALUES 
('Smartphone Poco X7 Pro', 1200.00), -- Para a consulta 1
('Mouse Gamer', 65.00),             -- Para a consulta 3
('Teclado Mecânico', 75.00),         -- Para a consulta 3
('Cabo HDMI', 30.00);

-- Inserindo Vendedores
INSERT INTO vendedor (nome, cpf, telefone) VALUES 
('Marcos Oliveira', '12345678901', '99999-1111'),
('Ana Costa', '98765432100', '99999-2222');

-- Inserindo Clientes
INSERT INTO cliente (nome, telefone, endereco, tipo_cliente) VALUES 
('Carlos Silva', '98888-0000', 'Rua A, 10', 'Premium'),
('José Roberto', '98888-1111', 'Rua B, 20', 'Comum'),
('Maria José', '98888-2222', 'Rua C, 30', 'Premium');

-- Inserindo Vendas
-- Venda do Carlos Silva (Consulta 4)
INSERT INTO Vendas (valor_venda, valor_desconto, data_venda, idvendedor, idproduto, idcliente) 
VALUES (1200.00, 100.00, '2026-02-01', 2, 1, 1);

-- Venda do vendedor de CPF específico e produto id 1 (Consulta 6)
INSERT INTO Vendas (valor_venda, valor_desconto, data_venda, idvendedor, idproduto, idcliente) 
VALUES (1200.00, 150.00, '2026-02-02', 1, 1, 2);

-- Outra venda para o cliente id 1 (Para testar o MAX da consulta 7)
INSERT INTO Vendas (valor_venda, valor_desconto, data_venda, idvendedor, idproduto, idcliente) 
VALUES (65.00, 5.00, '2026-02-03', 2, 2, 1);
