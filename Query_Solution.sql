
--Query 1
SELECT Nome, Ano FROM Filmes


--Query 2
SELECT * FROM Filmes ORDER BY Ano ASC


--Query 3
SELECT * WHERE Nome = 'De Volta para o Futuro' FROM Filmes


--Query 4
SELECT * WHERE Ano = 1997 FROM Filmes

--Query 5
SELECT * WHERE Ano > 2000 FROM Filmes

--Query 6
SELECT * WHERE Duracao > 100 AND Duracao < 150  FROM Filmes ORDER By Duracao ASC

--Query 7
SELECT Ano, Count(*) Quantidade FROM Filmes GROUP BY Ano, ORDER BY Duracao DESC

--Query 8
SELECT * FROM Atores WHERE Genero = 'M'

--Query 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY Genero DESC PrimeiroNome

--Query 10
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--Query 11
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Genero = 'Mistério'

--Query 12
SELECT PrimeiroNome, UltimoNome, Papel FROM Atores INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme













