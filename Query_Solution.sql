
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

--Extra Learning 

--selecionar nomes que tem G no meio e order por nome, depois sobrenome
SELECT * FROM Atores WHERE Nome LIKE '%G%' ORDER BY Nome, Sobrenome
SELECT * FROM Atores WHERE Nome LIKE '%G' ORDER BY Nome, Sobrenome
--Count, Sum
SELECT Count(*) NomeTotalDiego FROM Atores WHERE Nome = 'Diego'

--MAX,MIN
SELECT MAX(Idade) IdadeMaxima FROM Atores
SELECT MIN(Idade) IdadeMinima FROM Atores
SELECT AVG(Idade) IdadeMinima FROM Atores

--concatenando strings
SELECT Nome + ' - ' + Sobrenome FROM Atores

--UPPER/LOWER
SELECT UPPER(Nome) NOMECAPSLOCK FROM Atores

--DATE FORMAT
SELECT Nome, FORMAT(Data_Nascimento, 'dd-MM-yyyy HH:mm') DataFormatada FROM Atores

--Group By : agrupando atores que nao tem 20 anos por cidade e no final ordenando do maior para o menor
SELECT Cidade, Count(*) Total from Atores WHERE Idade <> 20 GROUP BY Cidade ORDER BY Total DESC



























