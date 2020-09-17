select * from gafanhotos;

/* Exercício 01 */
select profissao, count(*) from gafanhotos
group by profissao;

/* Exercício 02 */
select sexo, count(sexo) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/* Exercício 03 */
select nacionalidade, count(*) from gafanhotos
where nacionalidade <> 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;

/* Exercício 04 */
select altura, peso, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);