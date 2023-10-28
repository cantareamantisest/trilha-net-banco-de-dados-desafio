SELECT [Nome], [Ano] FROM [dbo].[Filmes]
GO

SELECT * FROM [dbo].[Filmes]
ORDER BY [Ano]
GO

SELECT * FROM [dbo].[Filmes]
WHERE [Nome] = 'De Volta para o Futuro'
GO

SELECT * FROM [dbo].[Filmes]
WHERE [Ano] = 1997
GO

SELECT * FROM [dbo].[Filmes]
WHERE [Ano] > 2000
GO

SELECT * FROM [dbo].[Filmes]
WHERE [Duracao] BETWEEN 101 AND 149
ORDER BY [Duracao]
GO

SELECT [Ano], COUNT([Ano]) AS Quantidade FROM [dbo].[Filmes]
GROUP BY [Ano]
ORDER BY Quantidade DESC
GO

SELECT [PrimeiroNome], [UltimoNome] FROM [dbo].[Atores]
WHERE [Genero] = 'M'
GO

SELECT [PrimeiroNome], [UltimoNome] FROM [dbo].[Atores]
WHERE [Genero] = 'F'
ORDER BY [PrimeiroNome]
GO

SELECT F.[Nome], G.[Genero] FROM [dbo].[Filmes] AS F
INNER JOIN [dbo].[FilmesGenero] AS H ON F.[Id] = H.[IdFilme]
INNER JOIN [dbo].[Generos] AS G ON G.[Id] = H.[IdGenero]
GO

SELECT F.[Nome], G.[Genero] FROM [dbo].[Filmes] AS F
INNER JOIN [dbo].[FilmesGenero] AS H ON F.[Id] = H.[IdFilme]
INNER JOIN [dbo].[Generos] AS G ON G.[Id] = H.[IdGenero]
WHERE G.[Genero] = 'Mistério'
GO

--Implementar consulta 12

SELECT F.[Nome], A.[PrimeiroNome], A.[UltimoNome], E.[Papel] FROM [dbo].[Filmes] AS F
INNER JOIN [ElencoFilme] AS E ON F.[Id] = E.[IdFilme]
INNER JOIN [dbo].[Atores] AS A ON E.[IdAtor] = A.[Id]
GO