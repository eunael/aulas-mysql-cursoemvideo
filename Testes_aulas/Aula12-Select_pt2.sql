use cadastro;
select * from cursos
WHERE nome LIKE 'P%'; /* Selecione todos de cursos onde nome se pareça com 'P'+'vários ou nenhum caracter';*/
/* "LIKE" assume o sentido de "parecido", "semelhante".
Essa comando vai selecionar, em nome, onde começa com a letra P.*/
/*O '%' é um "wild card", ele vai ser substituído por vários ou nenhum caracter durante a pesquisa. Ou seja,
[...] LIKE 'P%'; equivale a [...] LIKE 'P'+'vários ou nenhum caracter';. E a posição desse % influêcia
na busca. Ex.: 'A%'(que COMEÇA com A); '%A'(que TERMINA com A); '%A%'(que tenha A em QUALQUER lugar). Tanto faz
a letra for minúscula ou maiúscula*/
select * from cursos
WHERE nome NOT LIKE 'P%';

select * from cursos
WHERE nome LIKE '%a_a%';

select nacionalidade from gafanhotos;
select distinct nacionalidade from gafanhotos /* seleciona apenas a primeira ocorrência de tal valor */
order by nacionalidade;

select * from cursos;
select count(*) from cursos; /* Vai contar quantas coisas tem */
select count(*) from cursos where carga > 40;

select max(carga) from cursos; /* Retorna o maior valor em um campo */
select max(totaulas) from cursos where ano = '2016';

select min(totaulas) from cursos; /* Retorna o menor valor em um campo */
select min(carga) from cursos where ano = '2016';

select sum(totaulas) from cursos; /* Retorna a soma de todos os valores do campo indicado */
select sum(carga) from cursos where ano = '2016';

select avg(totaulas) from cursos; /* Retorna a média de todos os valores */
select avg(carga) from cursos where ano = '2016';