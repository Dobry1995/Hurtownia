USE [Hurtownia]
GO
/****** Object:  User [NT Service\MSSQLSERVER]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [NT Service\MSSQLSERVER] FOR LOGIN [NT Service\MSSQLSERVER] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT SERVICE\MSSQLServerOLAPService]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [NT SERVICE\MSSQLServerOLAPService] FOR LOGIN [NT SERVICE\MSSQLServerOLAPService] WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
/****** Object:  User [NT SERVICE\SQLSERVERAGENT]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [NT SERVICE\SQLSERVERAGENT] FOR LOGIN [NT SERVICE\SQLSERVERAGENT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT SERVICE\SQLTELEMETRY]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [NT SERVICE\SQLTELEMETRY] FOR LOGIN [NT SERVICE\SQLTELEMETRY] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT SERVICE\SQLWriter]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [NT SERVICE\SQLWriter] FOR LOGIN [NT SERVICE\SQLWriter] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT SERVICE\Winmgmt]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [NT SERVICE\Winmgmt] FOR LOGIN [NT SERVICE\Winmgmt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ZARZĄDZANIE NT\SYSTEM]    Script Date: 2018-06-26 20:53:32 ******/
CREATE USER [ZARZĄDZANIE NT\SYSTEM] FOR LOGIN [ZARZĄDZANIE NT\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT SERVICE\MSSQLServerOLAPService]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT SERVICE\SQLTELEMETRY]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ZARZĄDZANIE NT\SYSTEM]
GO
/****** Object:  Schema [NT Service\MSSQLServerOLAPService]    Script Date: 2018-06-26 20:53:32 ******/
CREATE SCHEMA [NT Service\MSSQLServerOLAPService]
GO
/****** Object:  Table [dbo].[FAKTY]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAKTY](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AMR] [float] NULL,
	[AMR %] [float] NULL,
	[SHR %] [float] NULL,
	[RCH %] [float] NULL,
	[RCH] [float] NULL,
	[Id program] [int] NULL,
	[Id target] [int] NULL,
	[Id kalendarz] [int] NULL,
	[Id opis] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fakty Wczytanie]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fakty Wczytanie](
	[Date] [varchar](max) NULL,
	[Channel] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[2nd Description] [varchar](max) NULL,
	[Start time] [varchar](max) NULL,
	[Duration] [varchar](max) NULL,
	[Variable Target] [varchar](max) NULL,
	[Total Individuals] [varchar](max) NULL,
	[Podgrupa] [varchar](max) NULL,
	[A16-49] [varchar](max) NULL,
	[M16-49] [varchar](max) NULL,
	[A4-15] [varchar](max) NULL,
	[A4-9] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fakty Wczytanie New]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fakty Wczytanie New](
	[Date] [varchar](max) NULL,
	[Channel] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[2nd Description] [varchar](max) NULL,
	[Start time] [varchar](max) NULL,
	[Duration] [varchar](max) NULL,
	[Variable Target] [varchar](max) NULL,
	[Total Individuals] [varchar](max) NULL,
	[Podgrupa] [varchar](max) NULL,
	[A16-49] [varchar](max) NULL,
	[M16-49] [varchar](max) NULL,
	[A4-15] [varchar](max) NULL,
	[A4-9] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fakty wpis]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fakty wpis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](100) NULL,
	[Channel] [varchar](400) NULL,
	[Description] [varchar](400) NULL,
	[2nd Description] [varchar](400) NULL,
	[Start time] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Variable Target] [varchar](100) NULL,
	[Total Individuals] [varchar](100) NULL,
	[Podgrupa] [varchar](50) NULL,
	[A16-49] [varchar](50) NULL,
	[M16-49] [varchar](50) NULL,
	[A4-15] [varchar](50) NULL,
	[A4-9] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupy mediowe]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupy mediowe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Program] [nvarchar](100) NULL,
	[Grupa] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupy Mediowe Wczytanie]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupy Mediowe Wczytanie](
	[F1] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRUPY PROGRAMOW]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRUPY PROGRAMOW](
	[Id grupy] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id grupy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KALENDARZ DAT ASTRONOMICZNYCH]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KALENDARZ DAT ASTRONOMICZNYCH](
	[Id kalendarz_ast] [int] IDENTITY(1,1) NOT NULL,
	[Data zwykla] [date] NULL,
	[Miesiac zwykly] [int] NULL,
	[Dzien zwykly] [int] NULL,
	[Dzien tygodnia zwykly] [varchar](50) NULL,
	[Rok zwykly] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id kalendarz_ast] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KALENDARZ DAT FILMOWYCH]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KALENDARZ DAT FILMOWYCH](
	[Id kalendarz_film] [int] IDENTITY(1,1) NOT NULL,
	[Data filmowa] [date] NULL,
	[Miesiac filmowy] [int] NULL,
	[Dzien filmowy] [int] NULL,
	[Dzien tygodnia filmowy] [varchar](50) NULL,
	[Rok filmowy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id kalendarz_film] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KALENDARZ GODZIN]    Script Date: 2018-06-26 20:53:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KALENDARZ GODZIN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Czas zwykly] [time](0) NULL,
	[Czas filmowy] [varchar](50) NULL,
	[Id Kal data astronomiczna] [int] NULL,
	[Id Kal data filmowa] [int] NULL,
	[Id slownik_giz] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KATEGORIA]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KATEGORIA](
	[Id kat] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa kategoria] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id kat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Film] [varchar](100) NULL,
	[Kategoria] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie Wczytanie]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie Wczytanie](
	[F1] [nvarchar](255) NULL,
	[F2] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPIS]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPIS](
	[Id opis] [int] IDENTITY(1,1) NOT NULL,
	[Opis 1] [varchar](400) NULL,
	[Opis 2] [varchar](400) NULL,
	[Duration program] [time](0) NULL,
	[Start time] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id opis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pivot_table]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pivot_table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](20) NULL,
	[Channel] [varchar](150) NULL,
	[Description] [varchar](150) NULL,
	[2nd Description] [varchar](150) NULL,
	[Start time] [varchar](20) NULL,
	[Duration] [varchar](20) NULL,
	[Groups] [varchar](40) NULL,
	[AMR] [float] NULL,
	[AMR %] [float] NULL,
	[SHR %] [float] NULL,
	[RCH %] [float] NULL,
	[RCH] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROGRAM]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROGRAM](
	[Id program] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa programu] [varchar](100) NULL,
	[Id kategoria] [int] NULL,
	[Id grupy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id program] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SLOWNIK GODZIN FIZ]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SLOWNIK GODZIN FIZ](
	[Id slownika] [int] IDENTITY(1,1) NOT NULL,
	[Godzina zwykla] [varchar](5) NULL,
	[Godzina filmowa] [varchar](5) NULL,
	[Minuta] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id slownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TARGET GROUPS]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TARGET GROUPS](
	[Id target] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa target] [varchar](150) NULL,
	[Kod target] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id target] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Targets Group]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Targets Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](150) NULL,
	[Kod] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Targets Group Wczytanie]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Targets Group Wczytanie](
	[Nazwa] [varchar](max) NULL,
	[Kod] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[FAKTY]  WITH CHECK ADD  CONSTRAINT [FK_opis] FOREIGN KEY([Id opis])
REFERENCES [dbo].[OPIS] ([Id opis])
GO
ALTER TABLE [dbo].[FAKTY] CHECK CONSTRAINT [FK_opis]
GO
ALTER TABLE [dbo].[FAKTY]  WITH CHECK ADD  CONSTRAINT [FK_program] FOREIGN KEY([Id program])
REFERENCES [dbo].[PROGRAM] ([Id program])
GO
ALTER TABLE [dbo].[FAKTY] CHECK CONSTRAINT [FK_program]
GO
ALTER TABLE [dbo].[FAKTY]  WITH CHECK ADD  CONSTRAINT [FK_slownik] FOREIGN KEY([Id kalendarz])
REFERENCES [dbo].[KALENDARZ GODZIN] ([Id])
GO
ALTER TABLE [dbo].[FAKTY] CHECK CONSTRAINT [FK_slownik]
GO
ALTER TABLE [dbo].[FAKTY]  WITH CHECK ADD  CONSTRAINT [FK_target] FOREIGN KEY([Id target])
REFERENCES [dbo].[TARGET GROUPS] ([Id target])
GO
ALTER TABLE [dbo].[FAKTY] CHECK CONSTRAINT [FK_target]
GO
ALTER TABLE [dbo].[KALENDARZ GODZIN]  WITH CHECK ADD  CONSTRAINT [FK_kaldat_a] FOREIGN KEY([Id Kal data astronomiczna])
REFERENCES [dbo].[KALENDARZ DAT ASTRONOMICZNYCH] ([Id kalendarz_ast])
GO
ALTER TABLE [dbo].[KALENDARZ GODZIN] CHECK CONSTRAINT [FK_kaldat_a]
GO
ALTER TABLE [dbo].[KALENDARZ GODZIN]  WITH CHECK ADD  CONSTRAINT [FK_kaldat_f] FOREIGN KEY([Id Kal data filmowa])
REFERENCES [dbo].[KALENDARZ DAT FILMOWYCH] ([Id kalendarz_film])
GO
ALTER TABLE [dbo].[KALENDARZ GODZIN] CHECK CONSTRAINT [FK_kaldat_f]
GO
ALTER TABLE [dbo].[KALENDARZ GODZIN]  WITH CHECK ADD  CONSTRAINT [FK_slownikg_f] FOREIGN KEY([Id slownik_giz])
REFERENCES [dbo].[SLOWNIK GODZIN FIZ] ([Id slownika])
GO
ALTER TABLE [dbo].[KALENDARZ GODZIN] CHECK CONSTRAINT [FK_slownikg_f]
GO
ALTER TABLE [dbo].[PROGRAM]  WITH CHECK ADD  CONSTRAINT [FK_grupy] FOREIGN KEY([Id grupy])
REFERENCES [dbo].[GRUPY PROGRAMOW] ([Id grupy])
GO
ALTER TABLE [dbo].[PROGRAM] CHECK CONSTRAINT [FK_grupy]
GO
ALTER TABLE [dbo].[PROGRAM]  WITH CHECK ADD  CONSTRAINT [FK_kategoria] FOREIGN KEY([Id kategoria])
REFERENCES [dbo].[KATEGORIA] ([Id kat])
GO
ALTER TABLE [dbo].[PROGRAM] CHECK CONSTRAINT [FK_kategoria]
GO
/****** Object:  StoredProcedure [dbo].[Baza]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Baza]

AS
BEGIN

--======================================
--tabele
CREATE TABLE FAKTY(
[Id] int PRIMARY KEY identity(1,1),
[AMR] float,
[AMR %] float,
[SHR %] float,
[RCH %] float,
[RCH] float,
[Id program] int,
[Id target] int,
[Id kalendarz] int,
[Id opis] int
)

CREATE TABLE PROGRAM(
[Id program] int identity(1,1) PRIMARY KEY,
[Nazwa programu] varchar(100),
[Id kategoria] int,
[Id grupy] int
)

CREATE TABLE KATEGORIA(
[Id kat] int identity(1,1) PRIMARY KEY,
[Nazwa kategoria] varchar(150)
)

CREATE TABLE [GRUPY PROGRAMOW](
[Id grupy] int identity(1,1) PRIMARY KEY,
[Nazwa] varchar(150)
)

CREATE TABLE [TARGET GROUPS](
[Id target] int identity(1,1) PRIMARY KEY,
[Nazwa target] varchar(150),
[Kod target] varchar(150)
)

CREATE TABLE OPIS(
[Id opis] int identity(1,1) Primary Key,
[Opis 1] varchar(400),
[Opis 2] varchar(400),
[Duration program] time(0),
[Start time] varchar(100)
)
CREATE TABLE [SLOWNIK GODZIN FIZ](
[Id slownika] int identity(1,1) primary key,
[Godzina zwykla] varchar(5),
[Godzina filmowa] varchar(5),
[Minuta] varchar(5)
)

CREATE TABLE [KALENDARZ DAT ASTRONOMICZNYCH](
[Id kalendarz_ast] int identity(1,1) PRIMARY KEY,
[Data zwykla] date,
[Miesiac zwykly] int,
[Dzien zwykly] int,
[Dzien tygodnia zwykly] varchar(50),
[Rok zwykly] Int
)

CREATE TABLE [KALENDARZ DAT FILMOWYCH](
[Id kalendarz_film] int identity(1,1) PRIMARY KEY,
[Data filmowa] date,
[Miesiac filmowy] int,
[Dzien filmowy] int,
[Dzien tygodnia filmowy] varchar(50),
[Rok filmowy] Int
)

CREATE TABLE [KALENDARZ GODZIN](
[Id] int identity(1,1) PRIMARY KEY,
[Czas zwykly] time(0),
[Czas filmowy] varchar(50),
[Id Kal data astronomiczna] int, 
[Id Kal data filmowa] int,
[Id slownik_giz] int
)
--===========================================
--polaczenia klucze obce
ALTER TABLE PROGRAM ADD CONSTRAINT FK_kategoria FOREIGN KEY([Id kategoria]) REFERENCES [KATEGORIA]([Id kat])
ALTER TABLE PROGRAM ADD CONSTRAINT FK_grupy		FOREIGN KEY([Id grupy])		REFERENCES [GRUPY PROGRAMOW]([Id grupy])

ALTER TABLE FAKTY ADD CONSTRAINT FK_target	FOREIGN KEY([Id target])	REFERENCES [TARGET GROUPS]([Id target])
ALTER TABLE FAKTY ADD CONSTRAINT FK_opis	FOREIGN KEY([Id opis])		REFERENCES [OPIS]([Id opis])
ALTER TABLE FAKTY ADD CONSTRAINT FK_slownik FOREIGN KEY([Id kalendarz]) REFERENCES [KALENDARZ GODZIN]([Id])
ALTER TABLE FAKTY ADD CONSTRAINT FK_program FOREIGN KEY([Id program])	REFERENCES [PROGRAM]([Id program])

ALTER TABLE [KALENDARZ GODZIN] ADD CONSTRAINT FK_kaldat_a	FOREIGN KEY([Id Kal data astronomiczna])		REFERENCES [KALENDARZ DAT ASTRONOMICZNYCH]([Id kalendarz_ast])
ALTER TABLE [KALENDARZ GODZIN] ADD CONSTRAINT FK_kaldat_f	FOREIGN KEY([Id Kal data filmowa])	REFERENCES [KALENDARZ DAT FILMOWYCH]([Id kalendarz_film])
ALTER TABLE [KALENDARZ GODZIN] ADD CONSTRAINT FK_slownikg_f FOREIGN KEY([Id slownik_giz])	REFERENCES [SLOWNIK GODZIN FIZ]([Id slownika])
--===========================================
END
GO
/****** Object:  StoredProcedure [dbo].[Czyszczenie polaczen kluczy obcych i bazy]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Czyszczenie polaczen kluczy obcych i bazy]

AS
BEGIN
ALTER TABLE  Fakty  drop constraint if exists	[FK_target];
ALTER TABLE  Fakty	drop constraint if exists	[FK_opis];
ALTER TABLE  Fakty	drop constraint if exists	[FK_slownik];
ALTER TABLE  Fakty	drop constraint if exists	[FK_program];

ALTER TABLE  Program drop constraint if exists [FK_kategoria];
ALTER TABLE  Program drop constraint if exists [FK_grupy];

ALTER TABLE  [KALENDARZ GODZIN] drop constraint if exists [FK_kaldat_a];
ALTER TABLE  [KALENDARZ GODZIN] drop constraint if exists [FK_kaldat_f];
ALTER TABLE  [KALENDARZ GODZIN] drop constraint if exists [FK_slownikg_f];

DROP TABLE if exists [Fakty];
DROP TABLE if exists [Program];
DROP TABLE if exists [Kategoria];
DROP TABLE if exists [Grupy programow];
DROP TABLE if exists [KALENDARZ GODZIN];
DROP TABLE if exists [Target groups];
DROP TABLE if exists [OPIS];
DROP TABLE if exists [KALENDARZ DAT ASTRONOMICZNYCH];
DROP TABLE if exists [KALENDARZ DAT FILMOWYCH];
DROP TABLE if exists [SLOWNIK GODZIN FIZ];

END
GO
/****** Object:  StoredProcedure [dbo].[pivotek]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pivotek]
AS
BEGIN
drop table if exists [Fakty wpis tymczasowa]
Create table [Fakty wpis tymczasowa]
	(
		[ID] int identity(1,1),
		[Date] varchar(20),
		[Channel] varchar(150),
		[Description] varchar(150),
		[2nd Description] varchar(150),
		[Start time] varchar(20),
		[Duration] varchar(20),
		[Variable Target] varchar(30),
		[Total Individuals] float,
		[Podgrupa] float,
		[A16-49] float,
		[M16-49] float,
		[A4-15] float,
		[A4-9] float
	)
	insert into [Fakty wpis tymczasowa]([Date] ,[Channel] ,[Description] ,[2nd Description],[Start time],[Duration],
		[Variable Target] ,[Total Individuals] ,[Podgrupa] ,[A16-49] ,[M16-49] ,[A4-15],[A4-9])
		select [Date] ,[Channel] ,[Description] ,[2nd Description],[Start time],[Duration],
		[Variable Target] ,[Total Individuals] ,[Podgrupa] ,[A16-49] ,[M16-49] ,[A4-15],[A4-9] from [Fakty wpis];


drop table if exists pivot_table  ;
create table pivot_table
(
Id int identity(1,1) primary key,
[Date] varchar(20),
[Channel] varchar(150),
[Description] varchar(150),
[2nd Description] varchar(150),
[Start time] varchar(20),
[Duration] varchar(20), 
Groups varchar(40),
[AMR] float,
[AMR %] float,
[SHR %] float,
[RCH %] float,
[RCH] float
);
insert into pivot_table([Date],[Channel],[Description],[2nd Description],[Start time],[Duration], Groups, [AMR],[AMR %],[SHR %],[RCH %],[RCH])
		select [Date],[Channel],[Description],[2nd Description],[Start time],[Duration], Groups, [AMR],[AMR %],[SHR %],[RCH %],[RCH]
from
(
  select  [Date],[Channel],[Description],[2nd Description],[Start time],[Duration],[Variable Target], Groups, value
  from [Fakty wpis tymczasowa]
  unpivot
  (
    value for Groups in ([Total Individuals],[Podgrupa], [A16-49], [M16-49], [A4-15], [A4-9])
  ) unpiv
) src
pivot
(
  sum(value)
  for [Variable Target] in ([AMR],[AMR %],[SHR %],[RCH %],[RCH]) 
) piv

drop table if exists [Fakty wpis tymczasowa]
END
GO
/****** Object:  StoredProcedure [dbo].[Procedura czyszczenie wczytywanych tabel]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Procedura czyszczenie wczytywanych tabel]
AS
BEGIN
Truncate table [dbo].[Fakty Wczytanie];
Truncate table [dbo].[Grupy Mediowe Wczytanie];
Truncate table [dbo].[Kategorie Wczytanie];
Truncate table [dbo].[Targets Group Wczytanie];
END
GO
/****** Object:  StoredProcedure [dbo].[Procedura Fakty wypis]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Procedura Fakty wypis]

AS
DECLARE
	@v_Date varchar(50),
	@v_Date_hard varchar(50),
	@v_Channel varchar(300),
	@v_Channel_hard varchar(300),
	@v_Description varchar(300),
	@v_Description_hard varchar(300),
	@v_2nd_Description varchar(300),
	@v_2nd_Description_hard varchar(300),
	@v_Start_time varchar(50),
	@v_Start_time_hard varchar(50),
	@v_Duration varchar(50),
	@v_Duration_hard varchar(50),
	@v_Variable_Target varchar(100),
	@v_Total_Individuals varchar(100),
	@v_Podgrupa  varchar(50),
	@v_A16_49 varchar(50),
	@v_M16_49 varchar(50),
	@v_A4_15 varchar(50),
	@v_A4_9 varchar(50)
BEGIN
	DROP table if exists  [Fakty wpis] 

	Create table [Fakty wpis]
	(
		[Id] integer identity(1,1),
		[Date] varchar(100),
		[Channel] varchar(400),
		[Description] varchar(400),
		[2nd Description] varchar(400),
		[Start time] varchar(50),
		[Duration] varchar(50),
		[Variable Target] varchar(100),
		[Total Individuals] varchar(100),
		[Podgrupa] varchar(50),
		[A16-49] varchar(50),
		[M16-49] varchar(50),
		[A4-15] varchar(50),
		[A4-9] varchar(50)
	)

	Declare kursor CURSOR FOR
	Select *FROM [Fakty Wczytanie] 
-------------------------------------------------
---------------------------------------kursor
	OPEN kursor

		FETCH NEXT FROM kursor INTO @v_Date,@v_Channel,@v_Description,@v_2nd_Description, @v_Start_time, @v_Duration, 
			@v_Variable_Target, @v_Total_Individuals , @v_Podgrupa, @v_A16_49, @v_M16_49,@v_A4_15, @v_A4_9
		WHILE @@FETCH_STATUS = 0
		BEGIN
		-------------------------------------------------------------przypisanie wartości
		----------DATE
			IF @v_Date is not null
			BEGIN 	
				set @v_Date_hard = @v_Date
				------------------1 row	
				INSERT INTO [Fakty wpis]([Date], [Channel], [Description], [2nd Description], [Start time], Duration, [Variable Target], 
					[Total Individuals],Podgrupa, [A16-49], [M16-49], [A4-15], [A4-9]) 
				VALUES(@v_Date,@v_Channel,@v_Description, @v_2nd_Description, @v_Start_time, @v_Duration,
					@v_Variable_Target,@v_Total_Individuals, @v_Podgrupa, @v_A16_49, @v_M16_49, @v_A4_15, @v_A4_9)

			END
		------Channel
			IF @v_Channel is not null
			BEGIN 
				set @v_Channel_hard = @v_Channel
			END
		------Description
			IF @v_Description is not null
			BEGIN 
				set @v_Description_hard = @v_Description
			END
		------2ndDescription
			IF @v_2nd_Description is not null
			BEGIN 
				set @v_2nd_Description_hard = @v_2nd_Description
			END	
		------Start time
			IF @v_Start_time is not null
			BEGIN 
				set @v_Start_time_hard = @v_Start_time
			END
		------Duration
			IF @v_Duration is not null
			BEGIN 
				set @v_Duration_hard = @v_Duration
			END
		-------------------------------------------------------------update czysty
			IF (@v_Date is null )
			BEGIN
				INSERT INTO [Fakty wpis]([Date], [Channel], [Description], [2nd Description], [Start time], [Duration], [Variable Target], 
				[Total Individuals],[Podgrupa], [A16-49], [M16-49], [A4-15], [A4-9]) 
				VALUES(@v_Date_hard,@v_Channel_hard, 
				@v_Description_hard, @v_2nd_Description_hard, @v_Start_time_hard, @v_Duration_hard, @v_Variable_Target,@v_Total_Individuals, @v_Podgrupa,
				@v_A16_49, @v_M16_49, @v_A4_15, @v_A4_9)	
			END
			FETCH NEXT FROM kursor INTO @v_Date,@v_Channel,@v_Description,@v_2nd_Description, @v_Start_time, @v_Duration, 
			@v_Variable_Target, @v_Total_Individuals , @v_Podgrupa, @v_A16_49, @v_M16_49,@v_A4_15, @v_A4_9
		END
	CLOSE kursor;
	DEALLOCATE kursor



			UPDATE [Fakty wpis]
			SET
			[Date]=replace([Date],'"',''),
			[Channel]=replace([Channel],'"',''),
			[Description]=replace([Description],'"',''),
			[2nd Description]=replace([2nd Description],'"',''),
			[Start time]=replace([Start time],'"',''),
			[Duration]=replace([Duration],'"',''), 
			[Variable Target]=replace([Variable Target],'"',''),
			[Total Individuals]=replace([Total Individuals],NCHAR(160),'') ,
			[Podgrupa]=replace([Podgrupa],NCHAR(160),'')  ,
			[A16-49]=replace([A16-49],NCHAR(160),''),
			[M16-49]=replace([M16-49],NCHAR(160),''),
			[A4-15]=replace([A4-15],NCHAR(160),''),
			[A4-9]=replace([A4-9],NCHAR(160),'');
				UPDATE [Fakty wpis]
			SET
			[Variable Target]=replace([Variable Target],'.',''),
			[Total Individuals]=replace([Total Individuals],'%',''),
			[Podgrupa]=replace([Podgrupa],'%',''),
			[A16-49]=replace([A16-49],'%',''),
			[M16-49]=replace([M16-49],'%',''),
			[A4-15]=replace([A4-15],'%',''),
			[A4-9]=replace([A4-9],'%','');

	UPDATE [Fakty wpis]
			SET	[A4-9]=replace([A4-9],';','');
	UPDATE [Fakty wpis]
	SET[Variable Target]=replace([Variable Target],'[Not cons - TH: 0min]','');
	UPDATE [Fakty wpis]
			SET
			[Total Individuals]=replace([Total Individuals],',','.'),
			[Podgrupa]=replace([Podgrupa],',','.'),
			[A16-49]=replace([A16-49],',','.'),
			[M16-49]=replace([M16-49],',','.'),
			[A4-15]=replace([A4-15],',','.'),
			[A4-9]=replace([A4-9],',','.');
			
			
				UPDATE [Fakty wpis]
			SET
			[A4-15]=replace([A4-15],'n.a.',''),
			[A4-9]=replace([A4-9],'n.a.','');
	------------------------------------------------
	-------------------------------wyświetlenie końcowe
	update [Fakty wpis] set Channel= LEFT(Channel,Charindex('[',Channel)-1) where Charindex('[',Channel)>0 
			Select * from [Fakty wpis];
END
GO
/****** Object:  StoredProcedure [dbo].[Procedura Grupy Mediowe wypis]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Procedura Grupy Mediowe wypis] 

AS
Declare
	@v_Id int,
	@v_numerek varchar(100),
	@v_Program varchar(100),
	@v_Grupa varchar(100)
BEGIN

	DROP TABLE IF EXISTS [Grupy mediowe]

	Create table [Grupy mediowe](

		Id int IDENTITY(1,1),
		Program nvarchar(100),
		Grupa nvarchar(100)
		)
			DECLARE kursor SCROLL CURSOR FOR
	SELECT  wcz.F1,wcz.F2 
		FROM [Grupy Mediowe Wczytanie] AS wcz
----------------------------------------------------------kursor
	OPEN kursor

	FETCH NEXT FROM kursor INTO  @v_numerek, @v_Program
	WHILE @@FETCH_STATUS = 0
	BEGIN
	IF (@v_numerek is null AND @v_Program is not null)
		BEGIN
			SET @v_Grupa = @v_Program
		END

	ELSE IF(@v_numerek is not null AND @v_Program is not null)
		BEGIN
			INSERT INTO [Grupy mediowe](Program, Grupa)
			VALUES(@v_Program, @v_Grupa)
		END
		FETCH NEXT FROM kursor INTO  @v_numerek, @v_Program
	END

	CLOSE kursor;
	DEALLOCATE kursor

	update [Grupy mediowe] set Grupa = LEFT(Grupa,Charindex('(',Grupa)-1) where Charindex('(',Grupa)>0 
	
END
GO
/****** Object:  StoredProcedure [dbo].[Procedura Kategorie wypis]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Procedura Kategorie wypis]
	
AS
BEGIN
	DROP TABLE IF EXISTS Kategorie;

	CREATE TABLE Kategorie(
	Id int identity(1,1),
	Film varchar(100),
	Kategoria  varchar(100)
	)
	
	INSERT INTO Kategorie([Film], [Kategoria])
	Select F1, F2 FROM [Kategorie Wczytanie] 
	WHERE F1 IS NOT NULL AND F2 IS NOT NULL

update Kategorie set Film = LEFT(Film,Charindex('[',Film)-1) where Charindex('[',Film)>0 
 update Kategorie set Kategoria= upper(Kategoria);
 update Kategorie set Kategoria = LEFT(Kategoria,Charindex('(',Kategoria)-1) where Charindex('(',Kategoria)>0 

END
GO
/****** Object:  StoredProcedure [dbo].[Procedura Targets Groups wypis]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Procedura Targets Groups wypis]

AS
Declare
@v_Nazwa nvarchar(150),
@v_Kod nvarchar(100)

BEGIN
drop table if exists [Targets Group]


	CREATE TABLE [Targets Group]
	(
		Id int identity(1,1),
		Nazwa nvarchar(150),
		Kod nvarchar(100)
	)

	Declare kursor cursor 
	for select*from [Targets Group Wczytanie]

	Open kursor
	FETCH NEXT FROM kursor INTO  @v_Nazwa, @v_Kod
	WHILE @@FETCH_STATUS = 0
	BEGIN
		Insert into [Targets Group]
		values(@v_Nazwa, @v_Kod)

	Fetch next from kursor into @v_Nazwa, @v_Kod
	END

	CLOSE kursor
	Deallocate kursor
END
GO
/****** Object:  StoredProcedure [dbo].[RESET_Bazy]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RESET_Bazy]
	
AS
BEGIN
EXEC	[dbo].[Czyszczenie polaczen kluczy obcych i bazy]
EXEC	[dbo].[Baza]
END
GO
/****** Object:  StoredProcedure [dbo].[uzup FAKTY]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uzup FAKTY] 
AS
BEGIN

--uzupelnienie faktow


insert into FAKTY([AMR], [AMR %], [SHR %], [RCH %], [RCH], [Id program], [Id target], [Id kalendarz], [Id opis])
Select pt.[AMR], pt.[AMR %], pt.[SHR %], pt.[RCH %], pt.[RCH], pr.[Id program], tg.[Id target], kg.[Id], op.[Id opis] 
FROM [TARGET GROUPS] tg
RIGHT JOIN [pivot_table] pt ON pt.Groups = tg.[Kod target]
RIGHT JOIN [OPIS] op ON pt.[Description] = op.[Opis 1] AND pt.[2nd Description] = op.[Opis 2] AND pt.[Duration] = op.[Duration program] AND pt.[Start time] = op.[Start time]
RIGHT JOIN [PROGRAM] pr ON pt.Channel = pr.[Nazwa programu]
RIGHT JOIN [KALENDARZ GODZIN] kg ON kg.[Czas filmowy] = pt.[Start time]

END
GO
/****** Object:  StoredProcedure [dbo].[uzup grupy programow]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uzup grupy programow]

AS
BEGIN

INSERT INTO [GRUPY PROGRAMOW](Nazwa)
	SELECT DISTINCT [Grupa] FROM [Grupy mediowe]

END
GO
/****** Object:  StoredProcedure [dbo].[uzup Kalendarz]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uzup Kalendarz]
AS
DECLARE @StartDate DATE,
 @EndDate DATE,
 @year varchar(20),
 @month varchar(20),
 @day varchar(20),
 @dayweek varchar(20)

BEGIN
--Kalendarz DAT zwyklych
SET @StartDate = '2014-01-01'
SET @EndDate = DATEADD(d, 1461, @StartDate)
 --uzupelnianie Kalendarza
WHILE @StartDate <= @EndDate
	 BEGIN
	 SET @year =Datepart(y,@StartDate)
	  SET @month =Datepart(m,@StartDate)
	   SET @day =Datepart(d,@StartDate)
	   SET @dayweek=Datename(dw, @StartDate)
	 
             INSERT INTO [KALENDARZ DAT ASTRONOMICZNYCH]([Data zwykla],[Miesiac zwykly],[Dzien zwykly],[Dzien tygodnia zwykly], [Rok zwykly] )
             SELECT
                   @StartDate,@month,@day,@dayweek, @year

			 INSERT INTO [KALENDARZ DAT FILMOWYCH]([Data filmowa],[Miesiac filmowy],[Dzien filmowy],[Dzien tygodnia filmowy], [Rok filmowy] )
             SELECT
                   @StartDate,@month,@day,@dayweek, @year

             SET @StartDate = DATEADD(dd, 1, @StartDate)
	END

	---kalendarz filmowy
--Slownik godzin FIZ

declare 
@Godzina  varchar(2),
@Godzinafilm varchar(2), 
@Minuta varchar(2), 
@Licznik bit
	set @Godzina = 0;
	set @Godzinafilm=24;
	set @Minuta = 0;
	set @Licznik=0;
	WHILE @Licznik=0
		BEGIN
		insert into [SLOWNIK GODZIN FIZ]([Godzina zwykla],[Godzina filmowa], Minuta) values (@Godzina ,@Godzinafilm, @Minuta);
			set @Minuta=@Minuta+1;
			if @Godzina=24 set @Licznik=1;
			if @Godzina=0 set @Godzinafilm = 24;
			if @Godzina=1 set @Godzinafilm = 25;
			if @Minuta=60
				begin 
					set @Minuta=00;
					set @Godzina=@Godzina+1;
					set @Godzinafilm = @Godzinafilm + 1;
					if @Godzina=2  
					begin
						set @Godzinafilm = 2;
					end
				end;
			
		END;
		delete from [SLOWNIK GODZIN FIZ] where [Godzina zwykla] = '24';
		
		
		/*kalendarz godzin*/
		--czas filmowy dodawanie
