USE [master]
GO
/****** Object:  Database [SPORTDBv2]    Script Date: 2020-04-19 11:34:50 PM ******/
CREATE DATABASE [SPORTDBv2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SPORTDBv2', FILENAME = N'D:\rdsdbdata\DATA\SPORTDBv2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SPORTDBv2_log', FILENAME = N'D:\rdsdbdata\DATA\SPORTDBv2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SPORTDBv2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SPORTDBv2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SPORTDBv2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SPORTDBv2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SPORTDBv2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SPORTDBv2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SPORTDBv2] SET ARITHABORT OFF 
GO
ALTER DATABASE [SPORTDBv2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SPORTDBv2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SPORTDBv2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SPORTDBv2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SPORTDBv2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SPORTDBv2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SPORTDBv2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SPORTDBv2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SPORTDBv2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SPORTDBv2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SPORTDBv2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SPORTDBv2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SPORTDBv2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SPORTDBv2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SPORTDBv2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SPORTDBv2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SPORTDBv2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SPORTDBv2] SET RECOVERY FULL 
GO
ALTER DATABASE [SPORTDBv2] SET  MULTI_USER 
GO
ALTER DATABASE [SPORTDBv2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SPORTDBv2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SPORTDBv2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SPORTDBv2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SPORTDBv2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SPORTDBv2] SET QUERY_STORE = OFF
GO
USE [SPORTDBv2]
GO
/****** Object:  User [admin]    Script Date: 2020-04-19 11:34:51 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[BUY]    Script Date: 2020-04-19 11:34:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUY](
	[Order_ID] [int] NOT NULL,
	[SSN] [int] NOT NULL,
	[Amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC,
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COACH]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COACH](
	[Coach_SSN] [int] NOT NULL,
	[Roster_Rotation] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Coach_SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[SSN] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[SSN] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Salary] [float] NOT NULL,
	[Date_of_Birth] [date] NOT NULL,
	[Team_Name] [varchar](50) NOT NULL,
	[Owner_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAST_FOOD_RESTAURANT]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAST_FOOD_RESTAURANT](
	[Restaurant_Name] [varchar](50) NOT NULL,
	[Lot_Number] [int] NOT NULL,
	[Owner_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Restaurant_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GAME]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GAME](
	[Game_ID] [varchar](50) NOT NULL,
	[Date_played] [date] NOT NULL,
	[Home_Team] [varchar](50) NOT NULL,
	[Away_Team] [varchar](50) NOT NULL,
	[Stadium_ID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Game_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDICAL_STAFF]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDICAL_STAFF](
	[Med_SSN] [int] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Injury_record] [varchar](50) NOT NULL,
	[Current_problem] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Med_SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[Order_ID] [int] NOT NULL,
	[Restaurant_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_DISH_NAME]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DISH_NAME](
	[Order_ID] [int] NOT NULL,
	[Dish_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OWNER]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OWNER](
	[Name] [varchar](50) NOT NULL,
	[Date_of_Birth] [date] NOT NULL,
	[Gross_profit] [float] NOT NULL,
	[Losses] [float] NOT NULL,
	[Net_profit] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYS]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYS](
	[OwnerName] [varchar](50) NOT NULL,
	[Employee_SSN] [int] NOT NULL,
	[Amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OwnerName] ASC,
	[Employee_SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYS_RENT]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYS_RENT](
	[OwnerName] [varchar](50) NOT NULL,
	[Restaurant_Name] [varchar](50) NOT NULL,
	[Amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OwnerName] ASC,
	[Restaurant_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLAYER]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLAYER](
	[Player_SSN] [int] NOT NULL,
	[Jersey_Number] [int] NOT NULL,
	[Position] [varchar](50) NOT NULL,
	[Coach_SSN] [int] NOT NULL,
	[Stat_ID] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[PPG] [float] NOT NULL,
	[Shots_made] [int] NOT NULL,
	[Shots_attempted] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Player_SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEATS]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEATS](
	[Seat_number] [int] NOT NULL,
	[Seat_section] [varchar](10) NOT NULL,
	[Stadium_ID] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Seat_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STADIUM]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STADIUM](
	[Stadium_ID] [varchar](50) NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Owner_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Stadium_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEAM]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEAM](
	[Team_Name] [varchar](50) NOT NULL,
	[Conference] [varchar](50) NOT NULL,
	[Division] [varchar](50) NOT NULL,
	[Wins] [int] NOT NULL,
	[Loses] [int] NOT NULL,
	[Win_rate] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Team_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TECHNICIAN]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TECHNICIAN](
	[Tech_SSN] [int] NOT NULL,
	[Type] [varchar](30) NOT NULL,
	[Pay_grade] [float] NOT NULL,
	[Current_problem] [varchar](30) NOT NULL,
	[Stadium_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tech_SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKET](
	[Ticket_Number] [int] NOT NULL,
	[Customer_SSN] [int] NOT NULL,
	[Seat_number] [int] NOT NULL,
	[Game_ID] [varchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ticket_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TREATS]    Script Date: 2020-04-19 11:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TREATS](
	[Med_SSN] [int] NOT NULL,
	[Player_SSN] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Med_SSN] ASC,
	[Player_SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BUY] ([Order_ID], [SSN], [Amount]) VALUES (1, 69, 20)
INSERT [dbo].[BUY] ([Order_ID], [SSN], [Amount]) VALUES (2, 69, 33)
INSERT [dbo].[BUY] ([Order_ID], [SSN], [Amount]) VALUES (20, 50, 25)
INSERT [dbo].[BUY] ([Order_ID], [SSN], [Amount]) VALUES (69, 1234, 100)
INSERT [dbo].[BUY] ([Order_ID], [SSN], [Amount]) VALUES (74, 2020, 1200)
INSERT [dbo].[BUY] ([Order_ID], [SSN], [Amount]) VALUES (101, 420, 5)
GO
INSERT [dbo].[COACH] ([Coach_SSN], [Roster_Rotation]) VALUES (10108, N'LeBron')
INSERT [dbo].[COACH] ([Coach_SSN], [Roster_Rotation]) VALUES (45678, N'Kyle')
GO
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (50, N'Barack', N'Obama2')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (69, N'Tyler', N'One')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (123, N'SOMEWHERE', N'TEST')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (420, N'Donald', N'Duck')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (1011, N'FirstName', N'LastName')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (1012, N'FirstName', N'LastName')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (1013, N'FirstName', N'LastName')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (1234, N'Jon', N'Snow')
INSERT [dbo].[CUSTOMER] ([SSN], [Fname], [Lname]) VALUES (2020, N'Goku', N'Chan')
GO
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (1122, N'LeBron', N'James', 3700000.99, CAST(N'1984-12-30' AS Date), N'Lakers', N'Kobe')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (3478, N'Pascal', N'Siakam', 360000, CAST(N'1994-04-02' AS Date), N'Toronto Raptors', N'Kawhi')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (5566, N'Fred', N'VanVleet', 250000, CAST(N'1994-02-25' AS Date), N'Toronto Raptors', N'Kawhi')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (6541, N'Danny', N'Green', 110000, CAST(N'1987-06-22' AS Date), N'Lakers', N'Kobe')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (8523, N'Anthony', N'Davis', 510000, CAST(N'1993-03-11' AS Date), N'Lakers', N'Kobe')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (9876, N'Kyle', N'Lowry', 310000, CAST(N'1986-03-25' AS Date), N'Toronto Raptors', N'Kawhi')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (10108, N'Lionel', N'Messi', 250000, CAST(N'1987-06-24' AS Date), N'Lakers', N'Kobe')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (45678, N'Thomas', N'Muller', 100000, CAST(N'1996-08-21' AS Date), N'Toronto Raptors', N'Kawhi')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (55588, N'Luka', N'Modric', 150000, CAST(N'1990-11-25' AS Date), N'Toronto Raptors', N'Kawhi')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (59777, N'Daniel', N'Park', 330000, CAST(N'1980-11-26' AS Date), N'Lakers', N'Kobe')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (88881, N'Ted', N'Johnson', 75000, CAST(N'1977-06-03' AS Date), N'Lakers', N'Kobe')
INSERT [dbo].[EMPLOYEE] ([SSN], [Fname], [Lname], [Salary], [Date_of_Birth], [Team_Name], [Owner_Name]) VALUES (99887, N'John', N'Smith', 80000, CAST(N'1984-08-01' AS Date), N'Toronto Raptors', N'Kawhi')
GO
INSERT [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name], [Lot_Number], [Owner_Name]) VALUES (N'Buffalo Wings', 15, N'Bull')
INSERT [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name], [Lot_Number], [Owner_Name]) VALUES (N'Dragon', 7, N'Karen')
INSERT [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name], [Lot_Number], [Owner_Name]) VALUES (N'McDonalds', 10, N'Bob')
INSERT [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name], [Lot_Number], [Owner_Name]) VALUES (N'Petsmart', 8, N'Bruce')
INSERT [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name], [Lot_Number], [Owner_Name]) VALUES (N'Subway', 2, N'Richard')
GO
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Playoffs: Final Game 6', CAST(N'2019-04-15' AS Date), N'Toronto Raptors', N'Golden State Warriors', N'Scotiabank Arena')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Playoffs: Semi-final Game 4', CAST(N'2019-03-30' AS Date), N'Toronto Raptors', N'Milwaukee Bucks', N'Scotiabank Arena')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Playoffs: Semi-final Game 5', CAST(N'2016-03-28' AS Date), N'Lakers', N'Spurs', N'Staples Centre')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Regular Season: Game 1', CAST(N'2019-03-30' AS Date), N'Los Angeles lakers', N'San Antonio Spurs', N'Staples Centre')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Regular Season: Game 10', CAST(N'2016-01-27' AS Date), N'Lakers', N'Jazz', N'Staples Centre')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Regular Season: Game 12', CAST(N'2019-03-30' AS Date), N'Los Angeles lakers', N'San Antonio Spurs', N'Staples Centre')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Regular Season: Game 13', CAST(N'2019-04-12' AS Date), N'Toronto Raptors', N'Milwaukee Bucks', N'Scotiabank Arena')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Regular Season: Game 17', CAST(N'2016-02-18' AS Date), N'Lakers', N'Clippers', N'Staples Centre')
INSERT [dbo].[GAME] ([Game_ID], [Date_played], [Home_Team], [Away_Team], [Stadium_ID]) VALUES (N'Regular Season: Game 21', CAST(N'2019-02-26' AS Date), N'Toronto Raptors', N'Chicago Bulls', N'Scotiabank Arena')
GO
INSERT [dbo].[MEDICAL_STAFF] ([Med_SSN], [Type], [Injury_record], [Current_problem]) VALUES (55588, N'Physiotherapist', N'', N'Sprained Ankle')
INSERT [dbo].[MEDICAL_STAFF] ([Med_SSN], [Type], [Injury_record], [Current_problem]) VALUES (59777, N'Physiotherapist', N'', N'Achilles Tendon')
GO
INSERT [dbo].[ORDER] ([Order_ID], [Restaurant_name]) VALUES (1, N'McDonalds')
INSERT [dbo].[ORDER] ([Order_ID], [Restaurant_name]) VALUES (2, N'McDonalds')
INSERT [dbo].[ORDER] ([Order_ID], [Restaurant_name]) VALUES (20, N'Buffalo Wings')
INSERT [dbo].[ORDER] ([Order_ID], [Restaurant_name]) VALUES (69, N'Dragon')
INSERT [dbo].[ORDER] ([Order_ID], [Restaurant_name]) VALUES (74, N'Subway')
INSERT [dbo].[ORDER] ([Order_ID], [Restaurant_name]) VALUES (101, N'Petsmart')
GO
INSERT [dbo].[ORDER_DISH_NAME] ([Order_ID], [Dish_Name]) VALUES (1, N'Big Mac')
INSERT [dbo].[ORDER_DISH_NAME] ([Order_ID], [Dish_Name]) VALUES (2, N'Junior Chicken')
INSERT [dbo].[ORDER_DISH_NAME] ([Order_ID], [Dish_Name]) VALUES (20, N'Honey Garlic Wings')
INSERT [dbo].[ORDER_DISH_NAME] ([Order_ID], [Dish_Name]) VALUES (69, N'Daenerys')
INSERT [dbo].[ORDER_DISH_NAME] ([Order_ID], [Dish_Name]) VALUES (74, N'Ham and cheese')
INSERT [dbo].[ORDER_DISH_NAME] ([Order_ID], [Dish_Name]) VALUES (101, N'Ducks')
GO
INSERT [dbo].[OWNER] ([Name], [Date_of_Birth], [Gross_profit], [Losses], [Net_profit]) VALUES (N'Kawhi', CAST(N'1991-06-29' AS Date), 2000000, 500000, 1500000)
INSERT [dbo].[OWNER] ([Name], [Date_of_Birth], [Gross_profit], [Losses], [Net_profit]) VALUES (N'Kobe', CAST(N'1978-08-23' AS Date), 1001000, 50000, 951000)
GO
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kawhi', 3478, 22000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kawhi', 5566, 19000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kawhi', 9876, 20000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kawhi', 45678, 8000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kawhi', 55588, 9000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kawhi', 99887, 1800)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kobe', 1122, 50000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kobe', 6541, 15000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kobe', 8523, 33000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kobe', 10108, 8000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kobe', 59777, 10000)
INSERT [dbo].[PAYS] ([OwnerName], [Employee_SSN], [Amount]) VALUES (N'Kobe', 88881, 2000)
GO
INSERT [dbo].[PAYS_RENT] ([OwnerName], [Restaurant_Name], [Amount]) VALUES (N'Kawhi', N'Buffalo Wings', 3000)
INSERT [dbo].[PAYS_RENT] ([OwnerName], [Restaurant_Name], [Amount]) VALUES (N'Kawhi', N'Dragon', 5000)
INSERT [dbo].[PAYS_RENT] ([OwnerName], [Restaurant_Name], [Amount]) VALUES (N'Kawhi', N'Petsmart', 3500)
INSERT [dbo].[PAYS_RENT] ([OwnerName], [Restaurant_Name], [Amount]) VALUES (N'Kobe', N'McDonalds', 5000)
INSERT [dbo].[PAYS_RENT] ([OwnerName], [Restaurant_Name], [Amount]) VALUES (N'Kobe', N'Subway', 4000)
GO
INSERT [dbo].[PLAYER] ([Player_SSN], [Jersey_Number], [Position], [Coach_SSN], [Stat_ID], [Year], [PPG], [Shots_made], [Shots_attempted]) VALUES (1122, 23, N'Power Forward', 10108, 100, 17, 25.7, 12424, 24654)
INSERT [dbo].[PLAYER] ([Player_SSN], [Jersey_Number], [Position], [Coach_SSN], [Stat_ID], [Year], [PPG], [Shots_made], [Shots_attempted]) VALUES (3478, 43, N'Power Forward', 45678, 420, 5, 23.6, 1334, 2648)
INSERT [dbo].[PLAYER] ([Player_SSN], [Jersey_Number], [Position], [Coach_SSN], [Stat_ID], [Year], [PPG], [Shots_made], [Shots_attempted]) VALUES (5566, 23, N'Shooting Guard', 45678, 98, 3, 10.3, 804, 1957)
INSERT [dbo].[PLAYER] ([Player_SSN], [Jersey_Number], [Position], [Coach_SSN], [Stat_ID], [Year], [PPG], [Shots_made], [Shots_attempted]) VALUES (6541, 7, N'Small Forward', 10108, 222, 11, 8.9, 2155, 5083)
INSERT [dbo].[PLAYER] ([Player_SSN], [Jersey_Number], [Position], [Coach_SSN], [Stat_ID], [Year], [PPG], [Shots_made], [Shots_attempted]) VALUES (8523, 3, N'Centre', 10108, 255, 7, 24, 4661, 9024)
INSERT [dbo].[PLAYER] ([Player_SSN], [Jersey_Number], [Position], [Coach_SSN], [Stat_ID], [Year], [PPG], [Shots_made], [Shots_attempted]) VALUES (9876, 7, N'Point Guard', 45678, 132, 13, 14.7, 4289, 10136)
GO
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (5, N'South', N'Staples Centre', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (10, N'South', N'Scotiabank Arena', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (14, N'South', N'Scotiabank Arena', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (15, N'North', N'Staples Centre', 1)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (55, N'West', N'Scotiabank Arena', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (74, N'East', N'Scotiabank Arena', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (101, N'East', N'Scotiabank Arena', 1)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (134, N'North', N'Scotiabank Arena', 1)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (150, N'South', N'Scotiabank Arena', 1)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (151, N'North', N'Staples Centre', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (240, N'North', N'Scotiabank Arena', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (333, N'West', N'Staples Centre', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (344, N'West', N'Scotiabank Arena', 1)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (444, N'West', N'Staples Centre', 1)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (555, N'East', N'Staples Centre', 0)
INSERT [dbo].[SEATS] ([Seat_number], [Seat_section], [Stadium_ID], [Status]) VALUES (563, N'West', N'Scotiabank Arena', 1)
GO
INSERT [dbo].[STADIUM] ([Stadium_ID], [Location], [Owner_Name]) VALUES (N'Scotiabank Arena', N'Toronto', N'Kawhi')
INSERT [dbo].[STADIUM] ([Stadium_ID], [Location], [Owner_Name]) VALUES (N'Staples Centre', N'LA', N'Kobe')
GO
INSERT [dbo].[TEAM] ([Team_Name], [Conference], [Division], [Wins], [Loses], [Win_rate]) VALUES (N'Lakers', N'Western', N'Pacific', 60, 15, 80)
INSERT [dbo].[TEAM] ([Team_Name], [Conference], [Division], [Wins], [Loses], [Win_rate]) VALUES (N'toronto raptors', N'east', N'NE', 50, 20, 70)
GO
INSERT [dbo].[TECHNICIAN] ([Tech_SSN], [Type], [Pay_grade], [Current_problem], [Stadium_Name]) VALUES (88881, N'Mechanic', 75000, N'Lighting', N'Staples Centre')
INSERT [dbo].[TECHNICIAN] ([Tech_SSN], [Type], [Pay_grade], [Current_problem], [Stadium_Name]) VALUES (99887, N'Mechanic', 70000, N'Heating System', N'Scotiabank Arena')
GO
INSERT [dbo].[TICKET] ([Ticket_Number], [Customer_SSN], [Seat_number], [Game_ID], [Amount]) VALUES (111, 420, 10, N'Regular Season: Game 21', 100)
INSERT [dbo].[TICKET] ([Ticket_Number], [Customer_SSN], [Seat_number], [Game_ID], [Amount]) VALUES (123, 420, 240, N'Playoffs: Semi-final Game 4', 350)
INSERT [dbo].[TICKET] ([Ticket_Number], [Customer_SSN], [Seat_number], [Game_ID], [Amount]) VALUES (144, 69, 134, N'Playoffs: Final Game 6', 1200)
INSERT [dbo].[TICKET] ([Ticket_Number], [Customer_SSN], [Seat_number], [Game_ID], [Amount]) VALUES (455, 50, 240, N'Regular Season: Game 10', 350)
INSERT [dbo].[TICKET] ([Ticket_Number], [Customer_SSN], [Seat_number], [Game_ID], [Amount]) VALUES (555, 1234, 333, N'Regular Season: Game 17', 550)
GO
INSERT [dbo].[TREATS] ([Med_SSN], [Player_SSN]) VALUES (55588, 3478)
INSERT [dbo].[TREATS] ([Med_SSN], [Player_SSN]) VALUES (55588, 5566)
INSERT [dbo].[TREATS] ([Med_SSN], [Player_SSN]) VALUES (55588, 9876)
INSERT [dbo].[TREATS] ([Med_SSN], [Player_SSN]) VALUES (59777, 1122)
INSERT [dbo].[TREATS] ([Med_SSN], [Player_SSN]) VALUES (59777, 6541)
INSERT [dbo].[TREATS] ([Med_SSN], [Player_SSN]) VALUES (59777, 8523)
GO
ALTER TABLE [dbo].[BUY]  WITH CHECK ADD FOREIGN KEY([Order_ID])
REFERENCES [dbo].[ORDER] ([Order_ID])
GO
ALTER TABLE [dbo].[BUY]  WITH CHECK ADD FOREIGN KEY([SSN])
REFERENCES [dbo].[CUSTOMER] ([SSN])
GO
ALTER TABLE [dbo].[COACH]  WITH CHECK ADD FOREIGN KEY([Coach_SSN])
REFERENCES [dbo].[EMPLOYEE] ([SSN])
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD FOREIGN KEY([Team_Name])
REFERENCES [dbo].[TEAM] ([Team_Name])
GO
ALTER TABLE [dbo].[GAME]  WITH CHECK ADD FOREIGN KEY([Stadium_ID])
REFERENCES [dbo].[STADIUM] ([Stadium_ID])
GO
ALTER TABLE [dbo].[MEDICAL_STAFF]  WITH CHECK ADD FOREIGN KEY([Med_SSN])
REFERENCES [dbo].[EMPLOYEE] ([SSN])
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD FOREIGN KEY([Restaurant_name])
REFERENCES [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name])
GO
ALTER TABLE [dbo].[ORDER_DISH_NAME]  WITH CHECK ADD FOREIGN KEY([Order_ID])
REFERENCES [dbo].[ORDER] ([Order_ID])
GO
ALTER TABLE [dbo].[PAYS]  WITH CHECK ADD FOREIGN KEY([Employee_SSN])
REFERENCES [dbo].[EMPLOYEE] ([SSN])
GO
ALTER TABLE [dbo].[PAYS]  WITH CHECK ADD FOREIGN KEY([OwnerName])
REFERENCES [dbo].[OWNER] ([Name])
GO
ALTER TABLE [dbo].[PAYS_RENT]  WITH CHECK ADD FOREIGN KEY([OwnerName])
REFERENCES [dbo].[OWNER] ([Name])
GO
ALTER TABLE [dbo].[PAYS_RENT]  WITH CHECK ADD FOREIGN KEY([Restaurant_Name])
REFERENCES [dbo].[FAST_FOOD_RESTAURANT] ([Restaurant_Name])
GO
ALTER TABLE [dbo].[PLAYER]  WITH CHECK ADD FOREIGN KEY([Coach_SSN])
REFERENCES [dbo].[COACH] ([Coach_SSN])
GO
ALTER TABLE [dbo].[PLAYER]  WITH CHECK ADD FOREIGN KEY([Player_SSN])
REFERENCES [dbo].[EMPLOYEE] ([SSN])
GO
ALTER TABLE [dbo].[SEATS]  WITH CHECK ADD FOREIGN KEY([Stadium_ID])
REFERENCES [dbo].[STADIUM] ([Stadium_ID])
GO
ALTER TABLE [dbo].[STADIUM]  WITH CHECK ADD FOREIGN KEY([Owner_Name])
REFERENCES [dbo].[OWNER] ([Name])
GO
ALTER TABLE [dbo].[TECHNICIAN]  WITH CHECK ADD FOREIGN KEY([Stadium_Name])
REFERENCES [dbo].[STADIUM] ([Stadium_ID])
GO
ALTER TABLE [dbo].[TECHNICIAN]  WITH CHECK ADD FOREIGN KEY([Tech_SSN])
REFERENCES [dbo].[EMPLOYEE] ([SSN])
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD FOREIGN KEY([Customer_SSN])
REFERENCES [dbo].[CUSTOMER] ([SSN])
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD FOREIGN KEY([Game_ID])
REFERENCES [dbo].[GAME] ([Game_ID])
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD FOREIGN KEY([Seat_number])
REFERENCES [dbo].[SEATS] ([Seat_number])
GO
ALTER TABLE [dbo].[TREATS]  WITH CHECK ADD FOREIGN KEY([Med_SSN])
REFERENCES [dbo].[MEDICAL_STAFF] ([Med_SSN])
GO
ALTER TABLE [dbo].[TREATS]  WITH CHECK ADD FOREIGN KEY([Player_SSN])
REFERENCES [dbo].[PLAYER] ([Player_SSN])
GO
/****** Object:  StoredProcedure [dbo].[AddGame]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddGame]
	-- Add the parameters for the stored procedure here
	
	@GameID VARCHAR(50) = NULL,
	@DatePlay DATE = NULL,
	@HomeTeam VARCHAR(50) = NULL,
	@AwayTeam VARCHAR(50) = NULL,
	@StadiumID VARCHAR(50) = NULL


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO GAME
	VALUES (@GameID, @DatePlay, @HomeTeam, @AwayTeam, @StadiumID)
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewGame]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tony Wong
-- Create date: 2020 04-17
-- Description:	Update Game Schudule 
-- =============================================
CREATE PROCEDURE [dbo].[AddNewGame]
	-- Add the parameters for the stored procedure here

	  @Game_ID VARCHAR(50) = NULL,
      @Date_played DATE = NULL,
      @Home_Team VARCHAR(50) = NULL,
      @Away_Team VARCHAR(50) = NULL,
      @Stadium_ID VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	INSERT INTO GAME (Game_ID, Date_played, Home_Team, Away_Team, Stadium_ID)
	VALUES (@Game_ID, @Date_played, @Home_Team, @Away_Team, @Stadium_ID)
END
GO
/****** Object:  StoredProcedure [dbo].[AverageSeatPrice]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tony Wong
-- Create date: 2020-04-17
-- Description:	Get AVG TICKET IN GAME 
-- =============================================
CREATE PROCEDURE [dbo].[AverageSeatPrice]
	-- Add the parameters for the stored procedure here
	@GameID VARCHAR(50) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT AVG(Amount) as AvgTicketCost
	FROM TICKET 
	INNER JOIN SEATS ON TICKET.Seat_number = SEATS.Seat_number
	WHERE @GameID = Game_ID
END
GO
/****** Object:  StoredProcedure [dbo].[AverageSeatPriceInSec]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Tony Wong >
-- Create date: <2020-04-16>
-- Description:	<Get the Average Seat Price in a Given Secation>
-- =============================================
CREATE PROCEDURE [dbo].[AverageSeatPriceInSec] 
	-- Add the parameters for the stored procedure here
	@GameID VARCHAR(50) = NULL,
	@SeatSection VARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT AVG(Amount) as AvgTicketCostInSection
	FROM TICKET 
	INNER JOIN SEATS ON TICKET.Seat_number = SEATS.Seat_number
	WHERE @SeatSection= Seat_section AND @GameID = Game_ID
	GROUP BY Seat_section 

	



END
GO
/****** Object:  StoredProcedure [dbo].[CustomerAll]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Tony Wong>
-- Create date: <2020,04,15>
-- Description:	<gets all customer>
-- =============================================
CREATE PROCEDURE [dbo].[CustomerAll]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM CUSTOMER
END
GO
/****** Object:  StoredProcedure [dbo].[GetAvailableSeats]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAvailableSeats] 
	-- Add the parameters for the stored procedure here
	@StadiumID VARCHAR(50) = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM SEATS 
	WHERE @StadiumID = Stadium_ID
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeSalary]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Tony Wong>
-- Create date: <2020,04,16>
-- Description:	<Get employee Salary given and SSN>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeeSalary] 
	-- Add the parameters for the stored procedure here
	 @SSN int = -1    --default value for SSN
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Fname, Lname, Salary
	FROM EMPLOYEE 
	WHERE @SSN = SSN
END
GO
/****** Object:  StoredProcedure [dbo].[GetFinancialData]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Nicolas Urrego>
-- Create date: <2020-04-16>
-- Description:	<Get financial data from stadium>
-- =============================================
CREATE PROCEDURE [dbo].[GetFinancialData]
	-- Add the parameters for the stored procedure here
	@OwnerName VARCHAR(50)	= NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Gross_profit, Losses, Net_profit FROM OWNER
	WHERE @OwnerName = [Name]
END
GO
/****** Object:  StoredProcedure [dbo].[GetPlayerStats]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<TONY wong
-- Create date: 2020 04 17
-- Description:	Get Stats for the given player 
-- =============================================
CREATE PROCEDURE [dbo].[GetPlayerStats]
	-- Add the parameters for the stored procedure here
	@SSN int = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
       [Fname]
      ,[Lname]
	  ,[Team_Name]
	  ,[Stat_ID] 
      ,[Year] 
      ,[PPG]
      ,[Shots_made]
      ,[Shots_attempted]	
	  FROM PLAYER 
	  JOIN EMPLOYEE ON EMPLOYEE.SSN= PLAYER.Player_SSN
	  WHERE @SSN = SSN 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSeatPrice]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSeatPrice] 
	-- Add the parameters for the stored procedure here
	@SeatNum INT = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Amount FROM TICKET WHERE @SeatNum = Seat_number
END
GO
/****** Object:  StoredProcedure [dbo].[GetTotalSalarires]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Tony Wong>
-- Create date: <2020-04-16>
-- Description:	<Gets total salary>
-- =============================================
CREATE PROCEDURE [dbo].[GetTotalSalarires]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SUM(Salary) AS "Total.salaries"
	FROM EMPLOYEE

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomer]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shiwei Sun>
-- Create date: <2020,4,18>
-- Description:	<Update Customer Data>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateCustomer] 
	-- Add the parameters for the stored procedure here
	@SSN int = 0,
	@FNAME varchar(50) = NULL,
	@LNAME varchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE CUSTOMER
	SET Fname = @FNAME, Lname= @LNAME
	WHERE SSN = @SSN;
	
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSalary]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<TonyWong>
-- Create date: <2020,04,16>
-- Description:	<Updates employee Salary>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSalary]
	-- Add the parameters for the stored procedure here
	@SSN int = NULL, 
	@AMOUNT float = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE EMPLOYEE
	SET Salary = @AMOUNT
	WHERE SSN = @SSN
	-- Return
	SELECT Fname,Lname,Salary AS "NewSalary"
	FROM EMPLOYEE
	WHERE SSN = @SSN
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTeamLose]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shiwei Sun>
-- Create date: <2020,04,17>
-- Description:	<The league (NBA) wants to update a team’s lose record>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateTeamLose] 
	-- Add the parameters for the stored procedure here
	 @TEAM_NAME varchar(50) = NULL    --default value for Team_Name
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TEAM
	SET Loses = Loses+1
	WHERE Team_Name = @TEAM_NAME

	UPDATE TEAM
	SET Win_rate = 100*(Wins)/(Wins+Loses)
	WHERE Team_Name = @TEAM_NAME
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTeamWin]    Script Date: 2020-04-19 11:35:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Shiwei Sun>
-- Create date: <2020,04,17>
-- Description:	<The league (NBA) wants to update a team’s win record>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateTeamWin] 
	-- Add the parameters for the stored procedure here
	 @TEAM_NAME varchar(50) = NULL    --default value for Team_Name
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TEAM
	SET Wins = Wins+1
	WHERE Team_Name = @TEAM_NAME

	UPDATE TEAM
	SET Win_rate = 100*(Wins)/(Wins+Loses)
	WHERE Team_Name = @TEAM_NAME

	SELECT *
	FROM TEAM
END
GO
USE [master]
GO
ALTER DATABASE [SPORTDBv2] SET  READ_WRITE 
GO
