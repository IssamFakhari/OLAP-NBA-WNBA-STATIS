CREATE TABLE [dbo].[DIM_Divisiones](
            [pk_division][numeric](2,0) NOT NULL,
			[codigo_division][varchar](50) NOT NULL,
			[Division][varchar](100) NOT NULL,
			[id_conferencia][numeric](4,0) NOT NULL,
			CONSTRAINT [PK_DIM_Divisiones] PRIMARY KEY CLUSTERED
			(
			[pk_division] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO

			ALTER TABLE[dbo].[DIM_Divisiones]  WITH CHECK ADD CONSTRAINT
			[FK_conferencia] FOREIGN KEY([id_conferencia])
			REFERENCES[dbo].[DIM_Conferencias]([pk_conferencia])
			GO