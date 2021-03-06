USE [master]
GO
/****** Object:  Database [AssignProject]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE DATABASE [AssignProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AssignProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AssignProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AssignProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AssignProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AssignProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssignProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssignProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AssignProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AssignProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AssignProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AssignProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [AssignProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AssignProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AssignProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AssignProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AssignProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AssignProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AssignProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AssignProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AssignProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AssignProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AssignProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AssignProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AssignProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AssignProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AssignProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AssignProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AssignProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AssignProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AssignProject] SET  MULTI_USER 
GO
ALTER DATABASE [AssignProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AssignProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AssignProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AssignProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AssignProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AssignProject] SET QUERY_STORE = OFF
GO
USE [AssignProject]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreateDeveloper]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreateDeveloper](
	[Developer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](500) NOT NULL,
	[Lastname] [nvarchar](500) NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[Designation] [nvarchar](500) NOT NULL,
	[Joindate] [datetime] NOT NULL,
	[Salary] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](500) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Phone] [nvarchar](500) NOT NULL,
	[Experience] [nvarchar](500) NOT NULL,
	[Cv] [nvarchar](max) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CreateDeveloper] PRIMARY KEY CLUSTERED 
(
	[Developer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreateProject]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreateProject](
	[Project_Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTitle] [nvarchar](500) NOT NULL,
	[Budget] [nvarchar](500) NOT NULL,
	[AwardDate] [datetime] NOT NULL,
	[Startdate] [datetime] NOT NULL,
	[Enddate] [datetime] NOT NULL,
	[ActualCompletedate] [datetime] NOT NULL,
	[Status] [nvarchar](500) NOT NULL,
	[Statusfeedback] [nvarchar](500) NOT NULL,
	[Fileuploads] [nvarchar](500) NOT NULL,
	[Discription] [nvarchar](500) NOT NULL,
	[Developer_Id] [int] NULL,
 CONSTRAINT [PK_CreateProject] PRIMARY KEY CLUSTERED 
(
	[Project_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeveloperWorkProgress]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeveloperWorkProgress](
	[Workid] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Addfile] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](500) NOT NULL,
	[discription] [nvarchar](max) NOT NULL,
	[ModuleId] [int] NULL,
	[Project_Id] [int] NULL,
	[Developer_Id] [int] NULL,
	[FeedId] [int] NULL,
 CONSTRAINT [PK_Developerdetail] PRIMARY KEY CLUSTERED 
(
	[Workid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewModule]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewModule](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[Budget] [nvarchar](500) NOT NULL,
	[AwardDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ActualCompletedate] [datetime] NOT NULL,
	[Discription] [nvarchar](500) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Assign] [nvarchar](50) NOT NULL,
	[Project_Id] [int] NULL,
	[Developer_Id] [int] NULL,
 CONSTRAINT [PK_NewModule] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectFeedback]    Script Date: 8/27/2021 1:10:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectFeedback](
	[FeedId] [int] IDENTITY(1,1) NOT NULL,
	[Startdate] [datetime] NOT NULL,
	[time] [time](7) NOT NULL,
	[Enddate] [datetime] NOT NULL,
	[Discription] [nvarchar](max) NOT NULL,
	[Project_Id] [int] NULL,
	[Developer_Id] [int] NULL,
	[ModuleId] [int] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/27/2021 1:10:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CreateProject]  WITH CHECK ADD  CONSTRAINT [FK_CreateProject_CreateDeveloper] FOREIGN KEY([Developer_Id])
REFERENCES [dbo].[CreateDeveloper] ([Developer_Id])
GO
ALTER TABLE [dbo].[CreateProject] CHECK CONSTRAINT [FK_CreateProject_CreateDeveloper]
GO
ALTER TABLE [dbo].[DeveloperWorkProgress]  WITH CHECK ADD  CONSTRAINT [FK_DeveloperWorkProgress_CreateDeveloper] FOREIGN KEY([Developer_Id])
REFERENCES [dbo].[CreateDeveloper] ([Developer_Id])
GO
ALTER TABLE [dbo].[DeveloperWorkProgress] CHECK CONSTRAINT [FK_DeveloperWorkProgress_CreateDeveloper]
GO
ALTER TABLE [dbo].[DeveloperWorkProgress]  WITH CHECK ADD  CONSTRAINT [FK_DeveloperWorkProgress_CreateProject] FOREIGN KEY([Project_Id])
REFERENCES [dbo].[CreateProject] ([Project_Id])
GO
ALTER TABLE [dbo].[DeveloperWorkProgress] CHECK CONSTRAINT [FK_DeveloperWorkProgress_CreateProject]
GO
ALTER TABLE [dbo].[DeveloperWorkProgress]  WITH CHECK ADD  CONSTRAINT [FK_DeveloperWorkProgress_NewModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[NewModule] ([ModuleId])
GO
ALTER TABLE [dbo].[DeveloperWorkProgress] CHECK CONSTRAINT [FK_DeveloperWorkProgress_NewModule]
GO
ALTER TABLE [dbo].[DeveloperWorkProgress]  WITH CHECK ADD  CONSTRAINT [FK_DeveloperWorkProgress_ProjectFeedback] FOREIGN KEY([FeedId])
REFERENCES [dbo].[ProjectFeedback] ([FeedId])
GO
ALTER TABLE [dbo].[DeveloperWorkProgress] CHECK CONSTRAINT [FK_DeveloperWorkProgress_ProjectFeedback]
GO
ALTER TABLE [dbo].[NewModule]  WITH CHECK ADD  CONSTRAINT [FK_NewModule_CreateDeveloper] FOREIGN KEY([Developer_Id])
REFERENCES [dbo].[CreateDeveloper] ([Developer_Id])
GO
ALTER TABLE [dbo].[NewModule] CHECK CONSTRAINT [FK_NewModule_CreateDeveloper]
GO
ALTER TABLE [dbo].[NewModule]  WITH CHECK ADD  CONSTRAINT [FK_NewModule_CreateProject] FOREIGN KEY([Project_Id])
REFERENCES [dbo].[CreateProject] ([Project_Id])
GO
ALTER TABLE [dbo].[NewModule] CHECK CONSTRAINT [FK_NewModule_CreateProject]
GO
ALTER TABLE [dbo].[ProjectFeedback]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFeedback_CreateDeveloper] FOREIGN KEY([Developer_Id])
REFERENCES [dbo].[CreateDeveloper] ([Developer_Id])
GO
ALTER TABLE [dbo].[ProjectFeedback] CHECK CONSTRAINT [FK_ProjectFeedback_CreateDeveloper]
GO
ALTER TABLE [dbo].[ProjectFeedback]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFeedback_CreateProject] FOREIGN KEY([Project_Id])
REFERENCES [dbo].[CreateProject] ([Project_Id])
GO
ALTER TABLE [dbo].[ProjectFeedback] CHECK CONSTRAINT [FK_ProjectFeedback_CreateProject]
GO
ALTER TABLE [dbo].[ProjectFeedback]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFeedback_NewModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[NewModule] ([ModuleId])
GO
ALTER TABLE [dbo].[ProjectFeedback] CHECK CONSTRAINT [FK_ProjectFeedback_NewModule]
GO
USE [master]
GO
ALTER DATABASE [AssignProject] SET  READ_WRITE 
GO
