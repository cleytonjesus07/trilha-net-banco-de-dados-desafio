-- 1

SELECT nome,ano FROM Filmes

-- 2

SELECT * FROM Filmes ORDER BY ANO ASC

-- 3

SELECT nome,ano,duracao from Filmes WHERE nome = 'De volta para o Futuro'

-- 4 

SELECT * FROM filmes WHERE ano = 1997

-- 5

SELECT * FROM filmes WHERE ano > 2000

-- 6

SELECT * FROM filmes WHERE duracao > 100 AND duracao < 150 ORDER BY duracao ASC

-- 7 ?

SELECT Ano,COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8

SELECT * FROM atores WHERE genero = 'M'

-- 9

SELECT PrimeiroNome,UltimoNome FROM atores WHERE genero = 'F' ORDER BY PrimeiroNome

-- 10

SELECT f.Nome,g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id

-- 11


SELECT f.Nome,g.Genero FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério'

-- 12

SELECT f.Nome,act.PrimeiroNome,act.UltimoNome,ef.Papel FROM Filmes f INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN Generos g ON fg.IdGenero = g.Id INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme INNER JOIN Atores act ON ef.IdAtor = act.Id 

