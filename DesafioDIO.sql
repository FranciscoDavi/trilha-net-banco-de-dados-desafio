--1
SELECT Nome, Ano FROM Filmes;

--2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao From Filmes WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao From Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(ANO) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--8 
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

--9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10
SELECT F.Nome, G.Genero FROM FILMES as F 
	JOIN FilmesGenero as FG ON F.Id = FG.IdFilme
		JOIN Generos as G ON FG.IdGenero = G.Id;

--11
SELECT F.Nome FROM FILMES as F 
	JOIN FilmesGenero as FG ON F.Id = FG.IdFilme
		JOIN Generos as G ON FG.IdGenero = G.Id WHERE G.Genero = 'Mistério';

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM FILMES as F
	JOIN ElencoFilme AS EF ON EF.IdFilme = F.Id
		JOIN Atores as A on EF.IdAtor = A.Id;