USE [TEVIRTUAL]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 31-08-2019 02:22:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[COD_CLIENTE] [int] IDENTITY(1,1) NOT NULL,
	[NOM_CLIENTE] [varchar](100) NOT NULL,
	[CP_CLIENTE] [int] NOT NULL,
	[LOC_CLIENTE] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[COD_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 31-08-2019 02:22:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[COD_CLIENTE] [int] NOT NULL,
	[IMPORTE] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] ON 
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (1, N'Construcciones ADA', 28001, N'Madrid')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (2, N'Transportes Laborda', 41001, N'Sevilla')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (3, N'Tintorería Rápida', 17001, N'Lugo')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (4, N'Grandes Almacenes', 50001, N'Zaragoza')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (5, N'Diario de Navarra', 26356, N'Barcelona')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (6, N'Arión Grupo', 41562, N'Sevilla')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (7, N'Banco de Finanzas', 28500, N'Madrid')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (8, N'Seguros TRI', 41200, N'Madrid')
GO
INSERT [dbo].[CLIENTES] ([COD_CLIENTE], [NOM_CLIENTE], [CP_CLIENTE], [LOC_CLIENTE]) VALUES (9, N'Mudanzas Bello', 15852, N'Barcelona')
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] OFF
GO
INSERT [dbo].[VENTAS] ([COD_CLIENTE], [IMPORTE]) VALUES (4, CAST(406.78 AS Decimal(18, 2)))
GO
INSERT [dbo].[VENTAS] ([COD_CLIENTE], [IMPORTE]) VALUES (5, CAST(807.84 AS Decimal(18, 2)))
GO
INSERT [dbo].[VENTAS] ([COD_CLIENTE], [IMPORTE]) VALUES (6, CAST(27.95 AS Decimal(18, 2)))
GO
INSERT [dbo].[VENTAS] ([COD_CLIENTE], [IMPORTE]) VALUES (7, CAST(666.28 AS Decimal(18, 2)))
GO
INSERT [dbo].[VENTAS] ([COD_CLIENTE], [IMPORTE]) VALUES (8, CAST(768.17 AS Decimal(18, 2)))
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_CLIENTES] FOREIGN KEY([COD_CLIENTE])
REFERENCES [dbo].[CLIENTES] ([COD_CLIENTE])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_CLIENTES]
GO
