use cadastros;
describe cursos;
select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';
# modificar 2 valores, em campos diferentes, de uma vez
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';
# cada update só pode modificar uma linha por vez, se precisar modificar 2 linhas, tem que ser 2 update diferentes
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1; # a ação do update vai ser limitada a apenas uma linha

# Deletar registro (linha)
delete from cursos
where idcurso = '8';
