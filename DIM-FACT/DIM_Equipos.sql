CREATE TABLE [dbo].[DIM_Equipos](
            [pk_equipo][numeric](2,0) NOT NULL,
			[id_estado_EEU][numeric](4,0),
			[id_division][numeric](2,0) NOT NULL,
			[liga][varchar](5) NOT NULL,
			[codigo_equipo][varchar](10) NOT NULL,
			[nombre_equipo][varchar](50) NOT NULL,
			[ciudad][varchar](100) NOT NULL,
			[pabellon][varchar](100) NOT NULL,
			[fundado][numeric](4,0) NULL,
			[patrocinio][varchar](100) NOT NULL,
			CONSTRAINT [PK_DIM_Equipos] PRIMARY KEY CLUSTERED
			(
			[pk_equipo] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO

			ALTER TABLE[dbo].[DIM_Equipos]  WITH CHECK ADD CONSTRAINT
			[FK_Estado_Equipo] FOREIGN KEY([id_estado_EEU])
			REFERENCES[dbo].[DIM_Estados_EEUU]([pk_estado_EEUU])
			GO
			
			ALTER TABLE[dbo].[DIM_Equipos] CHECK CONSTRAINT[FK_Estado_Equipo]
			GO

			ALTER TABLE[dbo].[DIM_Equipos]  WITH CHECK ADD CONSTRAINT
			[FK_Division_Equipo] FOREIGN KEY([id_division])
			REFERENCES[dbo].[DIM_Divisiones]([pk_division])
			GO
			
			ALTER TABLE[dbo].[DIM_Equipos] CHECK CONSTRAINT[FK_Division_Equipo]
			GO
