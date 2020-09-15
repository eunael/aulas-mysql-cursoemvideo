desc pessoas;

alter table pessoas
add column profissao varchar(20); # vai add a coluna (ou campo) no BD
# add column profissao varchar(20) after nome; # vai add a coluna (ou campo) no BD depois da coluna "nome"
# add codigo int first; # add a coluna "codigo" no começo. E a palavra "column" é opcional
# modify column profissao varchar(20) not null default ''; # modificar o tipo primitivo e/ou as constraints de uma coluna
# change column profissao prof varchar(20) not null default ''; # vai mudar o nome do campo
# rename to gafanhoto; # renomeia o nome da tabela

alter table pessoas
drop column profissao; # vai deletar do BD a coluna inteira

select * from pessoas;
