USE [master]
GO
/****** Object:  Database [J3.L.P0005]    Script Date: 7/28/2018 11:57:50 AM ******/
CREATE DATABASE [J3.L.P0005]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'J3.L.P0005', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\J3.L.P0005.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'J3.L.P0005_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\J3.L.P0005_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [J3.L.P0005] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0005].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0005] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [J3.L.P0005] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [J3.L.P0005] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [J3.L.P0005] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [J3.L.P0005] SET ARITHABORT OFF 
GO
ALTER DATABASE [J3.L.P0005] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [J3.L.P0005] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [J3.L.P0005] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [J3.L.P0005] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [J3.L.P0005] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [J3.L.P0005] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [J3.L.P0005] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [J3.L.P0005] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [J3.L.P0005] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [J3.L.P0005] SET  DISABLE_BROKER 
GO
ALTER DATABASE [J3.L.P0005] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [J3.L.P0005] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [J3.L.P0005] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [J3.L.P0005] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [J3.L.P0005] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [J3.L.P0005] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [J3.L.P0005] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [J3.L.P0005] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [J3.L.P0005] SET  MULTI_USER 
GO
ALTER DATABASE [J3.L.P0005] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [J3.L.P0005] SET DB_CHAINING OFF 
GO
ALTER DATABASE [J3.L.P0005] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [J3.L.P0005] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [J3.L.P0005] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [J3.L.P0005] SET QUERY_STORE = OFF
GO
USE [J3.L.P0005]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [J3.L.P0005]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/28/2018 11:57:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Content] [nvarchar](1500) NOT NULL,
	[Image] [nvarchar](150) NOT NULL,
	[Date] [date] NOT NULL,
	[CategoryID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/28/2018 11:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/28/2018 11:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](500) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (1, N'Blog A', N'NULLLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2017-01-01' AS Date), 2)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (2, N'Blog B', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2015-06-07' AS Date), 1)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (3, N'Blog C', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2016-02-02' AS Date), 5)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (4, N'Blog D', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2017-08-11' AS Date), 3)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (5, N'Blog E', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2011-07-12' AS Date), 4)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (6, N'Rush B', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2018-01-13' AS Date), 5)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (7, N'My Blog', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2015-12-12' AS Date), 5)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (8, N'Next Blog', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2014-12-15' AS Date), 5)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (9, N'Last ?', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2017-01-01' AS Date), 5)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (10, N'Maybe', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2014-12-29' AS Date), 1)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (11, N'NOOOO', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2014-02-05' AS Date), 4)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (12, N'LOL', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2018-05-27' AS Date), 2)
INSERT [dbo].[Blog] ([ID], [Title], [Content], [Image], [Date], [CategoryID]) VALUES (13, N'CS GO', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio.

Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores.', N'images/img03.jpg', CAST(N'2015-05-05' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Category]) VALUES (1, N'Art')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (2, N'Beauty')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (3, N'Food')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (4, N'Car')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (5, N'Sports')
INSERT [dbo].[Category] ([ID], [Category]) VALUES (6, N'Pets')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [Company], [Message]) VALUES (1, N'hoanglethanhson', N'leson1998ls@gmail.com', N'01678666519', N'ÄaÌ£i hoÌ£c FPT HaÌ NÃ´Ì£i', N'TrÆ°Æ¡Ìng ÄaÌ£i hoÌ£c FPT,  Khu GD&ÄT, Khu CÃ´ng Nghá» Cao Km29 Äáº¡i Lá» ThÄng Long,, Tháº¡ch Tháº¥t, HÃ  Ná»i')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [Company], [Message]) VALUES (2, N'hoanglethanhson', N'leson1998ls@gmail.com', N'01678666519', N'ÄaÌ£i hoÌ£c FPT HaÌ NÃ´Ì£i', N'TrÆ°Æ¡Ìng ÄaÌ£i hoÌ£c FPT,  Khu GD&ÄT, Khu CÃ´ng Nghá» Cao Km29 Äáº¡i Lá» ThÄng Long,, Tháº¡ch Tháº¥t, HÃ  Ná»i')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [Company], [Message]) VALUES (3, N'hoanglethanhson', N'leson1998ls@gmail.com', N'01678666519', N'ÄaÌ£i hoÌ£c FPT HaÌ NÃ´Ì£i', N'TrÆ°Æ¡Ìng ÄaÌ£i hoÌ£c FPT,  Khu GD&ÄT, Khu CÃ´ng Nghá» Cao Km29 Äáº¡i Lá» ThÄng Long,, Tháº¡ch Tháº¥t, HÃ  Ná»i')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [Company], [Message]) VALUES (4, N'hoanglethanhson', N'leson1998ls@gmail.com', N'01678666519', N'ÄaÌ£i hoÌ£c FPT HaÌ NÃ´Ì£i', N'TrÆ°Æ¡Ìng ÄaÌ£i hoÌ£c FPT,  Khu GD&ÄT, Khu CÃ´ng Nghá» Cao Km29 Äáº¡i Lá» ThÄng Long,, Tháº¡ch Tháº¥t, HÃ  Ná»i')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [Company], [Message]) VALUES (5, N'hoanglethanhson', N'leson1998ls@gmail.com', N'01678666519', N'ÄaÌ£i hoÌ£c FPT HaÌ NÃ´Ì£i', N'TrÆ°Æ¡Ìng ÄaÌ£i hoÌ£c FPT,  Khu GD&ÄT, Khu CÃ´ng Nghá» Cao Km29 Äáº¡i Lá» ThÄng Long,, Tháº¡ch Tháº¥t, HÃ  Ná»i')
INSERT [dbo].[Contact] ([ID], [Name], [Email], [Phone], [Company], [Message]) VALUES (6, N'hoanglethanhson', N'leson1998ls@gmail.com', N'01678666519', N'ÄaÌ£i hoÌ£c FPT HaÌ NÃ´Ì£i', N'TrÆ°Æ¡Ìng ÄaÌ£i hoÌ£c FPT,  Khu GD&ÄT, Khu CÃ´ng Nghá» Cao Km29 Äáº¡i Lá» ThÄng Long,, Tháº¡ch Tháº¥t, HÃ  Ná»i')
SET IDENTITY_INSERT [dbo].[Contact] OFF
USE [master]
GO
ALTER DATABASE [J3.L.P0005] SET  READ_WRITE 
GO
