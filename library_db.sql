USE [master]
GO
/****** Object:  Database [library]    Script Date: 05/15/2017 18:42:38 ******/
CREATE DATABASE [library] ON  PRIMARY 
( NAME = N'library', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\library.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'library_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\library_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [library] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [library].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [library] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [library] SET ANSI_NULLS OFF
GO
ALTER DATABASE [library] SET ANSI_PADDING OFF
GO
ALTER DATABASE [library] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [library] SET ARITHABORT OFF
GO
ALTER DATABASE [library] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [library] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [library] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [library] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [library] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [library] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [library] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [library] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [library] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [library] SET  DISABLE_BROKER
GO
ALTER DATABASE [library] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [library] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [library] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [library] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [library] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [library] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [library] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [library] SET  READ_WRITE
GO
ALTER DATABASE [library] SET RECOVERY FULL
GO
ALTER DATABASE [library] SET  MULTI_USER
GO
ALTER DATABASE [library] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [library] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'library', N'ON'
GO
USE [library]
GO
/****** Object:  Table [dbo].[Borrower_table]    Script Date: 05/15/2017 18:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrower_table](
	[Borrower_id] [int] NOT NULL,
	[First_name] [nvarchar](50) NULL,
	[Middle_name] [nvarchar](50) NULL,
	[Last_name] [nvarchar](50) NULL,
	[Phone_num] [int] NULL,
	[Department] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Borrower_table] PRIMARY KEY CLUSTERED 
(
	[Borrower_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_table]    Script Date: 05/15/2017 18:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_table](
	[Book_id] [int] NOT NULL,
	[Book_name] [nvarchar](50) NOT NULL,
	[Author_name] [nvarchar](50) NOT NULL,
	[Year_published] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Book_table] PRIMARY KEY CLUSTERED 
(
	[Book_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Librarian_table]    Script Date: 05/15/2017 18:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Librarian_table](
	[Name] [nvarchar](50) NULL,
	[Password] [nchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_table]    Script Date: 05/15/2017 18:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_table](
	[Book_id] [int] NULL,
	[Category] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Borrowing_table]    Script Date: 05/15/2017 18:42:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Borrowing_table](
	[Borrower_id] [int] NULL,
	[Book_id] [int] NULL,
	[Borrowing_data] [date] NULL,
	[Expected_return_date] [date] NULL,
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Category_table_Book_table]    Script Date: 05/15/2017 18:42:38 ******/
ALTER TABLE [dbo].[Category_table]  WITH CHECK ADD  CONSTRAINT [FK_Category_table_Book_table] FOREIGN KEY([Book_id])
REFERENCES [dbo].[Book_table] ([Book_id])
GO
ALTER TABLE [dbo].[Category_table] CHECK CONSTRAINT [FK_Category_table_Book_table]
GO
/****** Object:  ForeignKey [FK_Borrowing_table_Book_table]    Script Date: 05/15/2017 18:42:38 ******/
ALTER TABLE [dbo].[Borrowing_table]  WITH CHECK ADD  CONSTRAINT [FK_Borrowing_table_Book_table] FOREIGN KEY([Book_id])
REFERENCES [dbo].[Book_table] ([Book_id])
GO
ALTER TABLE [dbo].[Borrowing_table] CHECK CONSTRAINT [FK_Borrowing_table_Book_table]
GO
/****** Object:  ForeignKey [FK_Borrowing_table_Borrower_table]    Script Date: 05/15/2017 18:42:38 ******/
ALTER TABLE [dbo].[Borrowing_table]  WITH CHECK ADD  CONSTRAINT [FK_Borrowing_table_Borrower_table] FOREIGN KEY([Borrower_id])
REFERENCES [dbo].[Borrower_table] ([Borrower_id])
GO
ALTER TABLE [dbo].[Borrowing_table] CHECK CONSTRAINT [FK_Borrowing_table_Borrower_table]
GO
