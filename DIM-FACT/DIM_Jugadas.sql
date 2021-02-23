CREATE TABLE [dbo].[DIM_Jugadas](
            [pk_jugada][numeric](4,0) NOT NULL,
			[codigo_jugada][varchar](50) NOT NULL,
			[dec_jugada][varchar](100) NOT NULL,
			CONSTRAINT [PK_DIM_Jugadas] PRIMARY KEY CLUSTERED
			(
			[pk_jugada] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO