CREATE TABLE [dbo].[Evento]
(
	[IdEvento] INT NOT NULL PRIMARY KEY,
	[NomeEvento] VARCHAR(100) NOT NULL,
	[DataEvento] DATETIME NOT NULL,
	[LocalEvento] VARCHAR(300) NOT NULL
)
