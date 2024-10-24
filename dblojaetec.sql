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


    