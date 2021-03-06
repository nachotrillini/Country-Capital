USE [master]
GO
/****** Object:  Database [Countries]    Script Date: 21/7/2021 19:54:11 ******/
CREATE DATABASE [Countries]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Countries', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Countries.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Countries_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Countries_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Countries] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Countries].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Countries] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Countries] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Countries] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Countries] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Countries] SET ARITHABORT OFF 
GO
ALTER DATABASE [Countries] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Countries] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Countries] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Countries] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Countries] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Countries] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Countries] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Countries] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Countries] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Countries] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Countries] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Countries] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Countries] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Countries] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Countries] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Countries] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Countries] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Countries] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Countries] SET  MULTI_USER 
GO
ALTER DATABASE [Countries] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Countries] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Countries] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Countries] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Countries] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Countries] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Countries] SET QUERY_STORE = OFF
GO
USE [Countries]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/7/2021 19:54:11 ******/
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
/****** Object:  Table [dbo].[Pais]    Script Date: 21/7/2021 19:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Capital] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210720181034_Initial', N'5.0.8')
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (1, N'Afghanistan', N'Kabul')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (2, N'Aland Islands', N'Mariehamn')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (3, N'Akrotiri and Dhekelia', N'Episkopi Cantonment')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (4, N'Albania', N'Tirana')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (5, N'Algeria', N'Algiers')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (6, N'American Samoa', N'Pago Pago')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (7, N'Andorra', N'Andorra la Vella')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (8, N'Angola', N'Luanda')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (9, N'Anguilla', N'The Valley')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (10, N'Antigua and Barbuda', N'St. John''s')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (11, N'Argentina', N'Buenos Aires')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (12, N'Armenia', N'Yerevan')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (13, N'Aruba', N'Oranjestad')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (14, N'Ascension Island', N'Georgetown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (15, N'Australia', N'Canberra')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (16, N'Austria', N'Vienna')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (17, N'Azerbaijan', N'Baku')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (18, N'Bahamas', N'Nassau')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (19, N'Bahrain', N'Manama')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (20, N'Bangladesh', N'Dhaka')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (21, N'Barbados', N'Bridgetown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (22, N'Belarus', N'Minsk')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (23, N'Belgium', N'Brussels')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (24, N'Belize', N'Belmopan')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (25, N'Benin', N'Porto-Novo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (26, N'Bermuda', N'Hamilton')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (27, N'Bhutan', N'Thimphu')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (28, N'Bolivia', N'Sucre/La Paz')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (29, N'Bosnia and Herzegovina', N'Sarajevo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (30, N'Botswana', N'Gaborone')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (31, N'Brazil', N'Brasilia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (32, N'British Virgin Islands', N'Road Town')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (33, N'Brunei', N'Bandar Seri Begawan')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (34, N'Bulgaria', N'Sofia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (35, N'Burkina Faso', N'Ouagadougou')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (36, N'Burundi', N'Bujumbura')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (37, N'Cambodia', N'Phnom Penh')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (38, N'Cameroon', N'Yaoundé')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (39, N'Canada', N'Ottawa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (40, N'Cape Verde', N'Praia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (41, N'Cayman Islands', N'George Town')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (42, N'Central African Republic', N'Bangui')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (43, N'Chad', N'N''Djamena')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (44, N'Chile', N'Santiago')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (45, N'China', N'Beijing')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (46, N'Christmas Island', N'Flying Fish Cove')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (47, N'Cocos (Keeling) Islands', N'West Island')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (48, N'Colombia', N'Bogotá')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (49, N'Comoros', N'Moroni')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (50, N'Cook Islands', N'Avarua')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (51, N'Costa Rica', N'San José')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (52, N'Croatia', N'Zagreb')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (53, N'Cuba', N'Havana')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (54, N'Curaçao', N'Willemstad')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (55, N'Cyprus', N'Nicosia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (56, N'Czech Republic', N'Prague')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (57, N'Côte d''Ivoire', N'Yamoussoukro')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (58, N'Democratic Republic of the Congo', N'Kinshasa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (59, N'Denmark', N'Copenhagen')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (60, N'Djibouti', N'Djibouti')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (61, N'Dominica', N'Roseau')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (62, N'Dominican Republic', N'Santo Domingo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (63, N'East Timor (Timor-Leste)', N'Dili')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (64, N'Easter Island', N'Hanga Roa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (65, N'Ecuador', N'Quito')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (66, N'Egypt', N'Cairo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (67, N'El Salvador', N'San Salvador')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (68, N'Equatorial Guinea', N'Malabo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (69, N'Eritrea', N'Asmara')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (70, N'Estonia', N'Tallinn')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (71, N'Ethiopia', N'Addis Ababa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (72, N'Falkland Islands', N'Stanley')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (73, N'Faroe Islands', N'Tórshavn')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (74, N'Federated States of Micronesia', N'Palikir')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (75, N'Fiji', N'Suva')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (76, N'Finland', N'Helsinki')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (77, N'France', N'Paris')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (78, N'French Guiana', N'Cayenne')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (79, N'French Polynesia', N'Papeete')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (80, N'Gabon', N'Libreville')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (81, N'Gambia', N'Banjul')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (82, N'Georgia', N'Tbilisi')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (83, N'Germany', N'Berlin')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (84, N'Ghana', N'Accra')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (85, N'Gibraltar', N'Gibraltar')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (86, N'Greece', N'Athens')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (87, N'Greenland', N'Nuuk')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (88, N'Grenada', N'St. George''s')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (89, N'Guam', N'Hagåtña')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (90, N'Guatemala', N'Guatemala City')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (91, N'Guernsey', N'St. Peter Port')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (92, N'Guinea', N'Conakry')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (93, N'Guinea-Bissau', N'Bissau')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (94, N'Guyana', N'Georgetown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (95, N'Haiti', N'Port-au-Prince')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (96, N'Honduras', N'Tegucigalpa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (97, N'Hungary', N'Budapest')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (98, N'Iceland', N'Reykjavík')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (99, N'India', N'New Delhi')
GO
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (100, N'Indonesia', N'Jakarta')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (101, N'Iran', N'Tehran')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (102, N'Iraq', N'Baghdad')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (103, N'Ireland', N'Dublin')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (104, N'Isle of Man', N'Douglas')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (105, N'Israel', N'Jerusalem')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (106, N'Italy', N'Rome')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (107, N'Jamaica', N'Kingston')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (108, N'Japan', N'Tokyo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (109, N'Jersey', N'St. Helier')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (110, N'Jordan', N'Amman')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (111, N'Kazakhstan', N'Astana')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (112, N'Kenya', N'Nairobi')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (113, N'Kiribati', N'Tarawa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (114, N'Kosovo', N'Pristina')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (115, N'Kuwait', N'Kuwait City')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (116, N'Kyrgyzstan', N'Bishkek')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (117, N'Laos', N'Vientiane')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (118, N'Latvia', N'Riga')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (119, N'Lebanon', N'Beirut')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (120, N'Lesotho', N'Maseru')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (121, N'Liberia', N'Monrovia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (122, N'Libya', N'Tripoli')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (123, N'Liechtenstein', N'Vaduz')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (124, N'Lithuania', N'Vilnius')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (125, N'Luxembourg', N'Luxembourg')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (126, N'Macedonia', N'Skopje')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (127, N'Madagascar', N'Antananarivo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (128, N'Malawi', N'Lilongwe')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (129, N'Malaysia', N'Kuala Lumpur')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (130, N'Maldives', N'Malé')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (131, N'Mali', N'Bamako')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (132, N'Malta', N'Valletta')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (133, N'Marshall Islands', N'Majuro')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (134, N'Mauritania', N'Nouakchott')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (135, N'Mauritius', N'Port Louis')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (136, N'Mexico', N'Mexico City')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (137, N'Moldova', N'Chisinau')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (138, N'Monaco', N'Monaco')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (139, N'Mongolia', N'Ulaanbaatar')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (140, N'Montenegro', N'Podgorica')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (141, N'Montserrat', N'Plymouth')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (142, N'Morocco', N'Rabat')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (143, N'Mozambique', N'Maputo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (144, N'Myanmar', N'Naypyidaw')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (145, N'Nagorno-Karabakh Republic', N'Stepanakert')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (146, N'Namibia', N'Windhoek')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (147, N'Nauru', N'Yaren')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (148, N'Nepal', N'Kathmandu')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (149, N'Netherlands', N'Amsterdam')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (150, N'New Caledonia', N'Nouméa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (151, N'New Zealand', N'Wellington')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (152, N'Nicaragua', N'Managua')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (153, N'Niger', N'Niamey')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (154, N'Nigeria', N'Abuja')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (155, N'Niue', N'Alofi')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (156, N'Norfolk Island', N'Kingston')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (157, N'North Korea', N'Pyongyang')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (158, N'Northern Cyprus', N'Nicosia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (159, N'United Kingdom Northern Ireland', N'Belfast')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (160, N'Northern Mariana Islands', N'Saipan')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (161, N'Norway', N'Oslo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (162, N'Oman', N'Muscat')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (163, N'Pakistan', N'Islamabad')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (164, N'Palau', N'Ngerulmud')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (165, N'Palestine', N'Jerusalem')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (166, N'Panama', N'Panama City')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (167, N'Papua New Guinea', N'Port Moresby')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (168, N'Paraguay', N'Asunción')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (169, N'Peru', N'Lima')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (170, N'Philippines', N'Manila')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (171, N'Pitcairn Islands', N'Adamstown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (172, N'Poland', N'Warsaw')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (173, N'Portugal', N'Lisbon')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (174, N'Puerto Rico', N'San Juan')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (175, N'Qatar', N'Doha')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (176, N'Republic of China (Taiwan)', N'Taipei')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (177, N'Republic of the Congo', N'Brazzaville')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (178, N'Romania', N'Bucharest')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (179, N'Russia', N'Moscow')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (180, N'Rwanda', N'Kigali')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (181, N'Saint Barthélemy', N'Gustavia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (182, N'Saint Helena', N'Jamestown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (183, N'Saint Kitts and Nevis', N'Basseterre')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (184, N'Saint Lucia', N'Castries')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (185, N'Saint Martin', N'Marigot')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (186, N'Saint Pierre and Miquelon', N'St. Pierre')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (187, N'Saint Vincent and the Grenadines', N'Kingstown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (188, N'Samoa', N'Apia')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (189, N'San Marino', N'San Marino')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (190, N'Saudi Arabia', N'Riyadh')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (191, N'Scotland', N'Edinburgh')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (192, N'Senegal', N'Dakar')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (193, N'Serbia', N'Belgrade')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (194, N'Seychelles', N'Victoria')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (195, N'Sierra Leone', N'Freetown')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (196, N'Singapore', N'Singapore')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (197, N'Sint Maarten', N'Philipsburg')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (198, N'Slovakia', N'Bratislava')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (199, N'Slovenia', N'Ljubljana')
GO
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (200, N'Solomon Islands', N'Honiara')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (201, N'Somalia', N'Mogadishu')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (202, N'Somaliland', N'Hargeisa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (203, N'South Africa', N'Pretoria')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (204, N'South Georgia and the South Sandwich Islands', N'Grytviken')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (205, N'South Korea', N'Seoul')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (206, N'South Ossetia', N'Tskhinvali')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (207, N'South Sudan', N'Juba')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (208, N'Spain', N'Madrid')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (209, N'Sri Lanka', N'Sri Jayawardenapura Kotte')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (210, N'Sudan', N'Khartoum')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (211, N'Suriname', N'Paramaribo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (212, N'Swaziland', N'Mbabane')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (213, N'Sweden', N'Stockholm')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (214, N'Switzerland', N'Bern')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (215, N'Syria', N'Damascus')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (216, N'São Tomé and Príncipe', N'São Tomé')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (217, N'Tajikistan', N'Dushanbe')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (218, N'Tanzania', N'Dodoma')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (219, N'Thailand', N'Bangkok')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (220, N'Togo', N'Lomé')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (221, N'Tonga', N'Nukuʻalofa')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (222, N'Transnistria', N'Tiraspol')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (223, N'Trinidad and Tobago', N'Port of Spain')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (224, N'Tristan da Cunha', N'Edinburgh of the Seven Seas')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (225, N'Tunisia', N'Tunis')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (226, N'Turkey', N'Ankara')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (227, N'Turkmenistan', N'Ashgabat')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (228, N'Turks and Caicos Islands', N'Cockburn Town')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (229, N'Tuvalu', N'Funafuti')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (230, N'Uganda', N'Kampala')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (231, N'Ukraine', N'Kiev')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (232, N'United Arab Emirates', N'Abu Dhabi')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (233, N'United Kingdom', N'London')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (234, N'United States', N'Washington D.C.')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (235, N'United States Virgin Islands', N'Charlotte Amalie')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (236, N'Uruguay', N'Montevideo')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (237, N'Uzbekistan', N'Tashkent')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (238, N'Vanuatu', N'Port Vila')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (239, N'Vatican City', N'Vatican City')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (240, N'Venezuela', N'Caracas')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (241, N'Vietnam', N'Hanoi')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (242, N'Wales', N'Cardiff')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (243, N'Wallis and Futuna', N'Mata-Utu')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (244, N'Western Sahara', N'El Aaiún')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (245, N'Yemen', N'Sanaá')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (246, N'Zambia', N'Lusaka')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (247, N'Zimbabwe', N'Harare')
INSERT [dbo].[Pais] ([Id], [Nombre], [Capital]) VALUES (250, N'England', N'London')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
USE [master]
GO
ALTER DATABASE [Countries] SET  READ_WRITE 
GO
