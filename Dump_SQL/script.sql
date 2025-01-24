USE [ApiInfoDenguePRD]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/01/2025 21:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DadosEpidemiologicos]    Script Date: 06/01/2025 21:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DadosEpidemiologicos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoIBGE] [nvarchar](max) NOT NULL,
	[Doenca] [nvarchar](max) NOT NULL,
	[DataInicio] [datetime2](7) NOT NULL,
	[DataFim] [datetime2](7) NOT NULL,
	[CasosEstimadosMin] [int] NOT NULL,
	[CasosEstimadosMax] [int] NOT NULL,
	[Incidencia] [real] NOT NULL,
 CONSTRAINT [PK_DadosEpidemiologicos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relatorios]    Script Date: 06/01/2025 21:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relatorios](
	[Id] [uniqueidentifier] NOT NULL,
	[DataSolicitacao] [datetime2](7) NOT NULL,
	[Arbovirose] [nvarchar](max) NOT NULL,
	[SemanaInicio] [int] NOT NULL,
	[SemanaFim] [int] NOT NULL,
	[CodigoIBGE] [nvarchar](max) NOT NULL,
	[Municipio] [nvarchar](max) NOT NULL,
	[SolicitanteId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Relatorios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitantes]    Script Date: 06/01/2025 21:26:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitantes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[CPF] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Solicitantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Relatorios]  WITH CHECK ADD  CONSTRAINT [FK_Relatorios_Solicitantes_SolicitanteId] FOREIGN KEY([SolicitanteId])
REFERENCES [dbo].[Solicitantes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Relatorios] CHECK CONSTRAINT [FK_Relatorios_Solicitantes_SolicitanteId]
GO
