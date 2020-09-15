create database cadastros
default character set utf8 # constraint: default character set: dá ao BD um codificação de caracter por padrão
default collate utf8_general_ci; # constraint: default collate: e um collate padrão voltado ao utf8
use cadastros; #já referenciei
create table pessoas (
id int not null auto_increment, # constraint: auto_increment: meio que dá um valor a tal campo começando de 1 e somando mais 1, e mais 1...
nome varchar(30) not null, # constraint: not null: não pode ser vazio
nascimento date,
sexo enum('M', 'F'), # tipo primitivo: enum: só permite sexo receber 'M' ou 'F'
peso decimal(5,2), # tipo primitivo: decimal: tem 5 casas sendo 2 depois da vírgula
altura decimal(3,2), # tipo primitivo: decimal: 3 casas com 2 depois da vírgula
nacionalidade varchar(20) default 'Brazil', # constraint: default: se nada for recebido, o valor padrão vai ser 'Brasil'
primary key(id)
) default charset = utf8;