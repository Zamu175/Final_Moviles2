USE [Final_Moviles]
GO
/****** Object:  Database [Final_Moviles]    Script Date: 28/11/2018 12:55:58 a. m. ******/
ALTER DATABASE [Final_Moviles] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Final_Moviles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Final_Moviles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Final_Moviles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Final_Moviles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Final_Moviles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Final_Moviles] SET ARITHABORT OFF 
GO
ALTER DATABASE [Final_Moviles] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Final_Moviles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Final_Moviles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Final_Moviles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Final_Moviles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Final_Moviles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Final_Moviles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Final_Moviles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Final_Moviles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Final_Moviles] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Final_Moviles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Final_Moviles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Final_Moviles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Final_Moviles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Final_Moviles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Final_Moviles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Final_Moviles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Final_Moviles] SET RECOVERY FULL 
GO
ALTER DATABASE [Final_Moviles] SET  MULTI_USER 
GO
ALTER DATABASE [Final_Moviles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Final_Moviles] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Final_Moviles] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Final_Moviles] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Final_Moviles] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Final_Moviles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28/11/2018 12:55:58 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 28/11/2018 12:55:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion](
	[IdPublicacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[FechaPublicacion] [datetime] NOT NULL,
	[MeGusta] [int] NOT NULL,
	[MeDisgusta] [int] NOT NULL,
	[VecesCompartido] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Publicacion] PRIMARY KEY CLUSTERED 
(
	[IdPublicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seguridad]    Script Date: 28/11/2018 12:55:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seguridad](
	[IdSeguridad] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[contraseña] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/11/2018 12:55:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[NomUsuario] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](100) NOT NULL,
	[Imagen] [nvarchar](100) NOT NULL,
	[Genero] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Final_Moviles] SET  READ_WRITE 
GO