insert into [KALENDARZ GODZIN]([Czas filmowy])
select distinct [Start time] from pivot_table

--czas zwykly dodawanie 


update [KALENDARZ GODZIN] 
	set [Czas zwykly]=[Czas filmowy]
		where LEFT([Czas filmowy], 2) < 24			
--tymczasowa 
drop table if exists tymczasowa

CREATE TABLE tymczasowa(
	id int,
	czasfilm varchar(10)
	)

insert into tymczasowa(id, czasfilm)
select Id, [Czas filmowy] from [KALENDARZ GODZIN]
WHERE LEFT([Czas filmowy], 2) >= 24

update tymczasowa 
set czasfilm=replace(czasfilm,'24','00')

update tymczasowa 
set czasfilm=replace(czasfilm,'25','01')
                                     
UPDATE [KALENDARZ GODZIN]
	SET [Czas zwykly] = t.czasfilm
		FROM (SELECT ID, czasfilm FROM tymczasowa) t
		WHERE 
			t.id = [KALENDARZ GODZIN].Id

drop table tymczasowa;
--przypisanie slownika

UPDATE [KALENDARZ GODZIN] 
	SET [Id slownik_giz] = sl.[Id slownika]
		FROM(SELECT [Id slownika],[Godzina zwykla], Minuta
			FROM [SLOWNIK GODZIN FIZ]) sl
		WHERE
		DATEPART(hh,[KALENDARZ GODZIN].[Czas zwykly])=sl.[Godzina zwykla] AND
		DATEPART(mi,[KALENDARZ GODZIN].[Czas zwykly])=sl.[Minuta]

