# use cadastros; dps q abrir o banco, não precisa abrir mais
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Maria', '1999-10-28', 'F', '70', '1.65', 'Portugal'); # no SQL, tudo entre aspas não são Strings, são Dados
# lembrando que, o campo 'id' não precisa ser declarado aqui, pois ele tem o constraints 'auto_increment' que automaticamente vai dar um valor ao id
select * from pessoas; # selecione todos (*) os campos de (from) pessoas. Isso vai mostrar uma tabelinha com os dados já adicionados
# VÁRIOS DADOS DE UMA VEZ
insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Ana', '1975-12-20', 'F', '52.3', '1.45', 'EUA'),
('Pedro', '2000-07-15', 'M', '60', '1.60', 'Brasil'),
('Paula', '2002-01-30', 'F', '75.9', '1.70', 'Portugal');

# p outra tabela
INSERT INTO cursos 
(idcurso,nome,descricao,carga,totaulas, ano)
VALUES
('1','HTML4','Curso de HTML5', '40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');
