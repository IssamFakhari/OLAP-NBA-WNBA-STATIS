CREATE TABLE [dbo].[DIM_Minutos](
            [pk_minutoSegundo][numeric](4,0) NOT NULL,
			[minuto][tinyint] NOT NULL,
			[segundo][tinyint] NOT NULL,
			[minutoSegundo][varchar](10) NOT NULL,
			CONSTRAINT [PK_DIM_Minutos] PRIMARY KEY CLUSTERED
			(
			[pk_minutoSegundo] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO