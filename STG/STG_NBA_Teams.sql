CREATE TABLE [dbo].[STG_NBA_Teams](
            [Conferencia][varchar](100) NULL,
			[Division][varchar](100) NULL,
			[Equipo][varchar](255) NULL,
			[Ciudad][varchar](255) NULL,
			[Estado][varchar](10) NULL,
			[Pabellon][varchar](255) NULL,
			[Fundado][numeric](4,0) NOT NULL,
			[Patrocinio][varchar](255) NULL
) ON [PRIMARY]
GO