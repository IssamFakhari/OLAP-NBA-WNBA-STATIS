CREATE TABLE [dbo].[FACT_FREE_THROWS](
            [id_temporada][int] IDENTITY (1,1) NOT NULL,
			[id_partido][int] NOT NULL,
			[id_jugador][int] NOT NULL,
			[id_jugada][int] NOT NULL,
			[id_Minuto][int] NOT NULL,
			[periodo_juego][int] NOT NULL,
			[resultado_tiro_libre][numeric](8,2) NOT NULL,
			) ON [PRIMARY]
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS]  WITH CHECK ADD CONSTRAINT
[FK_Season] FOREIGN KEY([id_temporada])
REFERENCES[dbo].[DIM_Tiempo]([pk_date])
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS] CHECK CONSTRAINT[FK_Season]
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS]  WITH CHECK ADD CONSTRAINT
[FK_Partido] FOREIGN KEY([id_partido])
REFERENCES[dbo].[DIM_Partidos]([pk_date])
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS] CHECK CONSTRAINT[FK_Partido]
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS]  WITH CHECK ADD CONSTRAINT
[FK_Jugador] FOREIGN KEY([id_jugador])
REFERENCES[dbo].[DIM_Jugadores]([pk_jugador])
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS] CHECK CONSTRAINT[FK_Jugador]
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS]  WITH CHECK ADD CONSTRAINT
[FK_Jugada] FOREIGN KEY([id_jugada])
REFERENCES[dbo].[DIM_Jugadas]([pk_jugada])
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS] CHECK CONSTRAINT[FK_Jugada]
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS]  WITH CHECK ADD CONSTRAINT
[FK_Minuto] FOREIGN KEY([id_Minuto])
REFERENCES[dbo].[DIM_Minutos]([pk_minutoSegundo])
GO

ALTER TABLE[dbo].[FACT_FREE_THROWS] CHECK CONSTRAINT[FK_Minuto]
GO