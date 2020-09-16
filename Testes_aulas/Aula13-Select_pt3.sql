select * from cursos;

/* AGRUPAMENTO DE REGISTROS */
select carga from cursos /* Ele vai retornar uma tabela como a do DISTINCT, mas,
 cada linha tem um agrupamento de registros quem tenham aquele valor na carga*/
group by carga;
# também podemos usar as funções de Agregação (count, max e min, sum, avg...) essas funções vão ser executadas para cada grupo separadamente
select totaulas, count(*) from cursos
/* o count retorna outra tabela com a quantidade de registros que cada grupo tem */
group by totaulas;
# o where também entra nisso
select carga, count(*) from cursos where totaulas = 30
group by carga
order by carga desc;

select carga, count(*) from cursos
group by carga
having count(carga) > 3;

# misturando tudo
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by ano desc;

# podemos meio que vazer condições com os valores que as funções de Agragação retornam
select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);