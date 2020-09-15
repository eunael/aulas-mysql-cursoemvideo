select * from cursos;

select * from cursos
order by nome; #"order by" é um parâmetro que ordena a tabela selecionada de acordo com o campo indicado

select nome, carga, ano from cursos #aqui podemos selecionar só alguns campos para serem selecionado ao invés de selecionar todos
order by ano;

#selecionando linhas
select * from cursos
where ano = '2016' # selciona todos os registros onde tiver '2016' no campo ano
order by nome;

# selecionando em intervalos com operadores. O where permite usar operadores como numa condição
# Relacionais  (=, >/=, </=, !=) 
select nome, descricao, ano from cursos
where ano <= '2015' 
order by ano, nome;
# Lógicos (IN, AND, OR, NOT)
select nome, descricao, ano from cursos
#where ano between '2014' and '2017'
where ano in ('2015', '2017', '2019')
order by ano, nome;
# Lógicos com relacionais
select nome, carga, totaulas from cursos
#where carga > 35 and totaulas < 30
where carga <= 30 or totaulas <20
order by nome;