--uzup id dat
UPDATE [KALENDARZ GODZIN]
	SET [Id Kal data astronomiczna] = k.[Id kalendarz_ast]
		FROM(Select [Id kalendarz_ast],[Data zwykla] FROM [KALENDARZ DAT ASTRONOMICZNYCH]) k,
			(select distinct [Date], [Start time] FROM pivot_table) pt 
		WHERE
			k.[Data zwykla]=pt.[Date] AND LEFT([KALENDARZ GODZIN].[Czas filmowy], 2) < 24

UPDATE [KALENDARZ GODZIN]
	SET [Id Kal data filmowa] = k.[Id kalendarz_film]
		FROM(Select [Id kalendarz_film],[Data filmowa] FROM [KALENDARZ DAT FILMOWYCH]) k,
			(select distinct [Date], [Start time] FROM pivot_table) pt 
		WHERE
			k.[Data filmowa]=pt.[Date] 

UPDATE [KALENDARZ GODZIN]
	SET [Id Kal data astronomiczna] = k.[Id kalendarz_ast]+1
		FROM(SELECT [Id kalendarz_ast],[Data zwykla] FROM [KALENDARZ DAT ASTRONOMICZNYCH]) k,
			(select distinct [Date], [Start time] FROM pivot_table) pt 
		WHERE
			k.[Data zwykla]=pt.[Date] AND LEFT([KALENDARZ GODZIN].[Czas filmowy], 2) > 23
