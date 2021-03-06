USE [master]
GO
/****** Object:  Database [外卖系统数据库]    Script Date: 2021.6.8 10:55:00 ******/
CREATE DATABASE [外卖系统数据库]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'外卖系统数据库', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\外卖系统数据库.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'外卖系统数据库_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\外卖系统数据库_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [外卖系统数据库] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [外卖系统数据库].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [外卖系统数据库] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [外卖系统数据库] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [外卖系统数据库] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [外卖系统数据库] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [外卖系统数据库] SET ARITHABORT OFF 
GO
ALTER DATABASE [外卖系统数据库] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [外卖系统数据库] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [外卖系统数据库] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [外卖系统数据库] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [外卖系统数据库] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [外卖系统数据库] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [外卖系统数据库] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [外卖系统数据库] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [外卖系统数据库] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [外卖系统数据库] SET  DISABLE_BROKER 
GO
ALTER DATABASE [外卖系统数据库] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [外卖系统数据库] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [外卖系统数据库] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [外卖系统数据库] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [外卖系统数据库] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [外卖系统数据库] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [外卖系统数据库] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [外卖系统数据库] SET RECOVERY FULL 
GO
ALTER DATABASE [外卖系统数据库] SET  MULTI_USER 
GO
ALTER DATABASE [外卖系统数据库] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [外卖系统数据库] SET DB_CHAINING OFF 
GO
ALTER DATABASE [外卖系统数据库] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [外卖系统数据库] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [外卖系统数据库] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'外卖系统数据库', N'ON'
GO
ALTER DATABASE [外卖系统数据库] SET QUERY_STORE = OFF
GO
USE [外卖系统数据库]
GO
/****** Object:  Table [dbo].[consumer]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consumer1](
	[consumer_ID] [int] NOT NULL,
	[consumer_name] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
 CONSTRAINT [PK_consumer] PRIMARY KEY CLUSTERED 
(
	[consumer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evalution]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evalution1](
	[order_id] [int] NULL,
	[consumer_id] [int] NULL,
	[rider_id] [int] NULL,
	[evalution_txt] [nchar](10) NULL,
	[evalution_id] [int] NOT NULL,
 CONSTRAINT [PK_evalution] PRIMARY KEY CLUSTERED 
(
	[evalution_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historyorder]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historyorder1](
	[order_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hralthtable]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hralthtable1](
	[creals] [float] NOT NULL,
	[fruitsvegetables] [float] NOT NULL,
	[dairyproducts] [float] NOT NULL,
	[animalfood] [float] NOT NULL,
	[table_id] [int] NOT NULL,
	[consumer_id] [int] NOT NULL,
	[consumer_name] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[make_order]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[make_order1](
	[order_id] [int] NOT NULL,
	[consumer_id] [int] NOT NULL,
	[menu_id] [int] NOT NULL,
	[order_price] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manage-order]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manage-order1](
	[manager_id] [int] NOT NULL,
	[order_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manger]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manger1](
	[manger_id] [int] NOT NULL,
	[manger_name] [nchar](10) NOT NULL,
	[manager_password] [nchar](10) NOT NULL,
	[manager_tel] [nchar](10) NOT NULL,
 CONSTRAINT [PK_manger] PRIMARY KEY CLUSTERED 
(
	[manger_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu1](
	[menu_id] [int] NOT NULL,
	[menu_name] [nchar](10) NOT NULL,
	[menu_price] [float] NOT NULL,
	[health_index] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu_healthtable]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu_healthtable1](
	[menu_id] [int] NOT NULL,
	[hrathtable_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order1](
	[orde_id] [int] NOT NULL,
	[menu_id] [int] NOT NULL,
	[order_num] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[owemenu]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[owemenu1](
	[shoppper_id] [int] NOT NULL,
	[menu_id] [int] NOT NULL,
	[shop_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oweshop]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oweshop1](
	[shop_id] [int] NOT NULL,
	[shopper_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receive_order]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receive_order1](
	[rider_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[consumer_id] [int] NOT NULL,
	[consumer_address] [nchar](10) NOT NULL,
	[consumer_tel] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rider]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rider1](
	[rider_id] [int] NOT NULL,
	[rider_name] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
	[rider_tel] [nchar](10) NOT NULL,
 CONSTRAINT [PK_rider] PRIMARY KEY CLUSTERED 
(
	[rider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[selectshop]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[selectshop1](
	[consumer_id] [int] NOT NULL,
	[shop_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop1](
	[shop_id] [int] NOT NULL,
	[shop_name] [nchar](10) NOT NULL,
	[menu_id] [int] NULL,
	[shop_address] [nchar](10) NOT NULL,
	[shopper_id] [int] NULL,
 CONSTRAINT [PK_shop] PRIMARY KEY CLUSTERED 
(
	[shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopper]    Script Date: 2021.6.8 10:55:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopper1](
	[shopper_ID] [int] NOT NULL,
	[shopper_name] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
	[shop_name] [nchar](10) NOT NULL,
	[shopper_tel] [nchar](10) NOT NULL,
 CONSTRAINT [PK_shopper] PRIMARY KEY CLUSTERED 
(
	[shopper_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [外卖系统数据库] SET  READ_WRITE 
GO
