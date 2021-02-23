CREATE TABLE [dbo].[DIM_Jugadores](
            [pk_jugador][numeric](4,0) NOT NULL,
			[liga][varchar](5) NOT NULL,
			[cod_jugador][varchar](100) NOT NULL,
			[nombre][varchar](255) NOT NULL,
			[posicion_juego][varchar](100) NOT NULL,
			[sexo][numeric](4,0) NOT NULL,
			[activo][numeric](4) NOT NULL,
			[altura][varchar](50) NOT NULL,
			[peso][varchar](50) NOT NULL,
			[shoots][varchar](50) NOT NULL,
			[universidad][varchar](255) NOT NULL,
			[fecha_nacimiento][date] NOT NULL,
			[ciudad_nacimiento][varchar](255) NOT NULL,
			[career_AST][decimal](8,2) NULL,
			[career_FG%][decimal](8,2) NULL,
			[career_FG3%][decimal](8,2) NULL,
			[career_FT%][decimal](8,2) NULL,
			[career_G][decimal](8,2) NULL,
			[career_PER][decimal](8,2) NULL,
			[career_PTS][decimal](8,2) NULL,
			[career_TRB][decimal](8,2) NULL,
			[career_WS][decimal](8,2) NULL,
			[career_eFG%][decimal](8,2) NULL
			CONSTRAINT [PK_DIM_Jugadores] PRIMARY KEY CLUSTERED
			(
			[pk_jugador] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO