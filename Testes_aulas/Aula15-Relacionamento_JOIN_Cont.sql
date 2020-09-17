/* já feita a relação das duas tabelas, queremos consulta as os dados das duas tabelas
Ex.: mostrar o nomealuno(gafanhoto) e o nomecurso(cursos)*/

# basicamente, quero juntar:
select nome, cursopreferido from gafanhotos;
# com:
select nome from cursos;

# para isso usamos o JOIN para dar um SELECT em duas tabelas(relacionadas) ao mesmo tempo
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos; /* dessa forma o JOIN não junta de forma inteligente, ele junta
cada gafanhotos.nome com todos os cursos.nome*/

# para resolver isso, usamos a cláusula ON, que server como um WHERE, mas para o JOIN
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

# podemos "apelidar" as tabelas com o AS(como) apenas para diminuir o código
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

# tem vários tipos de JOIN, o que usamos até agr é o chamado INNER JOIN
/* INNER JOIN faz a junção apenas dos gafanhotos que tenha
um chave estrageira correspondente à um idcurso de cursos */
/* o OUTER JOIN pega todos, mesmo que não tenha chave estrangeira correspondente */

# para usar esses "outros" joins temos que perceber que há um tabela à esqueda do JOIN e outra à direita
# tendo isso em mente, nos vamos indicar ao JOIN qual vai ser a tabela preferencial
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos left outer join cursos # da preferência à tabela da esquerda(gafanhotos)
on cursos.idcurso = gafanhotos.cursopreferido;
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos right join cursos # da preferência à tabela da direita(cursos)
# qnd tem LEFT/RIGHT ele já considera o join com OUTER join
on cursos.idcurso = gafanhotos.cursopreferido;

