CREATE TABLE [dbo].[DIM_Conferencias](
            [pk_conferencia][numeric](4,0)NOT NULL,
			[codigo_conferencia][varchar](50) NOT NULL,
			[conferencia][varchar](100) NOT NULL,
			CONSTRAINT [PK_DIM_Conferencias] PRIMARY KEY CLUSTERED
			(
			[pk_conferencia] ASC
			) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = 
			OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
			) ON [PRIMARY]
			GO