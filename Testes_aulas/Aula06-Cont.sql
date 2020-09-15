use cadastros;

create table if not exists cursos (
nome varchar(30) not null unique, # nome do curso
descricao text, # descrição do curso
carga int unsigned, # número de horas de aula que não pode ser um número negativo
totaulas int unsigned, # total de aulas
ano year default '2020'
) default charset = utf8;

alter table cursos
add column idcurso int not null first;
# não dá para criar um campo e já colocá-lo como chave prim. é preciso dois alter table para isso
alter table cursos
add primary key (idcurso); 

desc cursos;