--koniec uzup kalendarza

END
GO
/****** Object:  StoredProcedure [dbo].[uzup kategorie]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uzup kategorie]

AS
BEGIN

INSERT INTO [KATEGORIA]([Nazwa kategoria])
	Select distinct [Kategoria] FROM [Kategorie] 

END
GO
/****** Object:  StoredProcedure [dbo].[uzup opis]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[uzup opis]
AS
BEGIN


insert into [OPIS]([Opis 1], [Opis 2], [Duration program],[Start time]) 
select distinct [Description],[2nd Description], [Duration],[Start time]
 FROM [pivot_table]
 where [Duration]  is not null AND [Start time] is not null
END
GO
/****** Object:  StoredProcedure [dbo].[uzup program]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROCEDURE [dbo].[uzup program]
AS
BEGIn

INSERT INTO PROGRAM([Nazwa programu])
select distinct Channel From pivot_table

UPDATE PROGRAM
	SET [Id kategoria] = k.[Id kat]
	FROM(select [Id kat], [Nazwa kategoria] FROM KATEGORIA) k,
	(select Film, Kategoria from Kategorie) kat
	WHERE [PROGRAM].[Nazwa programu]=kat.Film
	AND kat.Kategoria = k.[Nazwa kategoria]
 
 UPDATE PROGRAM
	SET [Id grupy] = g.[Id grupy]
	FROM(select [Id grupy], [Nazwa] FROM [GRUPY PROGRAMOW]) g,
	(select Program, Grupa from [Grupy mediowe]) gr
	WHERE [PROGRAM].[Nazwa programu]=gr.Program
	AND gr.Grupa = g.[Nazwa]
 
--select * from PROGRAM


--insert into PROGRAM([Nazwa programu], [Id kategoria], [Id grupy])
--select distinct pt.[Channel], k.Id, gm.[Id]  FROM [Grupy mediowe] gm
--INNER JOIN [Kategorie] k ON gm.Program = k.Film
--RIGHT JOIN [pivot_table] pt ON pt.Channel = gm.Program OR pt.Channel = k.Film
END
GO
/****** Object:  StoredProcedure [dbo].[uzup Targets]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uzup Targets]
AS
BEGIN




insert into [TARGET GROUPS]([Nazwa target], [Kod target])
select
	Nazwa, Kod from [Targets Group]

insert into [TARGET GROUPS]([Nazwa target], [Kod target]) values('Total Individuals', 'Total Individuals')
insert into [TARGET GROUPS]([Nazwa target], [Kod target]) values('Podgrupa', 'Podgrupa')

END
GO
/****** Object:  StoredProcedure [dbo].[Uzupelnianie bazy]    Script Date: 2018-06-26 20:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Uzupelnianie bazy]

AS
BEGIN

 EXEC [dbo].[uzup kategorie];
 EXEC [dbo].[uzup grupy programow];
 EXEC [dbo].[uzup opis];
 EXEC [dbo].[uzup Targets];
 EXEC [dbo].[uzup Kalendarz];
 EXEC [dbo].[uzup program];
END
GO
