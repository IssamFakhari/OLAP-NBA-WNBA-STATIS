CREATE TABLE [dbo].[DIM_Estados_EEUU](
            [pk_estado_EEUU][numeric](4,0),
			[codigo][varchar](50) NOT NULL,
			[nombre][varchar](255) NOT NULL,
			[Nombre oficial][varchar](100) NOT NULL,
			[superficie][numeric](8,0) NOT NULL,
			[poblacion][numeric](8,0) NOT NULL,
			[capital][nvarchar](100) NOT NULL,
			[densidadPoblacion][decimal](8,2) NOT NULL,
		    CONSTRAINT [PK_DIM_Estados_EEUU] PRIMARY KEY CLUSTERED
			(
			[pk_estado_EEUU] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO
