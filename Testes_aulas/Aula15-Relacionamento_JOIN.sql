desc gafanhotos;
alter table gafanhotos add column cursopreferido int;

# agora vamos adicionar um índice de chave estrangeira em "cursopreferido"
alter table gafanhotos
add foreign key(cursopreferido) 
references cursos(idcurso); 
# "foreing key"(inglês) = "chave estrageira"(pt)
# referenciar a tabela e o campo de quem essas chave estrangeira vai ser

select * from gafanhotos;
select * from cursos;

# vamos colocar valores no campo cursopreferido para indicar as chaves estrangeiras
update gafanhotos set cursopreferido = '6' where id = '1';