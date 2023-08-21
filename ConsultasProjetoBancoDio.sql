--1
SELECT	
	nome,
	ano
FROM Filmes;

--2
SELECT	
	nome,
	ano
FROM Filmes
ORDER BY ano;

--3
SELECT	
	nome,
	ano,
	duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro';

--4
SELECT	
	nome,
	ano
FROM Filmes
WHERE ano = 1997;

--5
SELECT	
	nome,
	ano
FROM Filmes
WHERER ano > 2000;

--6
SELECT	
	nome,
	ano,
	duracao
FROM Filmes
WHERER duracao > 100
AND durucao < 150;

--7
SELECT 
	ano,
	count(*) as 'Quantidade'
FROM filmes
GROUP BY ano;

--8
SELECT	*
FROM atores
WHERE genero = 'M';

--9
SELECT	*
FROM atores
WHERE genero = 'F'
ORDER BY primeironome;

--10
SELECT
	F.NOME,
	G.GENERO
FROM filmes f
INNER JOIN filmesgenero fg on fg.idfilme = f.id
INNER JOIN generos g ON g.id = fg.idgenero;

--11
SELECT
	F.NOME,
	G.GENERO
FROM filmes f
INNER JOIN filmesgenero fg on fg.idfilme = f.id
INNER JOIN generos g ON g.id = fg.idgenero
WHERE g.genero = 'Mistério';

--12
SELECT
	f.nome,
	a.primeironome,
	a.ultimonome,
	ef.papel
FROM filmes f
INNER JOIN elencofilme ef ON ef.idfilme = f.id
INNER JOIN atores a ON a.id = ef.idator;