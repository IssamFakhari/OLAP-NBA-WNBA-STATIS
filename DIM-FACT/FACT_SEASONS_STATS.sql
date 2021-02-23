CREATE TABLE [dbo].[FACT_SEASONS_STATS](
            [id_season][numeric](4,0) NOT NULL,
			[id_player][numeric](4,0) NOT NULL,
			[id_team][numeric](4,0) NOT NULL,
			[id_position][numeric](4,0) NOT NULL,
			[league][nvarchar](4) NOT NULL,
			[GP][numeric](8,0) NOT NULL,
			[PTS][numeric](8,0) NOT NULL,
			[MIN][numeric](8,0) NOT NULL,
			[FGM][numeric](8,0) NOT NULL,
			[FGA][numeric](8,0) NOT NULL,
			[FG%][numeric](8,0) NOT NULL,
			[3PM][numeric](8,0) NOT NULL,
			[3PA][numeric](8,0) NOT NULL,
			[3P%][numeric](8,0) NOT NULL,
			[2PM][numeric](8,0) NOT NULL,
			[2PA][numeric](8,0) NOT NULL,
			[2P%][numeric](8,0) NOT NULL,
			[FTM][numeric](8,0) NOT NULL,
			[FTA][numeric](8,0) NOT NULL,
			[FT%][numeric](8,0) NOT NULL,
			[eFG%][numeric](8,0) NOT NULL,
			[OREB][numeric](8,0) NOT NULL,
			[DREB][numeric](8,0) NOT NULL,
			[REB][numeric](8,0) NOT NULL,
			[AST][numeric](8,0) NOT NULL,
			[TOV][numeric](8,0) NOT NULL,
			[STL][numeric](8,0) NOT NULL,
			[BLK][numeric](8,0) NOT NULL,
			[PF][numeric](8,0) NOT NULL,
			[EFF][numeric](8,0) NOT NULL,
) ON [PRIMARY]
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS]  WITH CHECK ADD CONSTRAINT
[FK_Season] FOREIGN KEY([id_seasons])
REFERENCES[dbo].[DIM_Tiempo]([pk_date])
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS] CHECK CONSTRAINT[FK_Season]
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS]  WITH CHECK ADD CONSTRAINT
[FK_Player] FOREIGN KEY([id_player])
REFERENCES[dbo].[DIM_Jugadores]([pk_jugador])
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS] CHECK CONSTRAINT[FK_Player]
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS]  WITH CHECK ADD CONSTRAINT
[FK_Team] FOREIGN KEY([id_team])
REFERENCES[dbo].[DIM_Equipos]([pk_equipo])
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS] CHECK CONSTRAINT[FK_Team]
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS]  WITH CHECK ADD CONSTRAINT
[FK_Position] FOREIGN KEY([id_position])
REFERENCES[dbo].[DIM_PosicionesJuego]([pk_posicion_juego])
GO

ALTER TABLE[dbo].[FACT_SEASONS_STATS] CHECK CONSTRAINT[FK_Position]
GO