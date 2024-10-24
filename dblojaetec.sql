CREATE DATABASE dblojaetec;
USE dblojaetec;

-- Criar a tabela usuarios
CREATE TABLE usuarios (
    iduser INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    fone VARCHAR(15),
    login VARCHAR(15) NOT NULL UNIQUE,
    senha VARCHAR(15) NOT NULL
);

-- Criar a tabela clientes
CREATE TABLE clientes (
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(15) not null,
emailcli varchar(50)
);

-- Criar a tabela ORDEM DE SERVIÇOS 
CREATE TABLE ordem_servico (
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,

foreign key(idcli) references clientes(idcli)
);

-- Inserção clientes

INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES
('João da Silva', 'Rua A, 123', '11987654321', 'joao@example.com'),
('Maria Oliveira', 'Avenida B, 456', '11998765432', 'maria@example.com'),
('Carlos Pereira', 'Praça C, 789', '11912345678', 'carlos@example.com');

-- Inserção ordem de serviço 

INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
('Computador', 'Não liga', 'Troca da fonte', 'José', 150.00, 1),
('Impressora', 'Atola papel', 'Limpeza e ajuste', 'Ana', 75.00, 2),
('Notebook', 'Tela quebrada', 'Substituição da tela', 'Pedro', 300.00, 3);

-- Inserção  usuários
    
INSERT INTO usuarios (usuario, fone, login, senha) VALUES
('admin', '11900000000', 'admin', 'admin123'),
('tecnico1', '11911111111', 'tecnico1', 'tec123'),
('tecnico2', '11922222222', 'tecnico2', 'tec456');

--consultar tabelas 
show tables;

--consultas informaçoes da tabela clientes
select* clientes;


    
