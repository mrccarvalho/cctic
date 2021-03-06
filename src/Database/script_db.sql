USE [cctic2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/01/2019 15:52:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cms_Menu]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_Menu](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsSystem] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cms_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cms_MenuItem]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_MenuItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomLink] [nvarchar](max) NULL,
	[EntityId] [bigint] NULL,
	[MenuId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [bigint] NULL,
 CONSTRAINT [PK_Cms_MenuItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cms_Page]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_Page](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Body] [nvarchar](max) NULL,
	[CreatedById] [bigint] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[Abrev] [nvarchar](max) NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Cms_Page] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cms_PageWithBreadCrumb]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cms_PageWithBreadCrumb](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Abrev] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[CategoryId] [bigint] NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategorySeoTitle] [nvarchar](max) NULL,
	[CreatedById] [bigint] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[ParentCategoryId] [bigint] NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Cms_PageWithBreadCrumb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts_Contact]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[ContactAreaId] [bigint] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts_ContactArea]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts_ContactArea](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts_ContactArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_AppSetting]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_AppSetting](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_AppSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_Entity]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Entity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[EntityTypeId] [bigint] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_Entity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_EntityType]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_EntityType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IsMenuable] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[RoutingAction] [nvarchar](max) NULL,
	[RoutingController] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_EntityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_Media]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Media](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Caption] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[FileSize] [int] NOT NULL,
	[MediaType] [int] NOT NULL,
 CONSTRAINT [PK_Core_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_Role]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Core_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_RoleClaim]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_RoleClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_RoleClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_User]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[UserGuid] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Core_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_UserClaim]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_UserLogin]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserLogin](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_UserRole]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserRole](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_UserToken]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_UserToken](
	[UserId] [bigint] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_UserToken] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_Widget]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_Widget](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CreateUrl] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[EditUrl] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ViewComponentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_Widget] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_WidgetInstance]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetInstance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[HtmlData] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PublishEnd] [datetimeoffset](7) NULL,
	[PublishStart] [datetimeoffset](7) NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[WidgetId] [bigint] NOT NULL,
	[WidgetZoneId] [bigint] NOT NULL,
 CONSTRAINT [PK_Core_WidgetInstance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Core_WidgetZone]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Core_WidgetZone](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Core_WidgetZone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localization_Culture]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_Culture](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localization_Culture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localization_Resource]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localization_Resource](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CultureId] [bigint] NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localization_Resource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MainMenu_Category]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainMenu_Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IncludeInMenu] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [bigint] NULL,
	[SeoTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_MainMenu_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News_NewsCategory]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_News_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News_NewsItem]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedById] [bigint] NULL,
	[CreatedOn] [datetimeoffset](7) NOT NULL,
	[FullContent] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[MetaDescription] [nvarchar](max) NULL,
	[MetaKeywords] [nvarchar](max) NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[ShortContent] [nvarchar](max) NULL,
	[ThumbnailImageId] [bigint] NULL,
	[UpdatedById] [bigint] NULL,
	[UpdatedOn] [datetimeoffset](7) NOT NULL,
	[Abrev] [nvarchar](max) NULL,
	[PublishedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_News_NewsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News_NewsItemCategory]    Script Date: 21/01/2019 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_NewsItemCategory](
	[CategoryId] [bigint] NOT NULL,
	[NewsItemId] [bigint] NOT NULL,
 CONSTRAINT [PK_News_NewsItemCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[NewsItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171022162010_InitialCreate', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171129223829_AddedNewsModule', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171206133149_AddedContactModule', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181201155829_Abrev_Field', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117143934_added_news_publishedOn_field', N'2.0.0-rtm-26452')
SET IDENTITY_INSERT [dbo].[Cms_Menu] ON 

INSERT [dbo].[Cms_Menu] ([Id], [IsPublished], [IsSystem], [Name]) VALUES (1, 1, 1, N'MENU')
INSERT [dbo].[Cms_Menu] ([Id], [IsPublished], [IsSystem], [Name]) VALUES (2, 1, 1, N'LINKS ÚTEIS')
INSERT [dbo].[Cms_Menu] ([Id], [IsPublished], [IsSystem], [Name]) VALUES (3, 1, 0, N'RECURSOS')
SET IDENTITY_INSERT [dbo].[Cms_Menu] OFF
SET IDENTITY_INSERT [dbo].[Cms_MenuItem] ON 

INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (15, NULL, 6, 1, N'Home', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (19, NULL, 10041, 1, N'Formação', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (20, NULL, 10020, 1, N'Atividades', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (21, NULL, 10047, 1, N'Investigação', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (22, NULL, 18, 1, N'Eventos', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (23, NULL, 10048, 1, N'sobre', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (24, N'http://erte.dge.mec.pt/', NULL, 2, N'ERTE', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (26, N'http://erte.dge.mec.pt/seguranca-digital', NULL, 3, N'Segurança Digital', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (27, N'http://erte.dge.mec.pt/recursos-etwinning', NULL, 3, N'ETwinning', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (28, NULL, 10051, 2, N'Centros TIC', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (29, NULL, 10053, 3, N'Sugestões de leitura', NULL)
INSERT [dbo].[Cms_MenuItem] ([Id], [CustomLink], [EntityId], [MenuId], [Name], [ParentId]) VALUES (30, N'https://drive.google.com/open?id=0B3fmNnSNOcpMaTZnaWNrRzJZMFE', NULL, 2, N'Sugestões de Leitura', NULL)
SET IDENTITY_INSERT [dbo].[Cms_MenuItem] OFF
SET IDENTITY_INSERT [dbo].[Cms_Page] ON 

INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (17, N'<!-- TÍTULO DA PÁGINA-->

   <div class="row">
      <div class="container">
         <div class="alert alert-transparent bordered-bottom">
            <div class="row">
               <div class="col-md-9 col-sm-12">
                  <!-- left text -->
                  <h3>Ações de <span><strong>formação</strong></span> do CCTIC</h3>
                  <p class="font-lato weight-300 size-20 nomargin-bottom">
                     Oferta formativa.
                  </p>
               </div>
               <!-- /left text -->
            </div>
         </div>
      </div>
   </div>

   <!-- /FIM TÍTULO DA PÁGINA-->

   <!-- INÍCIO TÍTULO MODALIDADE OFICINA DE FORMAÇÃO-->
   
   <div class="row">
      <div class="container">
         <div class="heading-title heading-border heading-color mt-0">
            <h2 class="fs-18 fw-400">MODALIDADE OFICINA DE FORMAÇÃO</h2>
            <p class="fs-13">AÇÕES DE FORMAÇÃO CREDITADA</p>
         </div>
         
      </div>
   </div>

   <!-- /FIM TÍTULO MODALIDADE OFICINA DE FORMAÇÃO-->

   <!-- INICIO ITEM -->
   <section>
   <div class="row">
      <div class="container">
         <div class="heading-title heading-color mt-0">
              <h3 class="fs-20">A Realidade Aumentada em contexto de aprendizagem<b><strong><br></strong></b></h3>
            
         </div>
         <p>
            Apesar da abundância das tecnologias digital, a aprendizagem escolar continua a ser baseada em suportes analógicos (livro de texto e quadro). Urge adaptar a aprendizagem ao contexto da geração digital. A Realidade Aumentada pode ser utilizada em contexto de aprendizagem, fazendo uma ponte entre os suportes analógicos e os digitais contribuindo para uma aprendizagem multimédia. A formação tem como objetivo fundamentar capacitar os docentes para desenvolverem materiais pedagógicos com Realidade Aumentada associados a situações concretas de aprendizagem.
         </p>
      </div>
   </div>
   
    <div class="container">
     <div class="row">
         <div class="col-sm-6">
            <img class="img-fluid" alt="" src="user-content/realidade-aumentada.png" style="">
         </div>
         <div class="col-sm-6">
          
            <ul class="list-unstyled">
               <li><i class="fa fa-check"></i> <b>Formador:</b> Manuel Florindo Alves Meirinhos<b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Modalidade:</b> Oficina de Formação</li>
               <li><i class="fa fa-check"></i> <b>Destinatários:</b> Educadores de Infância e Professores dos Ensinos Básico e Secundário</li>
               <li><i class="fa fa-check"></i> <b>Calendarização prevista:</b> 3 sábados entre janeiro e fevereiro de 2018, a iniciar dia 20 de janeiro (a especificar brevemente)<b><strong><br></strong></b></li>
            </ul>
            <hr>
            <div class="row countTo-sm text-center">
               <div class="col-xs-6 col-sm-4">
                  <span class="countTo" style="color:#59BA41" data-speed="3000">30</span>
                  <h6>Nº HORAS</h6>
               </div>
               <div class="col-xs-6 col-sm-4">
                  <span>CCPFC/ACC-93061/17
                  </span>
                  <h6>REGISTO ACREDITAÇÃO</h6>
               </div>
               <div class="col-xs-6 col-sm-4">
                  <a href="">
                  <span>Inscrições encerradas
                  </span></a>										
                  <h6>INSCRIÇÃO</h6>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   </section>
   <!-- /FIM ITEM-->


   <!-- INÍCIO TÍTULO MODALIDADE CURSOS DE FORMAÇÃO-->   
    <hr>
   <div class="row">
      <div class="container">
         <div class="heading-title heading-border heading-color mt-0">
            <h2 class="fs-18 fw-400">MODALIDADE CURSOS DE FORMAÇÃO</h2>
            <p class="fs-13">AÇÕES DE FORMAÇÃO CREDITADA</p>
         </div>
        
      </div>
   </div>
   <!-- /FIM TÍTULO MODALIDADE CURSOS DE FORMAÇÃO-->

   <!-- INICIO ITEM-->
   <section>
      <div class="row">
      <div class="container">
         <div class="heading-title heading-color mt-0">
              <h3 class="fs-20">MOOC: uma tecnologia educativa do futuro<b><strong><br></strong></b></h3>
            
         </div>
         <p>
            A formação tem como objetivo propor os MOOC como ambientes de aprendizagem complementares dos processos educativos convencionais. A sua realização na modalidade de e-learning permitirá que professores distantes dos centros de formação possam realizar a oficina de formação à distância, levando-os a compreender na prática as vantagens de oferecer cursos massivos abertos online.
         </p>
      </div>
   </div>
    <div class="container">
     <div class="row">
         <div class="col-sm-6">
            <img class="img-fluid" alt="" src="user-content/mooc.png">
         </div>
         <div class="col-sm-6">
            
            <ul class="list-unstyled">
               <li><i class="fa fa-check"></i> <b>Formador:</b> Vítor Manuel Barrigão Gonçalves<b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Modalidade:</b> Oficina de Formação</li>
               <li><i class="fa fa-check"></i> <b>Destinatários:</b> Educadores de Infância e Professores dos Ensinos Básico e Secundário</li>
               <li> <b>N.º Horas Acreditadas:</b> 50h (em aprendizagem e-learning: 25 h síncronas e 25 h assíncronas)
<b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Calendarização prevista:</b> Março e Abril 2018<b><strong><br></strong></b></li>
            </ul>
            <hr>
            <div class="row countTo-sm text-center">
               <div class="col-xs-6 col-sm-4">
                  <span class="countTo" style="color:#59BA41" data-speed="3000">50</span>
                  <h6>Nº HORAS</h6>
               </div>
               <div class="col-xs-6 col-sm-4">
                  <span>CCPFC/ACC- 82576/15</span>
                  <h6>REGISTO ACREDITAÇÃO</h6>
               </div>
               <div class="col-xs-6 col-sm-4">
                  <a href="">
                  <span>Inscrições Encerradas
                  </span></a>										
                  <h6>INSCRIÇÃO</h6>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   </section>
   <!-- /FIM ITEM-->

 
   <!-- INÍCIO TÍTULO MODALIDADE CURSOS DE CURTA DURAÇÃO-->
   <hr>
   <div class="row">
      <div class="container">
         <div class="heading-title heading-border heading-color mt-0">
            <h2 class="fs-18 fw-400">MODALIDADE CURTA DURAÇÃO</h2>
            <p class="fs-13">AÇÕES DE FORMAÇÃO CREDITADA</p>
         </div>
    
      </div>
   </div>
   <!-- /FIM TÍTULO MODALIDADE CURSOS DE FORMAÇÃO-->

 <!-- INICIO ITEM-->
   <section>
    <div class="row">
      <div class="container">
         <div class="heading-title heading-color mt-0">
              <h3 class="fs-20">workshop: Histórias digitais em formato vídeo<b><strong><br></strong></b></h3>
            
         </div>
         <p>
            Este workshop pretende capacitar as/os educadoras/es e as/os professoras/es com competências à produção
de narrativas digitais em formato áudio e vídeo com vista à participação no concurso "Conta-nos uma história!" - 9.ª edição. O
workshop introduz a temática
das narrativas digitais e a exploração de softwares e plataformas da web 2.0 para a gravação, edição e produção
digital de vídeo.
         </p>
      </div>
   </div>
    <div class="container">
     <div class="row">
         <div class="col-sm-6">
            <img class="img-fluid" alt="" src="user-content/video.png">
         </div>
         <div class="col-sm-6">
            
            <ul class="list-unstyled">
               <li><i class="fa fa-check"></i> <b>Formador:</b> Raquel Patrício<b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Modalidade:</b> Workshop</li>
               <li><i class="fa fa-check"></i> <b>N.º Horas Acreditadas:</b> 4 <b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Calendarização prevista:</b> 21/02/2018 / 16h00-20h00<b><strong><br></strong></b></li>
            </ul>
            <hr>
            <div class="row countTo-sm text-center">
               <div class="col-xs-6 col-sm-4">
                  <span class="countTo" style="color:#59BA41" data-speed="3000">4</span>
                  <h6>Nº HORAS</h6>
               </div>
               
               <div class="col-xs-6 col-sm-4">
                  <a href="https://goo.gl/forms/nhxqQfBHIWQ5vMRv1">
                  <span>Ficha de Inscrição
                  </span></a>										
                  <h6>INSCRIÇÃO</h6>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   </section>
   <!-- /FIM ITEM-->
  
    <!-- INICIO ITEM-->
   <section>
    <div class="row">
      <div class="container">
         <div class="heading-title heading-color mt-0">
              <h3 class="fs-20"> Workshop: Histórias digitais em formato áudio<b><strong><br></strong></b></h3>
            
         </div>
         <p>
            Este workshop pretende capacitar as/os educadoras/es e as/os professoras/es com competências à produção
de narrativas digitais em formato áudio e vídeo com vista à participação no concurso "Conta-nos uma história!" - 9.ª edição. O
workshop introduz a temática das narrativas digitais e a exploração de softwares e plataformas da web 2.0 para a gravação,
edição e produção digital de áudio.
         </p>
      </div>
   </div>
    <div class="container">
     <div class="row">
         <div class="col-sm-6">
            <img class="img-fluid" alt="" src="user-content/audio.png">
         </div>
         <div class="col-sm-6">
            
            <ul class="list-unstyled">
               <li><i class="fa fa-check"></i> <b>Formador:</b> Manuel Florindo Alves Meirinhos<b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Modalidade:</b> Workshop</li>
               <li><i class="fa fa-check"></i> <b>N.º Horas Acreditadas:</b> 4 h<b><strong><br></strong></b></li>
               <li><i class="fa fa-check"></i> <b>Calendarização prevista:</b> 14/02/2018 / 14h00-18h00<b><strong><br></strong></b></li>
            </ul>
            <hr>
            <div class="row countTo-sm text-center">
               <div class="col-xs-6 col-sm-4">
                  <span class="countTo" style="color:#59BA41" data-speed="3000">3</span>
                  <h6>Nº HORAS</h6>
               </div>
             
               <div class="col-xs-6 col-sm-4">
                  <a href="https://goo.gl/forms/VszoBA3HjfPvRMnk2">
                  <span>Ficha de Inscrição
                  </span></a>										
                  <h6>INSCRIÇÃO</h6>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   </section>
   <!-- /FIM ITEM-->
    
   <!-- INICIO ITEM-->
   <div class="row">
      <div class="container">
         <div class="col-md-12">
            <h3 class="fs-20">Programação por blocos nas primeiras idades (Brevemente disponível)</h3> <br> 
            <h3 class="fs-20">Apps educativas (Brevemente disponível)</h3><br>
            <h3 class="fs-20">Cidadania digital (Brevemente disponível) (Brevemente disponível)</h3> <br>
            <h3 class="fs-20">Worhshops conforme as necessidades dos professores (Brevemente disponível)</h3> <br>
         </div>
         <!-- /FIM ITEM-->
      </div>
   </div>

', NULL, CAST(N'2017-12-09T16:48:22.7500498+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Formação', N'formacao', NULL, CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (21, N'<!-- INICIO TITULO ATIVIDADES-->
<div class="alert alert-transparent bordered-bottom">
   <div>
      <div class="row">
         <div class="col-md-9 col-sm-12">
            <!-- left text -->
            <h3>Lista de <span><strong>atividades</strong></span> do CCTIC</h3>
            <p class="font-lato weight-300 size-20 nomargin-bottom">
               Atividades em curso.
            </p>
         </div>
         <!-- /left text -->
      </div>
   </div>
</div>
<!-- /FIM TITULO ATIVIDADES -->

<!-- INICIO ATIVIDADE 1-->
<section>
   <div class="row nomargin">
      <div class="col-md-12 col-sm-12">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h2> Projeto Gen10S – Scratch no 2º Ciclo</h2>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Programação</a></li>
               <li><a href="#">Scratch</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
         <p>A iniciativa GEN10S é uma parceria entre a Google, a Associação espanhola Ayuda en Acción e a SIC Esperança.</p>
         <p class="font-lato size-18">Este projeto de âmbito nacional, é da Responsabilidade de Implementação do Instituto Politécnico de Setúbal. O projeto visa desenvolver competências de programação em crianças do 5.º e 6.º ano, promovendo a igualdade de oportunidades na área digital, reduzindo barreiras socioeconómicas e de género. O CCTIC ESE/IPB - Bragança encontra-se envolvido através de protocolo de colaboração, para a implementação do projeto em escolas da região.</p>
      </div>
   </div>
</section>
<!-- /FIM ATIVIDADE  1-->

<!-- INICIO ATIVIDADE  2-->
<section>
   <div class="row nomargin">
      <div class="col-md-12 col-sm-12">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h2>Projeto Ser Digital</h2>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Digital</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
         <p>O projeto “SerDigital” resulta de uma parceria entre o CCTIC e o Colégio Santa Clara, em Bragança. Ocorre durante quatro anos, acompanhando a turma atual do 1º ano até ao 4º ano de escolaridade. Visa integrar as tecnologias emergentes nos processos de aprendizagem e o desenvolvimento de competências digitais para a vivência na sociedade da informação.</p>
      </div>
   </div>
</section>
<!-- /FIM ATIVIDADE  2-->

<!-- INICIO ATIVIDADE  3-->
<section>
   <div class="row nomargin">
      <div class="col-md-12 col-sm-12">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h2>II Encontro Professores Inovadores com TIC</h2>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Encontro</a></li>
               <li><a href="#">Professores TIC</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
         <p>A segunda edição do Encontro Professores Inovadores com TIC, pretende reunir um conjunto de professores pró-ativos interessados na mudança de práticas pedagógicas integrando as tecnologias digitais emergentes nos processos de educação e aprendizagem escolar e extraescolar. O encontro visa o envolvimento de investigadores do ensino superior com professores dinâmicos e competentes na utilização pedagógica das TIC, desde o Pré-escolar ao Ensino Secundário (mais informação em Eventos).</p>
      </div>
   </div>
</section>
<!--/ FIM ATIVIDADE  3-->

<!-- INICIO ATIVIDADE  4-->
<section>
   <div class="row nomargin">
      <div class="col-md-12 col-sm-12">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h2> Criação do Laboratório de Inovação na Educação com TIC</h2>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Laboratório</a></li>
               <li><a href="#">Inovação</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
         <p>O laboratório de inovação na educação com TIC, pretende ser um espaço aberto à comunidade educativa, onde se possam observar e implementar as mais recentes metodologias de aprendizagem suportadas pelas tecnologias emergentes. </p>
      </div>
   </div>
</section>
<!--/ FIM ATIVIDADE  4-->

<!-- INICIO ATIVIDADE  5-->
<section>
   <div class="row nomargin">
      <div class="col-md-12 col-sm-12">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h2> Formação da comunidade educativa</h2>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Comunidade</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
         <p>A formação de professores para a utilização pedagógica e consciente das TIC é uma necessidade urgente e permanente.</p>
         <p class="font-lato size-18">O CCTIC procurará apresentar formações de acordo com as necessidades de desenvolvimento profissional dos docentes da região.</p>
      </div>
   </div>
</section>
<!--/ FIM ATIVIDADE  5-->', NULL, CAST(N'2017-12-11T21:58:38.4423425+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Atividades', N'atividades', NULL, CAST(N'2018-11-09T16:35:50.7750462+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (22, N'<!-- TÍTULO DA PÁGINA-->
<div class="alert alert-transparent bordered-bottom">
   <div>
      <div class="row">
         <div class="col-md-9 col-sm-12">
            <!-- left text -->
            <h3>Projetos de <span><strong>investigação</strong></span> do CCTIC</h3>
            <p class="font-lato weight-300 size-20 nomargin-bottom">
               Breve descrição dos projetos de investigação.
            </p>
         </div>
         <!-- /left text -->
      </div>
   </div>
</div>
<!-- /FIM TÍTULO DA PÁGINA-->

<!-- INÍCIO ITEM -->
<section>
   <div class="row nomargin">
      <div class="col-md-8 col-sm-8">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h4>A geração que não desliga: a utilização dos dispositivos móveis por jovens no distrito de Bragança.</h4>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Dispositivos móveis</a></li>
               <li><a href="#">Jovens</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
         
      </div>
      <div class="col-md-4 col-sm-4">
         <div class="panel panel-default">
            <div class="panel-body">
               <p class="font-lato size-18"></p>
               <ul class="portfolio-detail-list list-unstyled nomargin">
                  <li><span><i class="fa fa-user"></i>Autores:</span> </li>
                  <li><span><i class="fa fa-calendar"></i>Data final prevista:</span></li>
                  <li><span><i class="fa fa-lightbulb-o"></i>Tecnologias:</span> </li>
                  <li><span><i class="fa fa-link"></i>Website:</span> <a href="www.cctic.ipb.pt"></a></li>
               </ul>
            </div>
            <div class="panel-footer">
               <!-- Social Icons -->
               <a title="Facebook" class="social-icon social-icon-sm social-icon-transparent social-facebook" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-facebook"></i>
               <i class="icon-facebook"></i>
               </a>
               <a title="Twitter" class="social-icon social-icon-sm social-icon-transparent social-twitter" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-twitter"></i>
               <i class="icon-twitter"></i>
               </a>
               <a title="Google plus" class="social-icon social-icon-sm social-icon-transparent social-gplus" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-gplus"></i>
               <i class="icon-gplus"></i>
               </a>
               <a title="Linkedin" class="social-icon social-icon-sm social-icon-transparent social-linkedin" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-linkedin"></i>
               <i class="icon-linkedin"></i>
               </a>
               <a title="Pinterest" class="social-icon social-icon-sm social-icon-transparent social-pinterest" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-pinterest"></i>
               <i class="icon-pinterest"></i>
               </a>
               <!-- /Social Icons -->
            </div>
         </div>
      </div>
   </div>
</section>
<!--/FIM ITEM  -->

<!-- INÍCIO ITEM -->
<section>
   <div class="row nomargin">
      <div class="col-md-8 col-sm-8">
         <!-- Subtitle -->
         <div class="heading-title heading-border">
            <h4>Realidade aumentada em educação ambiental. </h4>
            <ul class="list-inline categories nomargin">
               <li><a href="#">Realidade aumentada</a></li>
               <li><a href="#">Educação Ambiental</a></li>
            </ul>
         </div>
         <!-- /Subtitle -->
        
      </div>
      <div class="col-md-4 col-sm-4">
         <div class="panel panel-default">
            <div class="panel-body">
               <p class="font-lato size-18"></p>
               <ul class="portfolio-detail-list list-unstyled nomargin">
                  <li><span><i class="fa fa-user"></i>Autores:</span> </li>
                  <li><span><i class="fa fa-calendar"></i>Data final prevista:</span></li>
                  <li><span><i class="fa fa-lightbulb-o"></i>Tecnologias:</span> </li>
                  <li><span><i class="fa fa-link"></i>Website:</span> <a href="www.cctic.ipb.pt"></a></li>
               </ul>
            </div>
            <div class="panel-footer">
               <!-- Social Icons -->
               <a title="Facebook" class="social-icon social-icon-sm social-icon-transparent social-facebook" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-facebook"></i>
               <i class="icon-facebook"></i>
               </a>
               <a title="Twitter" class="social-icon social-icon-sm social-icon-transparent social-twitter" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-twitter"></i>
               <i class="icon-twitter"></i>
               </a>
               <a title="Google plus" class="social-icon social-icon-sm social-icon-transparent social-gplus" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-gplus"></i>
               <i class="icon-gplus"></i>
               </a>
               <a title="Linkedin" class="social-icon social-icon-sm social-icon-transparent social-linkedin" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-linkedin"></i>
               <i class="icon-linkedin"></i>
               </a>
               <a title="Pinterest" class="social-icon social-icon-sm social-icon-transparent social-pinterest" href="#" data-toggle="tooltip" data-placement="top">
               <i class="icon-pinterest"></i>
               <i class="icon-pinterest"></i>
               </a>
               <!-- /Social Icons -->
            </div>
         </div>
      </div>
   </div>
</section>
<!-- /FIM ITEM -->', NULL, CAST(N'2017-12-11T22:02:47.6874354+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Investigação', N'investigacao', NULL, CAST(N'2018-01-22T17:24:02.1536357+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (23, N'<!--INICIO FACEBOOK PAGE APP-->

<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = ''https://connect.facebook.net/pt_PT/sdk.js#xfbml=1&version=v2.11'';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, ''script'', ''facebook-jssdk''));
</script>

<!--/FIM FACEBOOK PAGE APP-->

<!-- INICIO-->
<section>
    <div class="row">

        <!-- LEFT -->
        <div class="col-md-9">

            <img class="float-left img-fluid" style="max-width:500px" alt="" src="">

            <div class="heading-title heading-border heading-color">
                <h2 class="fs-18 fw-400">QUEM SOMOS</h2>
     
	   </div>

            <p>O CCTIC ESE/IPB – Bragança integra uma rede de Centros de Competência TIC apoiada pela Direção Geral de Educação (DGE) do Ministério da Educação. O CCTIC serve essencialmente de elo ligação e de interação com as escolas dos vários níveis de educação da região, em estreita colaboração com a Equipa de Recursos e Tecnologias Educativas (ERTE), da Direção-Geral da Educação (DGE).
                <br>
            </p>
            <p>Pretende, também ser um centro dinamizador da inovação na educação com TIC e da promoção da cidadania digital.</p>
            <p>Os Centros de Competência TIC (CCTIC) compreendem, ao momento, nove instituições que resultam de protocolos estabelecidos entre o Ministério da Educação e Ciência e as entidades em que estão integradas, na sua maioria instituições do ensino superior.</p>

            <div class="row mt-60">

                <div class="col-md-10">
                    <div class="heading-title heading-border  heading-color mt-0">
                        <h2 class="fs-18 fw-400">A NOSSA MISSÃO</h2>
                        <p class="fs-13">APOIAR AS ESCOLAS</p>
                    </div>

                    <p>Em termos de missão, os CCTIC, operam junto dos Agrupamentos e Escolas não agrupadas, de todos os graus de ensino, em estreita colaboração com a Equipa de Recursos e Tecnologias Educativas (ERTE), da Direção-Geral da Educação (DGE). A missão comum é o apoio às escolas, no que respeita à utilização educativa das tecnologias de informação e comunicação (TIC) e, em última instância, a promoção de um ensino inovador conducente à melhoria dos processos de ensino e aprendizagem.</p>
                    <p>As características mais marcantes dos CCTIC são, desta forma, o apoio de proximidade, a celeridade, a resposta concreta às necessidades específicas de cada escola e, por último, mas não de somenos importância, o apoio a iniciativas de cariz nacional, lançadas às escolas pelo Ministério da Educação.</p>

                </div>

              

            </div>

        </div>
        <!-- /LEFT -->

        <!-- RIGHT -->
        <div class="col-md-3">

            <div class="box-static box-border-top mb-60">
                <div class="box-title text-center">
                    <h4>Mais sobre o ERTE</h4>
                </div>
                <ul class="list-unstyled list-icons p-15 pb-0">
                    <li class="mb-20">
                        <i class="fa fa-check text-success fs-18"></i>
                        <span class="block bold fs-18">WebSite</span>
                        <small><a href="http://www.erte.dge.mec.pt" target="blank">http://www.erte.dge.mec.pt</a></small>
                    </li>
                    <li class="mb-20">
                        <i class="fa fa-check text-success fs-18"></i>
                        <span class="block bold fs-18">Email</span>
                        <small><a href="http://erte@dge.mec.pt" target="_blank">erte@dge.mec.pt</a></small>
                    </li>
                    <li class="mb-20">
                        <i class="fa fa-check text-success fs-18"></i>
                        <span class="block bold fs-18">Despacho</span>
                        <small><a href="https://dre.pt/application/file/75291470" target="_blank">Despacho n.º 11019/2016&nbsp;Diário da República, 2.ª série — N.º 176 de 13 de setembro</a></small>
                    </li>
                </ul>

                <hr>

                <p class="text-center fs-11 mb-10"></p>
            </div><small>

							<!-- FACEBOOK -->
						<div class="fb-page fb_iframe_widget" data-show-facepile="false" data-hide-cover="false" data-adapt-container-width="true" data-small-header="false" data-tabs="events,timeline" data-href="https://www.facebook.com/eseipb/" fb-xfbml-state="rendered" fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=&amp;container_width=0&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Feseipb%2F&amp;locale=pt_PT&amp;sdk=joey&amp;show_facepile=false&amp;small_header=false&amp;tabs=events%2Ctimeline"><span style="vertical-align: top; width: 0px; height: 0px; overflow: hidden;"><iframe name="f21105a50c1221a" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:page Facebook Social Plugin" style="border: medium none; visibility: visible; width: 0px; height: 0px;" src="https://www.facebook.com/v2.11/plugins/page.php?adapt_container_width=true&amp;app_id=&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FlY4eZXm_YWu.js%3Fversion%3D42%23cb%3Df36dd59cc900cb4%26domain%3Dcctic.ipb.pt%26origin%3Dhttp%253A%252F%252Fcctic.ipb.pt%252Ff3b369c112fa948%26relation%3Dparent.parent&amp;container_width=0&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Feseipb%2F&amp;locale=pt_PT&amp;sdk=joey&amp;show_facepile=false&amp;small_header=false&amp;tabs=events%2Ctimeline" width="1000px" height="1000px" frameborder="0"></iframe></span></div>							<hr>

							<!-- SOCIAL ICONS -->
							<div class="hidden-xs-down text-center">

							</div>

						</small></div><small>
						<!-- /RIGHT -->

					</small></div><small>

</small></section><small>
<!-- / FIM -->

<!-- / INICIO EQUIPA ELEMENTOS-->

<div class="mt-4">

                                                                <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">A EQUIPA DO CCTIC ESE/IPB<br></h2>
									<p class="fs-13">5 ELEMENTOS<br></p>
								</div>

								<!-- 
									Note: remove class="rounded" from the img for squared image!
								-->
								<ul class="row clearfix testimonial-dotted list-unstyled">
									<li class="col-md-4">
										<div class="testimonial">
											<figure class="float-left">
												<img class="rounded" alt="" src="">
											</figure>
											<div class="testimonial-content">
												<cite>
													Manuel Meirinhos
<span style="margin: 0px; line-height: 107%; font-family: &quot;Calibri&quot;,sans-serif; font-size: 11pt;">Coordenador</span>
<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> <a href="mailto:meirinhos@ipb.pt">meirinhos@ipb.pt</a></span>
												</cite>
											</div>
										</div>
									</li>
									<li class="col-md-4">
										<div class="testimonial">
											<figure class="float-left">
												<img class="rounded" alt="" src="">
											</figure>
											<div class="testimonial-content">
												<cite>
													Raquel Vaz Patrício
<span style="margin: 0px; line-height: 107%; font-family: &quot;Calibri&quot;,sans-serif; font-size: 11pt;">Operacional</span>
<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> <a href="mailto:raquel@ipb.pt">raquel@ipb.pt</a></span>
												</cite>
											</div>
										</div>
									</li>
									<li class="col-md-4">
										<div class="testimonial">
											<figure class="float-left">
												<img class="rounded" alt="" src="">
											</figure>
											<div class="testimonial-content">
																								<cite>
	Vitor Gonçalves<span style="margin: 0px; line-height: 107%; font-family: &quot;Calibri&quot;,sans-serif; font-size: 11pt;"> Equipa</span>
<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> <a href="mailto:vg@ipb.pt">vg@ipb.pt</a></span>
												</cite>
											</div>
										</div>
									</li>
                                                                        									<li class="col-md-4">
										<div class="testimonial">
											<figure class="float-left">
												<img class="rounded" alt="" src="">
											</figure>
											<div class="testimonial-content">
																								<cite>
													João Sérgio Sousa 
													<span style="margin: 0px; line-height: 107%; font-family: &quot;Calibri&quot;,sans-serif; font-size: 11pt;">Equipa</span>	
<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> <a href="mailto:jsergio@iob.pt">jsergio@iob.pt</a></span>											</cite>
											</div>
										</div>
									</li>
									<li class="col-md-4">
										<div class="testimonial">
											<figure class="float-left">
												<img class="rounded" alt="" src="">
											</figure>
											<div class="testimonial-content">
																								<cite>
													José Pires
													<span style="margin: 0px; line-height: 107%; font-family: &quot;Calibri&quot;,sans-serif; font-size: 11pt;">Equipa</span>
<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> <a href="mailto:jose.pires@ipb.pt">jose.pires@ipb.pt</a></span>
												</cite>
											</div>
										</div>
									</li>
								</ul>

							</div>

<!-- / FIM  EQUIPA ELEMENTOS--></small>', NULL, CAST(N'2017-12-11T22:09:40.9664780+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'sobre', N'sobre', NULL, CAST(N'2018-10-31T15:20:51.3134708+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (25, N'<!-- INICIO CENTROS TIC -->
<section>
   <div class="container">

      <!-- / INICIO LINHA 1-->
      <div class="row">
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://www.cctic.ipb.pt" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Instituto Politécnico de Bragança</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Escola Superior de Educação do Instituto Politécnico de Bragança.</p>
            </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://www.nonio.uminho.pt/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Universidade do Minho</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Universidade do Minho.</p>
            </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://www.ua.pt/cctic/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Universidade de Aveiro</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Universidade de Aveiro.</p>
            </div>
         </div>
      </div>
      <!-- / FIM LINHA 1-->

      <!-- / INICIO LINHA 2-->
      <div class="row">
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://www.softciencias.mocho.pt/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Softciências</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC Softciências.</p>
            </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://cctic.ese.ipsantarem.pt/cctic/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Instituto Politécnico de Santarém</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Escola Superior de Educação do instituto Politécnico de Santarém.</p>
            </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://c2ti.ie.ul.pt/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Universidade de Lisboa</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC do Instituto de Educação da Universidade de Lisboa.</p>
            </div>
         </div>
      </div>
      <!-- / FIM LINHA 2-->
      <!-- / INICIO LINHA 3-->
      <div class="row">
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://projectos.ese.ips.pt/cctic/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Instituto Politécnico de Setúbal</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Escola Superior de Educação do Instituto Politécnico de Setúbal.</p>
            </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://www.educom.pt/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Educom</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC EDUCOM.</p>
            </div>
         </div>
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://projectos.ese.ips.pt/cctic/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Instituto Politécnico de Setúbal</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Escola Superior de Educação do Instituto Politécnico de Setúbal.</p>
            </div>
         </div>
      </div>
      <!-- / INICIO LINHA 3-->

      <!-- / INICIO LINHA 4-->
      <div class="row">
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="http://www.minerva.uevora.pt/" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Universidade de Évora</h2>
               </a>
               <p class="text-muted">Centro de Competência TIC da Universidade de Évora.</p>
            </div>
         </div>
      </div>
      <!-- / FIM LINHA 4-->

   </div>
</section>
<!-- /FIM Centros TIC-->', NULL, CAST(N'2017-12-19T00:03:11.7899256+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Centros TIC', N'centrostic', NULL, CAST(N'2017-12-20T00:40:43.7932088+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (26, N'<section class="noborder">
				<div class="container">

					<div class="row">


						<div class="col-lg-4">

							<div class="hidden-xs margin-bottom-30">
								<h1 class="nomargin size-25">II Encontro Professores Inovadores com TIC</h1>
								<h6>ABRIL, 20 e 21 , 2018</h6>
							</div>

							<p>Instituto Politécnico de Bragança - Escola Superior de Educação de Bragança

CCTIC ESE/IPB – Bragança e CCTIC da Universidade do Minho. </p>


	<p>						
Creditado com 12 horas de formação. <br>
<b>Registo de acreditação:</b> 
CCPFC/ACC-100354/18
</p>
							<a href="/inscricao" class="btn btn-xlg btn-default btn-bordered btn-block margin-top-50">INSCRIÇÃO</a><br>
<a href="/submissao-de-posters" class="btn btn-xlg btn-default btn-bordered btn-block margin-top-50">SUBMISSÃO DE POSTERS</a>
							


						</div>

						<div class="col-lg-8">
							
							<div class="lightbox" data-plugin-options="{&quot;delegate&quot;: &quot;a&quot;, &quot;gallery&quot;: {&quot;enabled&quot;: true}}">
								
								<a href="http://cctic.ipb.pt/user-content/f3600b78-4dcf-4fb5-aa6a-a7756b542338.jpg" class="image-hover-plus image-hover-zoom image-hover-overlay margin-bottom-60">
									<img class="img-responsive" src="http://cctic.ipb.pt/user-content/f3600b78-4dcf-4fb5-aa6a-a7756b542338.jpg" alt="">
									<i class="icon-hover-plus"></i>
								</a>

								

							</div>

						</div>



					</div>



				</div>


<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">APRESENTAÇÃO<br></h2>
									
								</div>
<p>
<b>Seja um professor inovador com TIC!</b><br>

 O II Encontro Professores Inovadores com TIC pretende reunir um conjunto de professores pró-ativos interessados na mudança de práticas pedagógicas integrando as tecnologias digitais emergentes, nos processos de educação e aprendizagem escolar e extraescolar. O encontro visa o envolvimento de investigadores do ensino superior com professores dinâmicos e com competências de utilização pedagógica das TIC, do Pré-escolar ao Ensino Secundário. Visa também a participação dos dirigentes escolares da região, pois, são eles os principais agentes que podem tornar as escolas mais permeáveis à utilização pedagógica das TIC. O envolvimento de algumas turmas da região na realização de algumas atividades pedagógicas com as TIC, será uma das vertentes desta nova edição do evento. Estamos cientes que muita da transformação necessária nas escolas poderá residir no potencial inovador dos professores com competências para integração das TIC nas suas práticas educativas.<br><br>

Contamos consigo para as reflexões que pretendemos fazer, dia 20 e 21 de abril de 2018 no auditório da Escola Superior de Educação do Instituto Politécnico de Bragança.

Participe no encontro! 
</p>
</div>
</div>

<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">OBJECTIVOS<br></h2>
									
								</div>
<p>
- Discutir a prática educativa com TIC;<br>
- Refletir as potencialidades educativas das tecnologias de informação e comunicação emergentes;<br>
- Partilhar projetos e materiais educativos;<br>
- Refletir o perfil de competências do professor inovador com TIC;<br>
- Debater formas de inovar com TIC em contexto de aprendizagem escolar.<br>
</p>
</div>
</div>
<div class="row">
<div class="col-md-12">
   <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">PROGRAMA</h2>
</div>

<p><b>DIA 20 DE ABRIL</b></p><p><b>PARA CRIANÇAS</b></p><p><b>10:30 – Demonstração prática para turmas</b></p><p><b>- Robótica no Pré-escolar</b><br>Orientadoras: Vanessa Mendes e Ângela Viegas<br><b>- Programação no 1º Ciclo</b><br>Orientadores: Miguel Figueiredo e João Torres<br><b>- Hologramas com laser</b><br>Orientador: José Brôco<br></p><p><br><b>PARA PROFESSORES: OFICINAS TIC</b><br><br><b>14:00 – Receção e registo dos professores nas oficinas</b><br><b>14:30 – Oficinas TIC inovadoras para professores (sessão 1)</b><br><br><b>Oficina 1 (Sala 1.10):</b><br><b>A utilização de recursos de programação e robótica no desenvolvimento curricular</b><br><b>Resumo:</b> Nesta oficina pretende-se explorar vários recursos associados à programação e robótica (OpenRoberta, CodeCombat, micro:bits, etc) que permitam integrar conceitos curriculares nas diferentes áreas disciplinares.<br><b>Formador:</b> Luís Miguel Folgado Ferreira <br><br><b>Oficina 2 (Sala 1.44): <br>Contar histórias no palco digital </b><br><b>Resumo:</b> Neste Workshop pretende-se explorar os princípios e técnicas do Storytelling associados às tecnologias digitais. A sessão tem como principal objetivo promover, nos docentes, o&nbsp; aprofundamento de competências para que se sintam motivados a levar os seus alunos a criar narrativas e a desenvolver as suas competências digitais sobretudo de edição de áudio e de vídeo.<br>Formadora: Milena Jorge<br><br><b>Oficina 3 (Sala 0.16):</b><br><b>O MOOC como extensão da sala de aula</b><br><b>Resumo:</b> Este workshop visa, por um lado, apresentar os MOOC como ambientes de aprendizagem complementares dos processos educativos convencionais. Pelo outro, incide no desenvolvimento de um MOOC enquanto uma extensão virtual da sala de aula ou mesmo um contributo para facilitar estratégias de sala de aula invertida.<br><b>Formador:</b> Vítor Gonçalves<br><br><b>16:00</b> – Intervalo<br><b>16.30 - Oficinas TIC inovadoras para professores (sessão 2)</b><br><br><b>Oficina 4 (Sala 1.10): </b><br><b>Programar e Aprender com Scratch</b><br><b>Resumo:</b> Nesta sessão prática serão trabalhados exemplos concretos que favorecem algumas aprendizagens através do desenvolvimento de projetos com Scratch. Pretende-se que os participantes adquiram conhecimentos básicos sobre a linguagem de programação e que reconheçam as suas potencialidades tanto para a exploração de conceitos da área da programação e do pensamento computacional como para a sua integração com outras áreas de conhecimento.<br><b>Formadores: </b>João Torres<br><br><b>Oficina 5 (Sala 1.44): </b><br>Aprender a programar de forma divertida.<br><b>Resumo:</b> Neste Workshop serão exploradas atividades de programação sem recurso a computadores ou outros dispositivos e plataformas no âmbito da programação (Code.org e Run marco), com a finalidade de promover práticas pedagógicas partilhadas e reflexivas, propiciando a articulação com várias disciplinas<br><b>Formadora: </b>Vanessa Mendes<br><br><b>Oficina 6 (Sala 0.16): </b><br>A robótica na promoção do sucesso das aprendizagens<br><b>Resumo:</b> Este workshop tem como finalidade explorar funcionalidades e potencialidades de diferentes robots e a sua integração no desenvolvimento de atividades no âmbito da programação e robótica.<br><b>Formadora:</b> Ângela Viegas<br><br><b>18:00 – Encerramento dos trabalhos do dia 20 de abril. </b><br><br><b>DIA 21 DE ABRIL</b><br><br><b>09:00 – Sessão de Abertura</b><br>&nbsp;&nbsp; &nbsp;Diretor-geral da Educação <br>&nbsp;&nbsp; &nbsp;Presidente do IPB<br>&nbsp;&nbsp; &nbsp;Diretor da ESE<br>&nbsp;&nbsp; &nbsp;Coordenadores dos CCTIC ESE/IPB e da Universidade do Minho<br><br><b>09:30 – Comunicação do Diretor-geral da Educação</b><br><br><b>10:00 – Conferência: “Inovar com TIC” - Maria João Gomes – Universidade do Minho</b><br><br><b>10:30</b> – Intervalo <br><br><b>11:00 – Painel de debate: Programação e robótica nas primeiras idades</b><br>&nbsp;&nbsp; &nbsp; <br>Luís Valente (moderador) – Universidade do Minho<br>Maribel Miranda-Pinto - Instituto Politécnico Viseu (ESE)<br>Miguel Figueiredo – Instituto Politécnico de Setúbal (ESE)<br>Nelson Figueiredo – Instituto Politécnico de Bragança<br><br><b>12:30</b> – Almoço <br><br><b>14:30 – Painel de debate: “A geração que não desliga: desafios educativos”</b><br>António Osório (moderador) – Universidade do Minho<br>Manuel Meirinhos – Instituto Politécnico de Bragança - ESE<br>Andreia Afonso – Agrupamento de Escolas Miguel Torga<br><br>16:00 – Sessão de posters<br><br><b>17:00 – Painel de debate: “Ser professor inovador com TIC na Escola”</b><br>Milena Jorge (moderadora) DGE - ERTE<br>Luísa Lima – Agrupamento de Escolas Emídio Garcia (Bragança)<br>António Ramos – Agrupamento de Escolas Abade de Baçal (Bragança)<br>Heitor Afonso – Agrupamento de Escolas Afonso III (Vinhais)<br><br><b>18:30 – Sessão de Encerramento </b><br><br></p>

<p>





</p>
									
								</div>
<p>



</p>
</div>



<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">INSCRIÇÕES<br></h2>
									
								</div>
<p>
Este evento é gratuito mas de inscrição obrigatória.
A data limite para a inscrição é 15 de abril de 2018, podendo terminar antes de acordo com a lotação do auditório.</p><p>
O Encontro aceita trabalhos de boas práticas e de descrição de projetos, em formato poster, submetidos no formulário de inscrição do evento.
<b>O custo por poster é de 20 Euros</b>.</p><p> O pagamento deve ser efetuado por transferência bancária, após aceitação dos posters para a seguinte referência:<br><br>

<b>DA CONTA: IPB - Congressos e Seminários </b><br>
<b>NIB DA CONTA:</b> 0781 0112 00000007883 90 <br>
<b>SWIFT BIC CODE:</b> IGCPPTPL<br>
<b>IBAN :</b> PT50 0781 0112 00000007883 90 <br>
<b>DESCRIÇÃO:</b> IIPITIC<br>

Os posters serão publicados em atas do evento.
Normas para posters: <br>
- Um resumo de 700 palavras a enviar como anexo para avaliação por pares.<br>
- Após aceitação o poster deve ter o formato A2.<br>
</p>
</div>
</div>
<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">COMISSÃO CIENTÍFICA<br></h2>
									
								</div>
<p>
Ana García Valcarcel (Universidade de Salamanca, Espanha)<br>
António Osório (Universidade do Minho, Portugal)<br>
Catarina Liane Araújo(Universidade do Minho)<br>
Henrique Gil (Instituto Politécnico de Castelo Branco, Portugal)<br>
João Correia de Freitas (Instituto de Educação, da Universidade de Lisboa, Portugal)<br>
Luís Valente (Universidade do Minho, Portugal)<br>
M. Carmen Martinez (Universidad de Jaén, Espanha)<br>
Manuel Meirinhos (Instituto Politécnico de Bragança, Portugal)<br>
Maria João Gomes (Universidade do Minho, Portugal)<br>
Maribel Miranda  (Instituto Politécnico de Viseu, Portugal)<br>
Neuza Pedro (Instituto de Educação, da Universidade de Lisboa, Portugal)<br>
Raquel Patrício (Instituto Politécnico de Bragança, Portugal)<br>
Vanessa Mendes (Agrupamento de Escolas Mosteiro e Cávado, Portugal)<br>
Vítor Manuel Barrigão Gonçalves (Instituto Politécnico de Bragança, Portugal)<br>


</p>
</div>
</div>

<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">CONTACTOS<br></h2>
									
								</div>
<p>
Escola Superior de Educação do Instituto Politécnico de Bragança<br>
Campus de Santa Apolónia, Apartado 1101<br>
5301 – 856 Bragança<br>
<b>Telefone:</b> 273 330 650<br>
<b>Email:</b> <a href="http://prof.inovadores.tic@gmail.com" target="_blank">prof.inovadores.tic@gmail.com</a><br>



</p>
</div>
</div>
<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">ORGANIZAÇÃO<br></h2>
									
								</div>
<p>
<b>CCTIC ESE/IPB – Bragança<br>
CCTIC da Universidade do Minho<br>



</b><br></p><b>
</b></div><b>
</b></div>
			</section>

', NULL, CAST(N'2017-12-19T19:44:51.4774363+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'II EPITIC', N'ii-epitic', NULL, CAST(N'2018-05-23T10:48:16.9500160+01:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (27, N'<p>sadasd<br></p>', NULL, CAST(N'2017-12-19T19:49:14.8390211+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Sugestões de leitura', N'sugestoes-leitura', NULL, CAST(N'2017-12-19T19:49:14.8390291+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (28, N'  
<!-- INICIO TITULO ATIVIDADES-->
<div class="alert alert-transparent bordered-bottom">
   <div>
      <div class="row">
         <div class="col-md-9 col-sm-12">
            <!-- left text -->
            <h3>Formulário de <span><strong>Inscrição</strong></span> </h3>
            <p class="font-lato weight-300 size-20 nomargin-bottom">
               II Encontro Professores Inovadores com TIC
            </p>
         </div>
         <!-- /left text -->
      </div>
   </div>
</div>
<!-- /FIM TITULO ATIVIDADES -->

<h3 class="text-center"><br></h3>
       <div class="text-center"> <iframe src="https://docs.google.com/forms/d/e/1FAIpQLScG_wCFlGONTui2_1mD3OWUK299thdUICrZkCHceq6C2i57pg/viewform?embedded=true" marginheight="0" marginwidth="0" align="middle" width="800" height="1080" frameborder="0">A carregar...</iframe></div> ', NULL, CAST(N'2018-01-19T10:29:13.4018507+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Inscrição', N'inscricao', NULL, CAST(N'2018-01-19T10:33:57.3223494+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (29, N'  
<!-- INICIO TITULO ATIVIDADES-->
<div class="alert alert-transparent bordered-bottom">
   <div>
      <div class="row">
         <div class="col-md-9 col-sm-12">
            <!-- left text -->
            <h3>Formulário de <span><strong>Submissão de Posters</strong></span> </h3>
            <p class="font-lato weight-300 size-20 nomargin-bottom">
               II Encontro Professores Inovadores com TIC
            </p>
         </div>
         <!-- /left text -->
      </div>
   </div>
</div>
<!-- /FIM TITULO ATIVIDADES -->

<h3 class="text-center"><br></h3>
       <div class="text-center"> <iframe src="https://docs.google.com/forms/d/e/1FAIpQLScboiyjWdHFki5rG7lujPFkhuWGW4vOQmcS0bCXcAVMZ9Mm9g/viewform?usp=sf_link?embedded=true" marginheight="0" marginwidth="0" width="800" height="1080" frameborder="0" align="middle">A carregar...</iframe></div> ', NULL, CAST(N'2018-03-06T14:35:47.3996553+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Submissão de Posters', N'submissao-de-posters', NULL, CAST(N'2018-03-06T14:44:29.8757730+00:00' AS DateTimeOffset), N'sa', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (30, N'<section class="noborder">
				<div class="container">

					<div class="row">


						<div class="col-lg-4">

							<div class="hidden-xs margin-bottom-30">
								<h1 class="nomargin size-25">TIC@Portugal’18</h1>
								<h6>JULHO, 06, 2018</h6>
							</div>

							<p>Iniciativa da Associação EDUCOM – APTE (Associação Portuguesa de Telemática Educativa), através do seu Centro de Competência TIC e do seu Centro de Formação de Professores, a edição 2018 do Encontro TIC@Portugal. </p>


	<p>						
O TIC@Portugal’18 possui tanto sessões próprias em cada local de realização, como sessões partilhadas por videoconferência, em que todos os participantes estarão reunidos num vasto “auditório virtual”, na reflexão em torno das práticas com as TIC nas escolas. Este ano, intitulado: <strong> Das Aprendizagens Essenciais ao Perfil dos Alunos – as TIC no currículo. </strong> <br>

</p>
							<a href="/inscricao-ticportugal18" class="btn btn-xlg btn-default btn-bordered btn-block margin-top-50">INSCRIÇÃO</a><br>
<a href="/submissao-de-comunicaçoes-de-boas-práticas" class="btn btn-xlg btn-default btn-bordered btn-block margin-top-50" target="blank">Submissão de comunicações de boas práticas</a>
							


						</div>

						<div class="col-lg-8">
							
							<div class="lightbox" data-plugin-options="{&quot;delegate&quot;: &quot;a&quot;, &quot;gallery&quot;: {&quot;enabled&quot;: true}}">
								
								<a href="http://cctic.ipb.pt/user-content/Tic@Portugal18.png" class="image-hover-plus image-hover-overlay margin-bottom-60">
									<img class="img-responsive" src="http://cctic.ipb.pt/user-content/Tic@Portugal18.png" alt="" style="">
									<i class="icon-hover-plus"></i>
								</a>

								

							</div>

						</div>



					</div>



				</div>




<br>

<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">INSCRIÇÕES<br></h2>
									
								</div>
<p>
Este evento é gratuito mas de inscrição obrigatória.
A data limite para submissão de boas práticas é a <b> 6 de junho de 2018 </b>.</p>
<p>
Para professores, em Bragança, o encontro funcionará como <b>ação de curta duração (6h)</b>.
</p><p>
Inscrição em Bragança é grátis, mas obrigatória:</p><p> 
<b>Data limite de inscrição no evento:</b> 30 de junho de 2018
</p>

<br>
<p></p>



</div>
</div>

<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">PROGRAMA GERAL<br></h2>
									
								</div>
<p>
<b>09h00 às 09h30 | Receção dos participantes</b></p><p>

<b>09h30 às 10h00 | Sessão de Abertura (videoconferência)</b></p><p>

Monte de Caparica:</p><ul><li>

    Director da FCT-UNL, Virgílio Cruz Machado; Presidente da Educom, João Correia de Freitas.</li></ul><p>

Loulé:</p><ul><li>

    Delegado Regional do Algarve da Direção-Geral dos Estabelecimentos Escolares, Francisco Marques; Presidente da CM de Loulé, Vitor Aleixo; Diretor da Escola Secundária de Loulé, Alexandre Costa.</li></ul><p>

<b>10h00 às 10h45 | Conferência Plenária</b> por <b>Maria João Horta</b>, Subdiretora-Geral da Educação</p><p>

<b>10h45 às 11h00 | Intervalo </b></p><p>

<b>11h00 às 11h25 | Painel Aprendizagens Essenciais e as TIC (videoconferência)</b></p><p>

<b>11h30 às 13h00 | Comunicações e Partilha de Boas Práticas (</b>programa local<b>)<br></b></p><ul><li><span style="font-weight: bold;"><span style="color: rgb(0, 49, 99);">A UTILIZAÇÃO DE UMA SIMULAÇÃO COMPUTACIONAL EM UMA ATIVIDADE DE ENSINO SOBRE O CONCEITO DE CAMPO ELÉTRICO</span></span>, por Guilherme Bittencourt et al.</li><li><span style="font-weight: bold;"><span style="color: rgb(0, 49, 99);">EXPLORAÇÃO DE ATIVIDADES INTERATIVAS MULTIMÉDIA NO 1.º CICLO DO ENSINO BÁSICO</span></span>, por Manuel Meirinhos, Raquel Patrício e Paula Vaz</li><li><span style="font-weight: bold;"><span style="color: rgb(0, 49, 99);">O MICROSOFT MATHEMATICS NAS AULAS DE MATEMÁTICA</span></span>, por Paula Barros, José Fernandes e Cláudia Araújo</li><li><span style="font-weight: bold;"><span style="color: rgb(0, 49, 99);">DISPOSITIVOS MÓVEIS NA SALA DE AULA – PERSPETIVAS DE ABORDAGEM NA DISCIPLINA DE PORTUGUÊS</span></span>, por Luísa Diz Lopes – Agrupamento de Escolas Abade de Baçal<br></li></ul><p>

<b>13h00 às 14h30 | Almoço livre</b></p><p>

<b>14h30 às 16h30 | Sessões práticas (programa local)<br></b></p><p>

<span style="color: rgb(0, 49, 99);"><b>PROGRAMAÇÃO POR BLOCOS E ROBÓTICA NAS PRIMEIRAS IDADES</b></span>, por Manuel Meirinhos<br><span style="font-weight: bold;"><span style="color: rgb(0, 49, 99);">SCRATCH NO ENSINO BÁSICO</span></span>, por João Sérgio Sousa e M.ª Raquel Patrício<br><span style="font-weight: bold;"><span style="color: rgb(0, 49, 99);">ADULET – EXPERIÊNCIAS DE USO DE TECNOLOGIAS EDUCATIVAS</span></span>, por Vítor Gonçalves</p><p>

<b>16h30 às 17h00 | Intervalo</b></p><p>

<b>17h00 às 17h45 | Mesa Redonda: coordenadores dos CCTIC participantes (videoconferência)</b></p><p>

<b>17h45 às 18h00 | Encerramento (videoconferência)</b></p><p>

Monte de Caparica:</p><ul><li>

    Presidente da Educom, João Correia de Freitas.</li></ul><p>

Loulé:</p><ul><li>

    Vereadora da Educação da CM Loulé, Ana Machado; Vice-presidente da Educom, Fernando Reis.


</li></ul>

<br>
<p></p>



</div>
</div>


<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400">CONTACTOS<br></h2>
									
								</div>
<p>
Escola Superior de Educação do Instituto Politécnico de Bragança<br>
Campus de Santa Apolónia, Apartado 1101<br>
5301 – 856 Bragança<br>
<b>Telefone:</b> 273 330 650<br>




</p>
</div>
</div>
<div class="row">
<div class="col-md-12">
                       <div class="heading-title heading-border-bottom heading-color">
									<h2 class="fs-18 fw-400"><br></h2>
									
								</div>
<p><br></p><b>
</b></div><b>
</b></div>
			</section>

', NULL, CAST(N'2018-05-23T10:52:06.4420191+01:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'TIC@Portugal’18', N'ticportugal18', NULL, CAST(N'2018-07-04T17:23:42.6461039+01:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (31, N'  
<!-- INICIO TITULO -->
<div class="alert alert-transparent bordered-bottom">
   <div>
      <div class="row">
         <div class="col-md-9 col-sm-12">
            <!-- left text -->
            <h3>Formulário de <span><strong>Inscrição</strong></span> </h3>
            <p class="font-lato weight-300 size-20 nomargin-bottom">
              TIC@Portugal''18 Bragança
            </p>
         </div>
         <!-- /left text -->
      </div>
   </div>
</div>
<!-- /FIM TITULO -->

<h3 class="text-center"><br></h3>
       <div class="text-center"> <iframe src="https://goo.gl/forms/OZejgO8MqmVbfwf22" marginheight="0" marginwidth="0" width="800" height="1080" frameborder="0" align="middle">A carregar...</iframe></div> ', NULL, CAST(N'2018-05-23T11:57:25.1845020+01:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'inscricao-ticportugal18', N'inscricao-ticportugal18', NULL, CAST(N'2018-05-23T11:59:31.8567245+01:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (32, N'  
<!-- INICIO TITULO -->
<div class="alert alert-transparent bordered-bottom">
   <div>
      <div class="row">
         <div class="col-md-9 col-sm-12">
            <!-- left text -->
            <h3>Formulário de <span><strong>Inscrição</strong></span> </h3>
            <p class="font-lato weight-300 size-20 nomargin-bottom">
              TIC@Portugal''18 Bragança
            </p>
         </div>
         <!-- /left text -->
      </div>
   </div>
</div>
<!-- /FIM TITULO -->

<h3 class="text-center"><br></h3>
       <div class="text-center"> <iframe src="https://goo.gl/forms/iA0rRcYyGWv4TXmh2" marginheight="0" marginwidth="0" width="800" height="1080" frameborder="0" align="middle">A carregar...</iframe></div> ', NULL, CAST(N'2018-05-23T14:57:59.2475311+01:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'Submissão de comunicações de boas práticas', N'submissao-de-comunicaçoes-de-boas-práticas', NULL, CAST(N'2018-05-24T16:14:45.0025742+01:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
INSERT [dbo].[Cms_Page] ([Id], [Body], [CreatedById], [CreatedOn], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (37, N'<p>assada<br></p>', NULL, CAST(N'2018-11-09T16:39:25.8596322+00:00' AS DateTimeOffset), 0, 1, NULL, NULL, NULL, N'teste', N'teste', NULL, CAST(N'2018-11-09T16:39:25.8596234+00:00' AS DateTimeOffset), N'sad', CAST(N'2018-11-06T16:27:45.6903580+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[Cms_Page] OFF
SET IDENTITY_INSERT [dbo].[Contacts_Contact] ON 

INSERT [dbo].[Contacts_Contact] ([Id], [Address], [ContactAreaId], [Content], [CreatedOn], [EmailAddress], [FullName], [IsDeleted], [PhoneNumber]) VALUES (1, N'ihjh', 1, N'yfiikukug', CAST(N'2017-12-06T00:00:00.0000000+00:00' AS DateTimeOffset), N'admin@SimplCommerce.com', N'Shop Admins', 1, N'963884359')
SET IDENTITY_INSERT [dbo].[Contacts_Contact] OFF
SET IDENTITY_INSERT [dbo].[Contacts_ContactArea] ON 

INSERT [dbo].[Contacts_ContactArea] ([Id], [IsDeleted], [Name]) VALUES (1, 0, N'Dúvidas Sugestões')
INSERT [dbo].[Contacts_ContactArea] ([Id], [IsDeleted], [Name]) VALUES (2, 1, N'jj')
SET IDENTITY_INSERT [dbo].[Contacts_ContactArea] OFF
SET IDENTITY_INSERT [dbo].[Core_AppSetting] ON 

INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (2, N'Global.AssetVersion', N'1.0')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (3, N'News.PageSize', N'4')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (4, N'GoogleAppKey', N'AIzaSyBmsQV2FUo6g52R1kovLyfvaYm4FryNs4g')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (5, N'SmtpServer', N'mail.ipb.pt')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (6, N'SmtpPort', N'587')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (7, N'SmtpUsername', N'')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (8, N'SmtpPassword', N'')
INSERT [dbo].[Core_AppSetting] ([Id], [Key], [Value]) VALUES (9, N'Theme', N'MyThemeFixed')
SET IDENTITY_INSERT [dbo].[Core_AppSetting] OFF
SET IDENTITY_INSERT [dbo].[Core_Entity] ON 

INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (6, 17, 1, N'Home', N'home')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (8, 23, 4, N'sobre', N'sobre')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (18, 1, 6, N'Eventos', N'eventos-2')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (19, 1, 7, N'A ESEB já é Centro TIC', N'ese-centro-tic')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (20, 2, 6, N'Formação', N'formacao-2')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10018, 2, 7, N'PROBÓTICA', N'probotica')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10019, 3, 7, N'II Encontro Professores Inovadores com TIC', N'II Encontro Professores Inovadores com TIC')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10020, 21, 4, N'Atividades', N'atividades')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10039, 1, 6, N'Noticias', N'noticias')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10041, 17, 4, N'Formação', N'formacao')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10046, 21, 4, N'Atividades', N'atividades')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10047, 22, 4, N'Investigação', N'investigacao')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10048, 23, 4, N'sobre', N'sobre')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10051, 25, 4, N'Centros TIC', N'centrostic')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10052, 26, 4, N'II EPITIC', N'ii-epitic')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10053, 27, 4, N'Sugestões de leitura', N'sugestoes-leitura')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10055, 28, 4, N'Inscrição', N'inscricao')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10056, 29, 4, N'Submissão de Posters', N'submissao-de-posters')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10057, 30, 4, N'TIC@Portugal’18', N'ticportugal18')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10058, 31, 4, N'inscricao-ticportugal18', N'inscricao-ticportugal18')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10059, 32, 4, N'Submissão de comunicações de boas práticas', N'submissao-de-comunicaçoes-de-boas-práticas')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10060, 7, 7, N'TIC@Portugal’18', N'tic-portugal-2018-news')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10064, 8, 7, N'TIC e Currículo - Formação de Professores', N'tic_curriculo')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10070, 14, 7, N'Líderes Digitais 2018/2019', N'lideres_digitais_18_19')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10074, 37, 4, N'teste', N'teste')
INSERT [dbo].[Core_Entity] ([Id], [EntityId], [EntityTypeId], [Name], [Slug]) VALUES (10078, 18, 7, N'sadsadsad', N'sadsadsad')
SET IDENTITY_INSERT [dbo].[Core_Entity] OFF
SET IDENTITY_INSERT [dbo].[Core_EntityType] ON 

INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [Name], [RoutingAction], [RoutingController]) VALUES (1, 1, N'Category', N'CategoryDetail', N'Category')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [Name], [RoutingAction], [RoutingController]) VALUES (4, 1, N'Page', N'PageDetail', N'Page')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [Name], [RoutingAction], [RoutingController]) VALUES (6, 1, N'NewsCategory', N'NewsCategoryDetail', N'NewsCategory')
INSERT [dbo].[Core_EntityType] ([Id], [IsMenuable], [Name], [RoutingAction], [RoutingController]) VALUES (7, 0, N'NewsItem', N'NewsItemDetail', N'NewsItem')
SET IDENTITY_INSERT [dbo].[Core_EntityType] OFF
SET IDENTITY_INSERT [dbo].[Core_Media] ON 

INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (1, NULL, N'c162739b-1911-4196-957c-b35ee144d564.png', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (2, NULL, N'f3600b78-4dcf-4fb5-aa6a-a7756b542338.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (3, NULL, N'16728e94-8ec1-40ee-8d55-e9a42256b737.PNG', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (4, NULL, N'b5663935-9432-43fa-99fa-e2fc0384185a.png', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (5, NULL, N'ccf2146f-99bd-4870-a366-a4c5c2fd21a1.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (6, NULL, N'8698e9cd-271f-405f-8cd9-bc46c6d4f410.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (7, NULL, N'2181671d-a1e0-4f0d-9a62-63a53e1edee7.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (8, NULL, N'63ee38f8-e194-4f78-9255-125c6df4ec9e.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (9, NULL, N'ea4079ce-4624-4b2e-9dbb-3b42c70eb65f.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (10, NULL, N'1e9bd4e8-050c-43bd-a46d-58e902499eda.jpg', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (11, NULL, N'3a74e1b8-1dcc-437e-af21-b82aa4998fb6.png', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (12, NULL, N'cabff212-2645-4511-b7b8-f75e7c78da1d.png', 0, 0)
INSERT [dbo].[Core_Media] ([Id], [Caption], [FileName], [FileSize], [MediaType]) VALUES (13, NULL, N'c819bee6-8545-499c-9cf5-ddd5a58dc5dc.png', 0, 0)
SET IDENTITY_INSERT [dbo].[Core_Media] OFF
SET IDENTITY_INSERT [dbo].[Core_Role] ON 

INSERT [dbo].[Core_Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (1, N'bd3bee0b-5f1d-482d-b890-ffdc01915da3', N'admin', N'ADMIN')
INSERT [dbo].[Core_Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (2, N'bd3bee0b-5f1d-482d-b890-ffdc01915da3', N'Gestor Conteúdos', N'GESTOR CONTEUDOS')
INSERT [dbo].[Core_Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (3, N'bd3bee0b-5f1d-482d-b890-ffdc01915da3', N'Convidado', N'OUTRO')
INSERT [dbo].[Core_Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (4, N'bd3bee0b-5f1d-482d-b890-ffdc01915da3', N'outro', N'OUTRO')
SET IDENTITY_INSERT [dbo].[Core_Role] OFF
SET IDENTITY_INSERT [dbo].[Core_User] ON 

INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (1, 0, N'c6165213-81e0-4765-a4e1-d8b35ef6234d', CAST(N'2016-05-12T23:44:13.2966667+00:00' AS DateTimeOffset), N'admin@SimplCommerce.com', 0, N'Shop Admins', 1, 1, NULL, N'ADMIN@SIMPLCOMMERCE.COM', N'ADMIN@SIMPLCOMMERCE.COM', N'AQAAAAEAACcQAAAAEAEqSCV8Bpg69irmeg8N86U503jGEAYf75fBuzvL00/mr/FGEsiUqfR0rWBbBUwqtw==', NULL, 0, N'9e87ce89-64c0-45b9-8b52-6e0eaa79e5b7', 0, CAST(N'2016-05-12T23:44:13.2966667+00:00' AS DateTimeOffset), N'1fff10ce-0231-43a2-8b7d-c8db18504f65', N'admin@SimplCommerce.com')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (7, 0, N'15509914-a82b-4fdc-a508-e99696e80139', CAST(N'2017-12-06T14:36:28.3236881+00:00' AS DateTimeOffset), N'roger.ipb@outlook.pt', 0, N'Rogério Carvalho', 0, 1, NULL, N'ROGER.IPB@OUTLOOK.PT', N'ROGER.IPB@OUTLOOK.PT', N'AQAAAAEAACcQAAAAEAPG5/OC4ufYvfBa74gYQXlh39QxrNl6FeQrRkJF2CFYSIhz6sASeteuOXq6hcmNZQ==', NULL, 0, N'4ba0fbcd-43e9-4227-bb13-99dd87de2ea6', 0, CAST(N'2017-12-06T14:36:28.3236952+00:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'roger.ipb@outlook.pt')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (8, 0, N'fbd19a73-2747-4e16-992a-8c7cee2c4546', CAST(N'2017-12-06T14:47:03.9956399+00:00' AS DateTimeOffset), N'mrcc@outlook.pt', 0, N'sadsadsa', 1, 1, NULL, N'MRCC@OUTLOOK.PT', N'MRCC@OUTLOOK.PT', N'AQAAAAEAACcQAAAAEDO2ilu++EqMvPp5D2msdInVTVpY5T6c5DVY1P2O4gOPA0rqVtFGJB0Atw+s/2dolA==', NULL, 0, N'7d968873-aadc-4265-876c-1a8994ee5e15', 0, CAST(N'2017-12-06T14:47:03.9959647+00:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'mrcc@outlook.pt')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (9, 0, N'c46a125f-3857-4868-8454-b0e3b2290c6e', CAST(N'2017-12-06T14:50:22.0073329+00:00' AS DateTimeOffset), N'roger@ipb.pt', 0, N'aqsdsdqdsa', 1, 1, NULL, N'ROGER@IPB.PT', N'ROGER@IPB.PT', N'AQAAAAEAACcQAAAAEGacW4wgVRmOWuzIwP6aX20NrodRG7A6DHETcOK3137lQ3fQMhz8LT9Z/auliQ2gmA==', NULL, 0, N'0b8aa9aa-da29-48c2-9d4f-8285e617ea58', 0, CAST(N'2017-12-06T14:50:22.0074766+00:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'roger@ipb.pt')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (10, 0, N'c78fd4a6-8581-4424-ad43-62da5ff4190f', CAST(N'2018-01-24T20:43:19.7833453+00:00' AS DateTimeOffset), N'meirinhos@ipb.pt', 1, N'Manuel Florindo Alves Meirinhos', 0, 1, NULL, N'MEIRINHOS@IPB.PT', N'MEIRINHOS@IPB.PT', N'AQAAAAEAACcQAAAAEAhxxTBoU4dDUrSq7l8YT8hSrDDBlrxL5cCDLh5lioclaD3Kp+/pjYI6WFhBH9CHbg==', NULL, 0, N'9b8271ec-ee48-4de9-9073-15ea02bc0477', 0, CAST(N'2018-01-24T20:43:19.7833453+00:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'meirinhos@ipb.pt')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (11, 0, N'31c84c87-9871-44b5-9d67-f9f9afb9b639', CAST(N'2018-02-27T14:04:44.8324865+00:00' AS DateTimeOffset), N'aloureiro@usp.br', 1, N'Ana Claudia Loureiro', 1, 1, NULL, N'ALOUREIRO@USP.BR', N'ALOUREIRO@USP.BR', N'AQAAAAEAACcQAAAAEH9/NJiuJwKdm4Eg6KFurqsWfCYuQdtkxY1YnvP4NPKDssFUVNS0dFDd3MY/KboY2A==', NULL, 0, N'8b5f75cc-43fc-469a-809c-a3610f5f81f2', 0, CAST(N'2018-02-27T14:04:44.8324865+00:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'aloureiro@usp.br')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (10011, 0, N'0b70086f-eaeb-4034-a75e-1484fb677622', CAST(N'2018-04-04T01:48:18.1976624+01:00' AS DateTimeOffset), N'mjoao01@hotmail.com', 0, N'Maria João Valente da Silva Couto', 1, 1, NULL, N'MJOAO01@HOTMAIL.COM', N'MJOAO01@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEKKAarxJPdcgj4Oe5cykn+0TMLJNWPJ2kud+zEen+kB2OiaUFQhqT5WD9EaGg1MGjw==', NULL, 0, N'54346b10-c78c-4793-afe0-7fb5e616bd2c', 0, CAST(N'2018-04-04T01:48:18.1976624+01:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'mjoao01@hotmail.com')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (10012, 0, N'bd3aafee-8350-4f3a-b58e-8197bcd17852', CAST(N'2018-05-29T21:27:06.3015843+01:00' AS DateTimeOffset), N'jvazpires@gmail.com', 0, N'José Júlio Vaz Pires', 1, 1, NULL, N'JVAZPIRES@GMAIL.COM', N'JVAZPIRES@GMAIL.COM', N'AQAAAAEAACcQAAAAEC2kSsMw8Y5DoxVDcNOfnzlSL4wvwMqUMaxRDv+AtzJ1lTo9cehoNQRqk90xhmQfkA==', NULL, 0, N'3e9a69a1-1f7d-42f9-9557-4d465233658c', 0, CAST(N'2018-05-29T21:27:06.3015843+01:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'jvazpires@gmail.com')
INSERT [dbo].[Core_User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreatedOn], [Email], [EmailConfirmed], [FullName], [IsDeleted], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UpdatedOn], [UserGuid], [UserName]) VALUES (10013, 0, N'fc162dc8-ac35-4e3f-bdac-2792238c4ff3', CAST(N'2018-10-24T11:35:24.1390652+01:00' AS DateTimeOffset), N'jose.pires@ipb.pt', 0, N'José Pires', 0, 1, NULL, N'JOSE.PIRES@IPB.PT', N'JOSE.PIRES@IPB.PT', N'AQAAAAEAACcQAAAAEAI3kbRlqPsGYAOQJI1HO4NpZHbIiIhtTSAb+gibAx4fvN611IjnXjGnd5Z5xRBfFw==', NULL, 0, N'7b402508-807c-4439-98d2-d7144c2197d8', 0, CAST(N'2018-10-24T11:35:24.1390652+01:00' AS DateTimeOffset), N'00000000-0000-0000-0000-000000000000', N'jose.pires@ipb.pt')
SET IDENTITY_INSERT [dbo].[Core_User] OFF
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (7, 1)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (8, 2)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (9, 1)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (10, 1)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (11, 2)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (10011, 2)
INSERT [dbo].[Core_UserRole] ([UserId], [RoleId]) VALUES (10013, 1)
SET IDENTITY_INSERT [dbo].[Core_Widget] ON 

INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (1, N'CarouselWidget', N'widget-carousel-create', CAST(N'2016-06-19T00:00:00.0000000+00:00' AS DateTimeOffset), N'widget-carousel-edit', 1, N'Carousel Widget', N'CarouselWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (2, N'HtmlWidget', N'widget-html-create', CAST(N'2016-06-24T00:00:00.0000000+00:00' AS DateTimeOffset), N'widget-html-edit', 1, N'Html Widget', N'HtmlWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (4, N'CategoryWidget', N'widget-category-create', CAST(N'2016-07-08T00:00:00.0000000+00:00' AS DateTimeOffset), N'widget-category-edit', 1, N'Category Widget', N'CategoryWidget')
INSERT [dbo].[Core_Widget] ([Id], [Code], [CreateUrl], [CreatedOn], [EditUrl], [IsPublished], [Name], [ViewComponentName]) VALUES (5, N'NewsWidget', N'widget-news-create', CAST(N'2016-07-08T00:00:00.0000000+00:00' AS DateTimeOffset), N'widget-news-edit', 1, N'News Widget', N'NewsWidget')
SET IDENTITY_INSERT [dbo].[Core_Widget] OFF
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance] ON 

INSERT [dbo].[Core_WidgetInstance] ([Id], [CreatedOn], [Data], [DisplayOrder], [HtmlData], [Name], [PublishEnd], [PublishStart], [UpdatedOn], [WidgetId], [WidgetZoneId]) VALUES (1, CAST(N'2016-07-11T05:29:31.1868415+00:00' AS DateTimeOffset), N'[{"Image":"adc7b716-e2da-421d-829b-44afa3f2bb5d.png","ImageUrl":null,"Caption":"","TargetUrl":"http://www.cctic.ipb.pt"}]', 0, NULL, N'Home Carousel', NULL, CAST(N'2016-07-11T05:42:44.7520000+00:00' AS DateTimeOffset), CAST(N'2016-07-11T05:29:31.1868415+00:00' AS DateTimeOffset), 1, 1)
INSERT [dbo].[Core_WidgetInstance] ([Id], [CreatedOn], [Data], [DisplayOrder], [HtmlData], [Name], [PublishEnd], [PublishStart], [UpdatedOn], [WidgetId], [WidgetZoneId]) VALUES (3, CAST(N'2016-07-11T05:42:44.7523284+00:00' AS DateTimeOffset), NULL, 0, N'<div>    <h2 class="page-header">Administratoree</h2>    <p>Manage your store. Admin email: admin@SimplCommerce.com. Admin password: 1qazZAQ!</p>    <p>        <a class="btn btn-primary" role="button" href="Admin">Go to Dashboard</a>    </p><br></div>', N'Administration', CAST(N'2016-07-11T05:42:00.0000000+00:00' AS DateTimeOffset), CAST(N'2016-07-11T05:42:44.7520000+00:00' AS DateTimeOffset), CAST(N'2016-07-11T05:42:44.7523284+00:00' AS DateTimeOffset), 2, 3)
INSERT [dbo].[Core_WidgetInstance] ([Id], [CreatedOn], [Data], [DisplayOrder], [HtmlData], [Name], [PublishEnd], [PublishStart], [UpdatedOn], [WidgetId], [WidgetZoneId]) VALUES (5, CAST(N'2017-12-05T10:45:57.9653761+00:00' AS DateTimeOffset), N'{"NumberOfNewsItem":6}', 0, NULL, N'notícias', NULL, CAST(N'2017-12-06T10:44:10.9060000+00:00' AS DateTimeOffset), CAST(N'2017-12-05T10:45:57.9654944+00:00' AS DateTimeOffset), 5, 3)
INSERT [dbo].[Core_WidgetInstance] ([Id], [CreatedOn], [Data], [DisplayOrder], [HtmlData], [Name], [PublishEnd], [PublishStart], [UpdatedOn], [WidgetId], [WidgetZoneId]) VALUES (7, CAST(N'2017-12-09T16:51:35.2987571+00:00' AS DateTimeOffset), NULL, 0, N'<!-- WELCOME -->
			<section class="pb-0">
				
					<header class="text-center mb-40">
						<h1 class="fw-300">Bem Vindo</h1>
						<h2 class="fw-300 letter-spacing-1 fs-13"><span>CENTRO DE COMPETÊNCIAS TIC</span></h2>
					</header>

					<div class="text-left">
						<p class="">
							Bem-vindo ao <b>CCTIC ESE/IPB – Bragança</b> (Centro de Competência TIC da Escola Superior de Educação do Instituto Politécnico de Bragança). O CCTIC ESE/IPB – Bragança integra uma rede de Centros de Competência TIC apoiada pela Direção Geral de Educação (DGE) do Ministério da Educação. O CCTIC serve essencialmente de elo ligação e de interação com as escolas dos vários níveis de educação da região, em estreita colaboração com a Equipa de Recursos e Tecnologias Educativas (ERTE), da Direção-Geral da Educação (DGE). Pretende, também ser um centro dinamizador da inovação na educação com TIC e da promoção da cidadania digital.
						</p><p></p>

						

					</div>
				
			</section>
			<!-- /WELCOME -->
', N'Apresentação', CAST(N'2017-12-10T00:00:00.0000000+00:00' AS DateTimeOffset), CAST(N'2017-12-09T16:50:55.0820000+00:00' AS DateTimeOffset), CAST(N'2017-12-09T16:51:35.2987710+00:00' AS DateTimeOffset), 2, 2)
INSERT [dbo].[Core_WidgetInstance] ([Id], [CreatedOn], [Data], [DisplayOrder], [HtmlData], [Name], [PublishEnd], [PublishStart], [UpdatedOn], [WidgetId], [WidgetZoneId]) VALUES (8, CAST(N'2017-12-11T10:10:33.2706583+00:00' AS DateTimeOffset), NULL, 0, N'<!-- Do Not Miss -->
			<section id="donotmiss">
				

					<div class="row">

						<div class="col-md-3">

							<div class="box-static box-border-top">
								<div class="box-title">
									<h4>CCTIC ESE / IPB<br></h4>
								</div>
								<p>Bem-vindo ao CCTIC ESE/IPB – Bragança (Centro de Competência TIC da Escola Superior de Educação do Instituto Politécnico de Bragança).</p>
								
							</div>

						</div>

						<div class="col-md-3">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1" style="background-color:#a0ce4e;">
										<div class="box-icon-title">
											<i class="et-profile-male"></i>
											<h2>Formação</h2>
										</div>
										<p>Formação creditada, oficinas de formação, curta duração<br></p>
                                                                                 <a class="btn btn-block btn-translucid" href="/formacao">Ler Mais</a>
									</div>
								</div>

								
							</div>

						</div>

						<div class="col-md-3">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1" style="background-color:#cb9536;">
										<div class="box-icon-title">
											<i class="et-laptop"></i>
											<h2>Atividades</h2>
										</div>
										<p>Consulte aqui a lista de atividades <br></p>
                                                                                <a class="btn btn-block btn-translucid" href="/atividades">Ler Mais</a>
									</div>
								</div>

								
							</div>

						</div>

						<div class="col-md-3">

							<div class="box-flip box-color box-icon box-icon-center box-icon-round box-icon-large text-center">
								<div class="front">
									<div class="box1" style="background-color:#73b9dc;">
										<div class="box-icon-title">
											<i class="et-magnifying-glass"></i>
											<h2>Investigação</h2>
										</div>
										<p>Consulte as Investigações em curso</p>
                                                                                <a class="btn btn-block btn-translucid" href="/investigacao">Ler Mais</a>
									</div>
								</div>

								
							</div>

						</div>

					</div>

			</section>
			<!-- /Do Not Miss -->
', N'info2', NULL, CAST(N'2017-12-11T10:10:16.2150000+00:00' AS DateTimeOffset), CAST(N'2017-12-11T10:10:33.2706658+00:00' AS DateTimeOffset), 2, 2)
SET IDENTITY_INSERT [dbo].[Core_WidgetInstance] OFF
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] ON 

INSERT [dbo].[Core_WidgetZone] ([Id], [Description], [Name]) VALUES (1, NULL, N'Home Featured')
INSERT [dbo].[Core_WidgetZone] ([Id], [Description], [Name]) VALUES (2, NULL, N'Home Main Content')
INSERT [dbo].[Core_WidgetZone] ([Id], [Description], [Name]) VALUES (3, NULL, N'Home After Main Content')
SET IDENTITY_INSERT [dbo].[Core_WidgetZone] OFF
SET IDENTITY_INSERT [dbo].[Localization_Culture] ON 

INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (1, N'vi-VN')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (2, N'fr-FR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (3, N'pt-BR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (4, N'uk-UA')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (5, N'ru-RU')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (6, N'ar-TN')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (7, N'ko-KR')
INSERT [dbo].[Localization_Culture] ([Id], [Name]) VALUES (8, N'tr-TR')
SET IDENTITY_INSERT [dbo].[Localization_Culture] OFF
SET IDENTITY_INSERT [dbo].[Localization_Resource] ON 

INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1, 1, N'Register', N'Đăng ký')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (2, 1, N'Hello {0}!', N'Chào {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (3, 1, N'Log in', N'Đăng nhập')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (4, 1, N'Log off', N'Đăng xuất')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (5, 1, N'The Email field is required.', N'Địa chỉ email cần phải có ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (6, 1, N'Email', N'Địa chỉ email')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (7, 1, N'User List', N'Danh sách người dùng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (8, 1, N'Remember me?', N'Ghi nhớ?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (9, 1, N'Password', N'Mật khẩu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (10, 1, N'Use a local account to log in.', N'Sử dụng tài khoản của bạn để đăng nhập')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (11, 1, N'Register as a new user?', N'Đăng ký người dùng mới')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (12, 1, N'Forgot your password?', N'Quên mật khẩu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (13, 1, N'Use another service to log in.', N'Đăng nhập bằng các tài khoản khác')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (14, 1, N'Full name', N'Họ và tên')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (15, 1, N'Confirm password', N'Xác nhận mật khẩu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (16, 1, N'Create a new account.', N'Tạo tài khoản mới.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (17, 1, N'All', N'Tất cả')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (18, 1, N'Home', N'Trang chủ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (19, 1, N'Add to cart', N'Thêm vào giỏ hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (20, 1, N'Product detail', N'Mô tả sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (21, 1, N'Product specification', N'Thông số kỹ thuật')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (22, 1, N'Rate this product', N'Đánh giá sản phẩm này')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (23, 1, N'Review comment', N'Mô tả đánh giá')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (24, 1, N'Review title', N'Tiêu đề đánh giá')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (25, 1, N'Posted by', N'Đánh giá bởi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (26, 1, N'Submit review', N'Gửi đánh giá')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (27, 1, N'You have', N'Bạn có')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (28, 1, N'products in your cart', N'sản phẩm trong giỏ hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (29, 1, N'Continue shopping', N'Tiếp tục mua sắm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (30, 1, N'View cart', N'Xem giỏ hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (31, 1, N'The product has been added to your cart', N'Sản phẩm đã được thêm vào giỏ hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (32, 1, N'Cart subtotal', N'Thành tiền')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (33, 1, N'Shopping Cart', N'Giỏ hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (34, 1, N'Product', N'Sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (35, 1, N'Price', N'Giá')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (36, 1, N'Quantity', N'Số lượng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (37, 1, N'There are no items in this cart.', N'Chưa có sản phẩm nào trong giỏ hàng của bạn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (38, 1, N'Go to shopping', N'Đi mua sắm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (39, 1, N'Order summary', N'Tóm lược đơn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (40, 1, N'Subtotal', N'Thành tiền')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (41, 1, N'Process to Checkout', N'Tiến hành thanh toán')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (42, 1, N'Shipping address', N'Địa chỉ giao hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (43, 1, N'Add another address', N'Thêm địa chỉ mới')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (44, 1, N'Contact name', N'Tên người liên hệ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (45, 1, N'Address', N'Địa chỉ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (46, 1, N'State or Province', N'Thành phố / Tỉnh')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (47, 1, N'District', N'Quận / Huyện')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (48, 1, N'Phone', N'Số điện thoại')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (49, 1, N'Order', N'Đặt hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (50, 1, N'products', N'sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (51, 1, N'reviews', N'nhận xét')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (52, 1, N'Add Review', N'Viết nhận xét')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (53, 1, N'Customer reviews', N'Nhận xét của khách hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (54, 1, N'Your review will be showed within the next 24h.', N'Nhận xét của bạn sẽ được hiển thị trong vòng 24 tiếng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (55, 1, N'Thank you {0} for your review', N'Cảm ơn {0} đã gửi nhận xét')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (56, 1, N'Rating average', N'Đánh giá trung bình')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (57, 1, N'stars', N'sao')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (58, 1, N'Filter by', N'Tìm theo')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (59, 1, N'Category', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (60, 1, N'Brand', N'Nhãn hiệu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (61, 1, N'Sort by:', N'Sắp xếp theo:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (62, 1, N'results', N'kết quả')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (63, 1, N'View options', N'Xem các tùy chọn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (64, 1, N'Associate your {0} account.', N'Liên kết với tài khoản {0} của bạn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (65, 1, N'Users', N'xzxz')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (66, 1, N'Vendors', N'Người bán')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (67, 1, N'Reviews', N'Đánh giá')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (68, 1, N'Products', N'Sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (69, 1, N'Categories', N'asdasd')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (70, 1, N'Brands', N'Nhãn hiệu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (71, 1, N'Product Options', N'Tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (72, 1, N'Product Attribute', N'Thuộc tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (73, 1, N'Product Attribute Groups', N'Nhóm thuộc tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (74, 1, N'Product Templates', N'Mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (75, 1, N'Sales', N'Bán hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (76, 1, N'Orders', N'Đơn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (77, 1, N'Content Management', N'Quán lý nội dung')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (78, 1, N'Pages', N'Trang')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (79, 1, N'Widgets', N'Widgets')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (80, 1, N'System', N'Hệ thống')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (81, 1, N'Configuration', N'Cấu hình')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (82, 1, N'Translations', N'Translations')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (83, 1, N'Dashboard', N'Dashboard')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (84, 1, N'Incomplete orders', N'Đơn hàng chưa xong')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (85, 1, N'Pending reviews', N'Đánh giá đang chờ duyệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (86, 1, N'Most search keywords', N'Từ khóa được tìm kiếm nhiều nhất')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (87, 1, N'Most viewed products', N'Sản phẩm được xem nhiều nhất')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (88, 1, N'OrderId', N'Số đơn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (89, 1, N'Order Status', N'Trạng thái đơn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (90, 1, N'Customer', N'Khách hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (91, 1, N'Created On', N'Ngày tạo')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (92, 1, N'SubTotal', N'Tổng tiền')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (93, 1, N'Actions', N'Hành động')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (94, 1, N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (95, 1, N'Catalog', N'Quản lý sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (96, 1, N'Title', N'Tiêu đề')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (97, 1, N'Comment', N'Bình luận')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (98, 1, N'Status', N'Trạng thái')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (99, 1, N'Rating', N'Xếp hạng')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (100, 1, N'Keyword', N'Từ khóa')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (101, 1, N'Count', N'Số lần')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (102, 1, N'Create User', N'Tạo người dùng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (103, 1, N'FullName', N'Họ và tên')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (104, 1, N'Roles', N'Roles')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (105, 1, N'Edit User', N'Chỉnh sửa user')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (106, 1, N'Manager of Vendor', N'Manager of Vendor')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (107, 1, N'Save', N'Lưu lại')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (108, 1, N'Cancel', N'Hủy')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (109, 1, N'Phone Number', N'Số điện thoại')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (110, 1, N'Create Vendor', N'Tạo người bán')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (111, 1, N'Is Active', N'Đang hoạt động')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (112, 1, N'Edit Vendor', N'Chỉnh sửa người bán')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (113, 1, N'Managers', N'Quản lý')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (114, 1, N'Description', N'Mô tả')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (115, 1, N'Pending', N'Đang chờ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (116, 1, N'Approved', N'Đã duyệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (117, 1, N'Not Approved', N'Không duyệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (118, 1, N'Approve', N'Duyệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (119, 1, N'Create Product', N'Tạo sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (120, 1, N'Has Options', N'Tùy chọn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (121, 1, N'Is Visible Individually', N'Hiển thị riêng lẻ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (122, 1, N'Is Featured', N'Nổi bậc')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (123, 1, N'Is Allowed To Order', N'Cho phép đặt hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (124, 1, N'Is Called For Pricing', N'Gọi để biết giá')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (125, 1, N'Stock Quantity', N'Số lượng trong kho')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (126, 1, N'Is Published', N'Công bố')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (127, 1, N'Yes', N'Có')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (128, 1, N'No', N'Không')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (129, 1, N'Edit Product', N'Chỉnh sửa sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (130, 1, N'Product Name', N'Tên sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (131, 1, N'Short Description', N'Mô tả ngắn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (132, 1, N'Specification', N'Thông số kỹ thuật')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (133, 1, N'Old Price', N'Giá cũ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (134, 1, N'Special Price', N'Giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (135, 1, N'Special Price Start', N'Bắt đầu giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (136, 1, N'Special Price End', N'Kết thúc giá đặc biệt')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (137, 1, N'Thumbnail', N'Hình đại diện')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (138, 1, N'Product Images', N'Hình sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (139, 1, N'Product Documents', N'Tài liệu kỹ thuật')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (140, 1, N'Out Of Stock', N'Hết hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (141, 1, N'Available Options', N'Tùy chọn khả dụng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (142, 1, N'Add Option', N'Thêm tùy chọn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (143, 1, N'Option Values', N'Giá trị của tùy chọn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (144, 1, N'Delete Option', N'Xóa tùy chọn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (145, 1, N'Generate Combinations', N'Tự động tạo tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (146, 1, N'Product Variations', N'Những tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (147, 1, N'Option Combinations', N'Sự kết hợp của những tùy chọn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (148, 1, N'Images', N'Hình ảnh')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (149, 1, N'Apply', N'Áp dụng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (150, 1, N'Available Attributes', N'Đặt tính khả dụng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (151, 1, N'Add Attribute', N'Thêm đặc tính')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (152, 1, N'Product Attributes', N'Đặc tính của sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (153, 1, N'Attribute Name', N'Tên đặc tính')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (154, 1, N'Value', N'Giá trị')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (155, 1, N'General Information', N'Thông tin chung')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (156, 1, N'Category Mapping', N'Danh mục')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (157, 1, N'Related Products', N'Sản phẩm tương tự')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (158, 1, N'Manage Related Products', N'Quản lý sản phẩm tương tự')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (159, 1, N'Create Category', N'Tạo danh mục')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (160, 1, N'Edit Category', N'Chỉnh sửa danh mục')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (161, 1, N'Create Brand', N'Tạo nhãn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (162, 1, N'Edit Brand', N'Chỉnh sửa nhãn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (163, 1, N'Name', N'Tên')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (164, 1, N'Parent Category', N'Danh mục cha')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (165, 1, N'Group', N'Nhóm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (166, 1, N'Create Product Attribute', N'Tạo đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (167, 1, N'Edit Product Attribute', N'Chỉnh sửa đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (168, 1, N'Create Product Attribute Group', N'Tạo nhóm đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (169, 1, N'Edit Product Attribute Group', N'Chỉnh sửa nhóm đặt tính sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (170, 1, N'Create Product Option', N'Tạo tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (171, 1, N'Edit Product Option', N'Chỉnh sửa tùy chọn sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (172, 1, N'Create Product Display Widget', N'Create Product Display Widget')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (173, 1, N'Edit Product Display Widget', N'Edit Product Display Widget')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (174, 1, N'Widget Name', N'Widget Name')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (175, 1, N'Widget Zone', N'Widget Zone')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (176, 1, N'Publish Start', N'Thời gian bắt đầu công bố')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (177, 1, N'Publish End', N'Thời gian kết thúc')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (178, 1, N'Number of Products', N'Số lượng sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (179, 1, N'Order By', N'Sắp xếp theo')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (180, 1, N'Create Product Template', N'Tạo mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (181, 1, N'Edit Product Template', N'Chỉnh sửa mẫu sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (182, 1, N'Added Attributes', N'Những đặt tính đã thêm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (183, 1, N'Back', N'Quay về')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (184, 1, N'Order Detail', N'Chi tiết đơn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (185, 1, N'Order Information', N'Thông tin đơn hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (186, 1, N'Change', N'Thay đổi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (187, 1, N'Product Information', N'Thông tin sản phẩm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (188, 1, N'Shipping Information', N'Thông tin giao hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (189, 1, N'Application Settings', N'Application Settings')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (190, 1, N'Create Page', N'Tạo trang')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (191, 1, N'Edit Page', N'Chỉnh sửa trang')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (192, 1, N'Body', N'Nội dung chính')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (193, 1, N'Account Dashboard', N'Quản lý tài khoản')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (194, 1, N'Account Information', N'Thông tin tài khoản')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (195, 1, N'Edit', N'Chỉnh sửa')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (196, 1, N'Security', N'Bảo mật')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (197, 1, N'Create', N'Tạo mới')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (198, 1, N'External Logins', N'Đăng nhập từ mạng xã hội')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (199, 1, N'Manage', N'Quản lý')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (200, 1, N'Default shipping address', N'Địa chỉ nhận hàng mặc định')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (201, 1, N'Manage address', N'Quản lý địa chỉ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (202, 1, N'You don''t have any default address', N'Bạn chưa có địa chỉ mặc định nào')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (203, 1, N'Order History', N'Lịch sử mua hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (204, 1, N'Address Book', N'Sổ địa chỉ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (205, 1, N'Add Address', N'Thêm địa chỉ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (206, 1, N'Delete', N'Xóa')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (207, 1, N'Set as default shipping address', N'Chọn làm địa chỉ mặc định khi nhận hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (208, 1, N'Edit Address', N'Chỉnh sửa địa chỉ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (209, 1, N'Create Address', N'Tạo địa chỉ mới')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (210, 1, N'Your account', N'Tài khoản của bạn')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (211, 1, N'Date', N'Ngày')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (212, 1, N'Customer Groups', N'Nhóm khách hàng')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (213, 2, N'Register', N'S''inscrire')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (214, 2, N'Hello {0}!', N'Bonjour {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (215, 2, N'Log in', N'Connexion')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (216, 2, N'Log off', N'Déconnexion')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (217, 2, N'The Email field is required.', N'Le champs Email est obligatoire.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (218, 2, N'Email', N'Email')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (219, 2, N'User List', N'Liste des utilisateurs')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (220, 2, N'Remember me?', N'Se rappeler de moi?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (221, 2, N'Password', N'Mot de passe')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (222, 2, N'Use a local account to log in.', N'Utilisez un compte local pour vous connecter.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (223, 2, N'Register as a new user?', N'Enregistrez-vous en tant que nouvel utilisateur?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (224, 2, N'Forgot your password?', N'Mot de passe oublié?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (225, 2, N'Use another service to log in.', N'Utilisez un autre service pour vous connecter.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (226, 2, N'Full name', N'Nom complet')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (227, 2, N'Confirm password', N'Confirmez le mot de passe')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (228, 2, N'Create a new account.', N'Créer un nouveau compte.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (229, 2, N'All', N'Tout')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (230, 2, N'Home', N'Accueil')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (231, 2, N'Add to cart', N'Ajouter au panier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (232, 2, N'Product detail', N'Détail du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (233, 2, N'Product specification', N'Spécification de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (234, 2, N'Rate this product', N'Évaluez ce produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (235, 2, N'Review comment', N'Revue commentaire')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (236, 2, N'Review title', N'Revue titre')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (237, 2, N'Posted by', N'Posté par')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (238, 2, N'Submit review', N'Poster le commentaire')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (239, 2, N'You have', N'Vous avez')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (240, 2, N'products in your cart', N'produits dans votre panier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (241, 2, N'Continue shopping', N'Continuer vos achats')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (242, 2, N'View cart', N'Voir le panier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (243, 2, N'The product has been added to your cart', N'Le produit a été ajouté à votre panier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (244, 2, N'Cart subtotal', N'Sous-total du panier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (245, 2, N'Shopping Cart', N'Panier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (246, 2, N'Product', N'Produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (247, 2, N'Price', N'Prix')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (248, 2, N'Quantity', N'Quantité')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (249, 2, N'There are no items in this cart.', N'Il n''y a aucun article dans votre panier.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (250, 2, N'Go to shopping', N'Aller faire du shopping')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (251, 2, N'Order summary', N'Récapitulatif de la commande')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (252, 2, N'Subtotal', N'Sous-Total')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (253, 2, N'Process to Checkout', N'Processus de paiement')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (254, 2, N'Shipping address', N'Adresse de livraison')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (255, 2, N'Add another address', N'Ajouter une autre adresse')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (256, 2, N'Contact name', N'Nom du contact')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (257, 2, N'Address', N'Adresse')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (258, 2, N'State or Province', N'Etat ou Province')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (259, 2, N'District', N'District')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (260, 2, N'Phone', N'Téléphone')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (261, 2, N'Order', N'Commande')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (262, 2, N'products', N'Produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (263, 2, N'reviews', N'Avis')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (264, 2, N'Add Review', N'Ajouter un commentaire')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (265, 2, N'Customer reviews', N'Avis des clients')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (266, 2, N'Your review will be showed within the next 24h.', N'Votre avis sera affiché dans les prochaines 24h.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (267, 2, N'Thank you {0} for your review', N'Merci {0} pour votre commentaire')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (268, 2, N'Rating average', N'Moyenne des notes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (269, 2, N'stars', N'Etoiles')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (270, 2, N'Filter by', N'Filtrer par')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (271, 2, N'Category', N'Catalogue')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (272, 2, N'Brand', N'Marque')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (273, 2, N'Sort by:', N'Trier par:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (274, 2, N'results', N'résultats')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (275, 2, N'View options', N'Afficher les options')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (276, 2, N'Associate your {0} account.', N'Associez votre compte {0}.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (277, 2, N'Users', N'Utilisateurs')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (278, 2, N'Vendors', N'Vendeurs')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (279, 2, N'Reviews', N'Avis')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (280, 2, N'Products', N'Produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (281, 2, N'Categories', N'Catégories')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (282, 2, N'Brands', N'Marques')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (283, 2, N'Product Options', N'Options du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (284, 2, N'Product Attribute', N'Attribut du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (285, 2, N'Product Attribute Groups', N'Groupes d''attributs de produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (286, 2, N'Product Templates', N'Modèles de produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (287, 2, N'Sales', N'Ventes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (288, 2, N'Orders', N'Ordres')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (289, 2, N'Content Management', N'Gestion de contenu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (290, 2, N'Pages', N'Pages')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (291, 2, N'Widgets', N'Widgets')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (292, 2, N'System', N'Système')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (293, 2, N'Configuration', N'Configuration')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (294, 2, N'Translations', N'Translations')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (295, 2, N'Dashboard', N'Tableau de bord')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (296, 2, N'Incomplete orders', N'Commandes incomplètes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (297, 2, N'Pending reviews', N'Avis en attente')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (298, 2, N'Most searched keywords', N'Les mots clés les plus recherchés')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (299, 2, N'Most viewed products', N'Produits les plus consultés')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (300, 2, N'OrderId', N'Numéro de commande')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (301, 2, N'Order Status', N'Statut de la commande')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (302, 2, N'Customer', N'Client')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (303, 2, N'Created On', N'Créé en')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (304, 2, N'SubTotal', N'Total')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (305, 2, N'Actions', N'Actions')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (306, 2, N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (307, 2, N'Catalog', N'Catalogue')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (308, 2, N'Title', N'Titre')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (309, 2, N'Comment', N'Commentaire')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (310, 2, N'Status', N'Statut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (311, 2, N'Rating', N'Évaluation')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (312, 2, N'Keyword', N'Mot-clé')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (313, 2, N'Count', N'Décompte')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (314, 2, N'Create User', N'Créer un utilisateur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (315, 2, N'FullName', N'Nom complet')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (316, 2, N'Roles', N'Rôles')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (317, 2, N'Edit User', N'Modifier l''utilisateur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (318, 2, N'Manager of Vendor', N'Directeur du vendeur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (319, 2, N'Save', N'Sauvegarder')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (320, 2, N'Cancel', N'Annuler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (321, 2, N'Phone Number', N'Numéro de téléphone')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (322, 2, N'Create Vendor', N'Créer un fournisseur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (323, 2, N'Is Active', N'Actif')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (324, 2, N'Edit Vendor', N'Modifier le fournisseur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (325, 2, N'Managers', N'Les gestionnaires')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (326, 2, N'Description', N'Description')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (327, 2, N'Pending', N'En attente')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (328, 2, N'Approved', N'Approuvé')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (329, 2, N'Not Approved', N'Non Apprové')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (330, 2, N'Approve', N'Approuver')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (331, 2, N'Create Product', N'Créer un produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (332, 2, N'Has Options', N'A des options')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (333, 2, N'Is Visible Individually', N'Est visible individuellement')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (334, 2, N'Is Featured', N'Est en vedette')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (335, 2, N'Is Allowed To Order', N'Est autorisé à commander')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (336, 2, N'Is Called For Pricing', N'Est appelé pour le prix')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (337, 2, N'Stock Quantity', N'Quantité en stock')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (338, 2, N'Is Published', N'Est publié')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (339, 2, N'Yes', N'Oui')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (340, 2, N'No', N'Non')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (341, 2, N'Edit Product', N'Modifier le produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (342, 2, N'Product Name', N'Nom du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (343, 2, N'Short Description', N'Brève Description')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (344, 2, N'Specification', N'Spécification')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (345, 2, N'Old Price', N'Ancien prix')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (346, 2, N'Special Price', N'Prix spécial')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (347, 2, N'Special Price Start', N'Début des prix spéciaux')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (348, 2, N'Special Price End', N'Fin des prix spéciaux')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (349, 2, N'Thumbnail', N'Vignette')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (350, 2, N'Product Images', N'Images du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (351, 2, N'Product Documents', N'Documents produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (352, 2, N'Out Of Stock', N'En rupture de stock')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (353, 2, N'Available Options', N'Options disponibles')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (354, 2, N'Add Option', N'Ajouter une option')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (355, 2, N'Option Values', N'Valeurs d''option')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (356, 2, N'Delete Option', N'Supprimer l''option')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (357, 2, N'Generate Combinations', N'Générer des combinaisons')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (358, 2, N'Product Variations', N'Variations du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (359, 2, N'Option Combinations', N'Combinaisons d''options')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (360, 2, N'Images', N'Images')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (361, 2, N'Apply', N'Appliquer')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (362, 2, N'Available Attributes', N'Attributs disponibles')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (363, 2, N'Add Attribute', N'Ajouter un attribut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (364, 2, N'Product Attributes', N'Attributs du produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (365, 2, N'Attribute Name', N'Nom d''attribut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (366, 2, N'Value', N'Valeur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (367, 2, N'General Information', N'Informations générales')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (368, 2, N'Category Mapping', N'Mapping de catégorie')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (369, 2, N'Related Products', N'Produits connexes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (370, 2, N'Manage Related Products', N'Gérer les produits connexes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (371, 2, N'Create Category', N'Créer une catégorie')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (372, 2, N'Edit Category', N'Modifier la catégorie')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (373, 2, N'Create Brand', N'Créer une marque')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (374, 2, N'Edit Brand', N'Modifier la marque')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (375, 2, N'Name', N'Nom')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (376, 2, N'Parent Category', N'Catégorie Parentale')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (377, 2, N'Group', N'Groupe')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (378, 2, N'Create Product Attribute', N'Créer un attribut de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (379, 2, N'Edit Product Attribute', N'Modifier l''attribut de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (380, 2, N'Create Product Attribute Group', N'Créer un groupe d''attributs de produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (381, 2, N'Edit Product Attribute Group', N'Modifier le groupe d''attributs de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (382, 2, N'Create Product Option', N'Créer une option de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (383, 2, N'Edit Product Option', N'Modifier l''option de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (384, 2, N'Create Product Display Widget', N'Créer un Widget d''affichage de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (385, 2, N'Edit Product Display Widget', N'Modifier le widget d''affichage des produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (386, 2, N'Widget Name', N'Nom du widget')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (387, 2, N'Widget Zone', N'Widget Zone')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (388, 2, N'Publish Start', N'Commencer à publier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (389, 2, N'Publish End', N'Fin de publication')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (390, 2, N'Number of Products', N'Nombre de produits')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (391, 2, N'Order By', N'Commandé par')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (392, 2, N'Create Product Template', N'Créer un modèle de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (393, 2, N'Edit Product Template', N'Modifier le modèle de produit')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (394, 2, N'Added Attributes', N'Attributs ajoutés')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (395, 2, N'Back', N'Arrière')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (396, 2, N'Order Detail', N'Détails de la commande')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (397, 2, N'Order Information', N'Informations sur la commande')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (398, 2, N'Change', N'Changement')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (399, 2, N'Product Information', N'Information produit')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (400, 2, N'Shipping Information', N'Informations sur la livraison')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (401, 2, N'Application Settings', N'Paramètres de l''application')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (402, 2, N'Create Page', N'Créer une page')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (403, 2, N'Edit Page', N'Modifier la page')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (404, 2, N'Body', N'Corps')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (405, 2, N'Account Dashboard', N'Tableau de bord des comptes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (406, 2, N'Account Information', N'Information sur le compte')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (407, 2, N'Edit', N'Modifier')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (408, 2, N'Security', N'Sécurité')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (409, 2, N'Create', N'Créer')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (410, 2, N'External Logins', N'Logins externes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (411, 2, N'Manage', N'Gérer')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (412, 2, N'Default shipping address', N'Adresse de livraison par défaut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (413, 2, N'Manage address', N'Gérer l''adresse')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (414, 2, N'You don''t have any default address', N'Vous n''avez aucune adresse par défaut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (415, 2, N'Order History', N'Historique des commandes')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (416, 2, N'Address Book', N'Carnet d''adresses')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (417, 2, N'Add Address', N'Ajouter une adresse')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (418, 2, N'Delete', N'Supprimer')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (419, 2, N'Set as default shipping address', N'Définir comme adresse de livraison par défaut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (420, 2, N'Edit Address', N'Modifier l''adresse')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (421, 2, N'Create Address', N'Créer une adresse')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (422, 2, N'Your account', N'Votre Compte')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (423, 2, N'Date', N'Date')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (424, 3, N'Register', N'Cadastro')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (425, 3, N'Hello {0}!', N'Olá {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (426, 3, N'Log in', N'Entrar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (427, 3, N'Log off', N'Sair')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (428, 3, N'The Email field is required.', N'O campo Email é obrigatório. ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (429, 3, N'Email', N'Email')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (430, 3, N'User List', N'Lista de usuários')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (431, 3, N'Remember me?', N'Lembrar?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (432, 3, N'Password', N'Senha')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (433, 3, N'Use a local account to log in.', N'Entre com seu usuário e senha ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (434, 3, N'Register as a new user?', N'Cadastrar-se como novo usuário? ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (435, 3, N'Forgot your password?', N'Esqueceu a senha?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (436, 3, N'Use another service to log in.', N'Logar utilizando outro serviço')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (437, 3, N'Full name', N'Nome completo')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (438, 3, N'Confirm password', N'Confirmar senha')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (439, 3, N'Create a new account.', N'Criar uma conta.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (440, 3, N'All', N'Todos')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (441, 3, N'Home', N'Início')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (442, 3, N'Add to cart', N'Adicionar ao carrinho')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (443, 3, N'Product detail', N'Detalhes do produto')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (444, 3, N'Product specification', N'Especificações do produto')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (445, 3, N'Rate this product', N'Avalie este produto')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (446, 3, N'Review comment', N'Comentário')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (447, 3, N'Review title', N'Título da avaliação')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (448, 3, N'Posted by', N'Postado pro')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (449, 3, N'Submit review', N'Enviar avaliação')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (450, 3, N'You have', N'Você tem')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (451, 3, N'products in your cart', N'produtos no carrinho')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (452, 3, N'Continue shopping', N'Continuar comprando')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (453, 3, N'View cart', N'Ver carrinho')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (454, 3, N'The product has been added to your cart', N'O produto foi adicionado ao carrinho')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (455, 3, N'Cart subtotal', N'Subtotal')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (456, 3, N'Shopping Cart', N'Carrinho de compras')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (457, 3, N'Product', N'Produto')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (458, 3, N'Price', N'Preço')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (459, 3, N'Quantity', N'Quantidade')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (460, 3, N'There are no items in this cart.', N'O carrinho está vazio.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (461, 3, N'Go to shopping', N'a comprar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (462, 3, N'Order summary', N'Resumo do pedido')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (463, 3, N'Subtotal', N'Subtotal')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (464, 3, N'Process to Checkout', N'Próxima etapa')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (465, 3, N'Shipping address', N'Endereço de entrega')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (466, 3, N'Add another address', N'Adicionar outro endereço')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (467, 3, N'Contact name', N'Nome completo')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (468, 3, N'Address', N'Endereço')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (469, 3, N'State or Province', N'Estado')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (470, 3, N'District', N'Cidade')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (471, 3, N'Phone', N'Telefone')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (472, 3, N'Order', N'Pedido')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (473, 3, N'products', N'produtos')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (474, 3, N'reviews', N'avaliações')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (475, 3, N'Add Review', N'Adicionar avaliação')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (476, 3, N'Customer reviews', N'Avaliações de quem comprou')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (477, 3, N'Your review will be showed within the next 24h.', N'Sua avaliação será publicada dentro de 24h.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (478, 3, N'Thank you {0} for your review', N'Muito obrigado pela avaliação, {0}')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (479, 3, N'Rating average', N'Média das avaliações')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (480, 3, N'stars', N'estrelas')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (481, 3, N'Filter by', N'Filtrar por')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (482, 3, N'Category', N'Categoria')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (483, 3, N'Brand', N'Marca')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (484, 3, N'Sort by:', N'Ordenar por:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (485, 3, N'results', N'resultados')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (486, 4, N'Register', N'Зареєструватися')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (487, 4, N'Hello {0}!', N'Вітаємо, {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (488, 4, N'Log in', N'Увійти')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (489, 4, N'Log off', N'Вийти')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (490, 4, N'The Email field is required.', N'Поле «Електронна пошта» є обов’язковим.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (491, 4, N'Email', N'Електронна пошта')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (492, 4, N'User List', N'Список користувачів')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (493, 4, N'Remember me?', N'Запам’ятати мене?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (494, 4, N'Password', N'Пароль')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (495, 4, N'Use a local account to log in.', N'Використати локальний акаунт для входу.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (496, 4, N'Register as a new user?', N'Зареєструватися як новий користувач?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (497, 4, N'Forgot your password?', N'Забули свій пароль?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (498, 4, N'Use another service to log in.', N'Використати інший сервіс для входу.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (499, 4, N'Full name', N'Повне ім’я')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (500, 4, N'Confirm password', N'Підтвердження паролю')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (501, 4, N'Create a new account.', N'Створити новий акаунт.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (502, 4, N'All', N'Всі')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (503, 4, N'Home', N'Головна')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (504, 4, N'Add to cart', N'Додати до кошику')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (505, 4, N'Product detail', N'Деталі товару')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (506, 4, N'Product specification', N'Специфікація товару')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (507, 4, N'Rate this product', N'Оцінити цей продукт')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (508, 4, N'Review comment', N'Текст відгуку')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (509, 4, N'Review title', N'Заголовок відгуку')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (510, 4, N'Posted by', N'Автор')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (511, 4, N'Submit review', N'Надіслати відгук')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (512, 4, N'You have', N'Ви маєте')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (513, 4, N'products in your cart', N'товарів у кошику')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (514, 4, N'Continue shopping', N'Tiếp tục mua sắm')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (515, 4, N'View cart', N'Переглянути кошик')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (516, 4, N'The product has been added to your cart', N'Товар було додано до кошику')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (517, 4, N'Cart subtotal', N'Проміжний підсумок')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (518, 4, N'Shopping Cart', N'Кошик')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (519, 4, N'Product', N'Товар')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (520, 4, N'Price', N'Ціна')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (521, 4, N'Quantity', N'Кількість')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (522, 4, N'There are no items in this cart.', N'Товарів у кошику немає')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (523, 4, N'Go to shopping', N'Продовжити покупки')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (524, 4, N'Order summary', N'Підсумок замовлення')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (525, 4, N'Subtotal', N'Підсумок')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (526, 4, N'Process to Checkout', N'Оформити замовлення')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (527, 4, N'Shipping address', N'Адреса доставки')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (528, 4, N'Add another address', N'Додати іншу адресу')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (529, 4, N'Contact name', N'Контактне ім’я ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (530, 4, N'Address', N'Адреса')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (531, 4, N'State or Province', N'Область або край')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (532, 4, N'District', N'Район')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (533, 4, N'Phone', N'Телефон')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (534, 4, N'Order', N'Замовлення')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (535, 4, N'products', N'товари')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (536, 4, N'reviews', N'відгуки')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (537, 4, N'Add Review', N'Додати відгук')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (538, 4, N'Customer reviews', N'Відгуки покупців')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (539, 4, N'Your review will be showed within the next 24h.', N'Ваш відгук буде опубліковано впродовж наступних 24 годин.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (540, 4, N'Thank you {0} for your review', N'Дякуємо {0} за ваш відгук')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (541, 4, N'Rating average', N'Середня оцінка')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (542, 4, N'stars', N'зірочок')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (543, 4, N'Filter by', N'Фільтрувати за')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (544, 4, N'Category', N'Категорія')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (545, 4, N'Brand', N'Бренд')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (546, 4, N'Sort by:', N'Сортувати за:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (547, 4, N'results', N'результати')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (548, 5, N'Register', N'Зарегистрироваться')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (549, 5, N'Hello {0}!', N'Поздравляем, {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (550, 5, N'Log in', N'Войти')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (551, 5, N'Log off', N'Выйти')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (552, 5, N'The Email field is required.', N'Поле «Электронная почта» является обязательным.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (553, 5, N'Email', N'Электронная почта')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (554, 5, N'User List', N'Список пользователей')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (555, 5, N'Remember me?', N'Запомнить меня?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (556, 5, N'Password', N'Пароль')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (557, 5, N'Use a local account to log in.', N'Использовать локальный аккаунт для входа.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (558, 5, N'Register as a new user?', N'Зарегистрироваться как новый пользователь?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (559, 5, N'Forgot your password?', N'Забыли свой пароль?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (560, 5, N'Use another service to log in.', N'Использовать другой сервис для входа.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (561, 5, N'Full name', N'Полное имя')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (562, 5, N'Confirm password', N'Подтверждение пароля')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (563, 5, N'Create a new account.', N'Создать новый аккаунт.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (564, 5, N'All', N'Все')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (565, 5, N'Home', N'Главная')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (566, 5, N'Add to cart', N'Добавить в корзину')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (567, 5, N'Product detail', N'Детали товара')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (568, 5, N'Product specification', N'Спецификация товара')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (569, 5, N'Rate this product', N'Оценить этот товар')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (570, 5, N'Review comment', N'Текст отзыва')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (571, 5, N'Review title', N'Заголовок отзыва')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (572, 5, N'Posted by', N'Автор')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (573, 5, N'Submit review', N'Отправить отзыв')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (574, 5, N'You have', N'У вас')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (575, 5, N'products in your cart', N'товаров в корзине')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (576, 5, N'Continue shopping', N'Продолжить покупки')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (577, 5, N'View cart', N'Просмотр корзины')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (578, 5, N'The product has been added to your cart', N'Товар был добавлен в корзину')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (579, 5, N'Cart subtotal', N'Промежуточный итог')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (580, 5, N'Shopping Cart', N'Корзина')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (581, 5, N'Product', N'Товар')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (582, 5, N'Price', N'Цена')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (583, 5, N'Quantity', N'Количество')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (584, 5, N'There are no items in this cart.', N'Товаров в корзине нет')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (585, 5, N'Go to shopping', N'Продолжить покупки')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (586, 5, N'Order summary', N'Итог заказа')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (587, 5, N'Subtotal', N'Итого')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (588, 5, N'Process to Checkout', N'Оформить заказ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (589, 5, N'Shipping address', N'Адрес доставки')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (590, 5, N'Add another address', N'Добавить другой адрес')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (591, 5, N'Contact name', N'Контактное имя')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (592, 5, N'Address', N'Адрес')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (593, 5, N'State or Province', N'Область или край')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (594, 5, N'District', N'Район')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (595, 5, N'Phone', N'Телефон')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (596, 5, N'Order', N'Заказ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (597, 5, N'products', N'товары')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (598, 5, N'reviews', N'отзывы')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (599, 5, N'Add Review', N'Добавить отзыв')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (600, 5, N'Customer reviews', N'Отзывы покупателей')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (601, 5, N'Your review will be showed within the next 24h.', N'Ваш отзыв будет опубликован в течении следующих 24 часов.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (602, 5, N'Thank you {0} for your review', N'Спасибо {0} за ваш отзыв')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (603, 5, N'Rating average', N'Средняя оценка')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (604, 5, N'stars', N'звездочек')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (605, 5, N'Filter by', N'Фильтровать по')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (606, 5, N'Category', N'Категория')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (607, 5, N'Brand', N'Бренд')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (608, 5, N'Sort by:', N'Сортировать по:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (609, 5, N'results', N'результаты')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (610, 6, N'Register', N'تسجيل')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (611, 6, N'Hello {0}!', N'!{0} مرحبا')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (612, 6, N'Log in', N'دخول')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (613, 6, N'Log off', N'خروج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (614, 6, N'The Email field is required.', N'البريد الإلكتروني إلزامي.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (615, 6, N'Email', N'البريد الإلكتروني')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (616, 6, N'User List', N'قائمة المستخدمين')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (617, 6, N'Remember me?', N'حفظ البيانات؟')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (618, 6, N'Password', N'كلمة المرور')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (619, 6, N'Use a local account to log in.', N'استخدم حسابا محليا لتسجيل الدخول.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (620, 6, N'Register as a new user?', N'سجل كمستخدم جديد؟')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (621, 6, N'Forgot your password?', N'هل نسيت كلمة المرور؟')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (622, 6, N'Use another service to log in.', N'استخدام خدمة أخرى للاتصال.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (623, 6, N'Full name', N'الاسم الكامل')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (624, 6, N'Confirm password', N'تأكيد كلمة السر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (625, 6, N'Create a new account.', N'إنشاء حساب جديد.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (626, 6, N'All', N'جميع')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (627, 6, N'Home', N'الرئيسية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (628, 6, N'Add to cart', N'أضف إلى العربة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (629, 6, N'Product detail', N'تفاصيل المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (630, 6, N'Product specification', N'مواصفات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (631, 6, N'Rate this product', N'تقيم هذا المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (632, 6, N'Review comment', N'مراجعة تعليق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (633, 6, N'Review title', N'مراجعة عنوان ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (634, 6, N'Posted by', N'أرسلت بواسطة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (635, 6, N'Submit review', N'إرسال التعليق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (636, 6, N'You have', N'عندكم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (637, 6, N'products in your cart', N'المنتجات في عربة التسوق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (638, 6, N'Continue shopping', N'تابع عملية الشراء')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (639, 6, N'View cart', N'عرض عربة التسوق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (640, 6, N'The product has been added to your cart', N'تمت إضافة هذا المنتج الى عربة التسوق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (641, 6, N'Cart subtotal', N'المجموع الفرعي لعربة التسوق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (642, 6, N'Shopping Cart', N'عــربــة التســـوق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (643, 6, N'Product', N'المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (644, 6, N'Price', N'السعر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (645, 6, N'Quantity', N'الكمية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (646, 6, N'There are no items in this cart.', N'لا توجد أي عناصر في سلة التسوق الخاصة بك.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (647, 6, N'Go to shopping', N'الذهاب للتسوق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (648, 6, N'Order summary', N'ملخص ترتيب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (649, 6, N'Subtotal', N'المجموع الفرعي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (650, 6, N'Process to Checkout', N'عملية الدفع')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (651, 6, N'Shipping address', N'عنوان التسليم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (652, 6, N'Add another address', N'إضافة عنوان آخر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (653, 6, N'Contact name', N'اسم جهة الاتصال')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (654, 6, N'Address', N'عنوان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (655, 6, N'State or Province', N'الدولة أو المنطقة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (656, 6, N'District', N'مقاطعة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (657, 6, N'Phone', N'هاتف')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (658, 6, N'Order', N'طلب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (659, 6, N'products', N'المنتجات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (660, 6, N'reviews', N'رأي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (661, 6, N'Add Review', N'إضافة تعليق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (662, 6, N'Customer reviews', N'التعليقات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (663, 6, N'Your review will be showed within the next 24h.', N'سيتم عرض تعليقك في ال 24 ساعة القادمة.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (664, 6, N'Thank you {0} for your review', N'شكرا لك {0} لتعليقك')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (665, 6, N'Rating average', N'متوسط تصنيف العملاء')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (666, 6, N'stars', N'النجوم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (667, 6, N'Filter by', N'مصنف بواسطة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (668, 6, N'Category', N'الفئة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (669, 6, N'Brand', N'العلامة التجارية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (670, 6, N'Sort by:', N'الترتيب حسب:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (671, 6, N'results', N'النتائج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (672, 6, N'View options', N'عرض الخيارات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (673, 6, N'Associate your {0} account.', N'.{ربط حساب {0')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (674, 6, N'Users', N'المستخدمون')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (675, 6, N'Vendors', N'الباعة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (676, 6, N'Reviews', N'التعليقات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (677, 6, N'Products', N'منتجات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (678, 6, N'Categories', N'الاقسام')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (679, 6, N'Brands', N'العلامات التجارية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (680, 6, N'Product Options', N'خيارات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (681, 6, N'Product Attribute', N'سمة المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (682, 6, N'Product Attribute Groups', N'مجموعات سمات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (683, 6, N'Product Templates', N'قوالب المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (684, 6, N'Sales', N'مبيعات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (685, 6, N'Orders', N'أوامر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (686, 6, N'Content Management', N'ادارة المحتوى')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (687, 6, N'Pages', N'الصفحات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (688, 6, N'Widgets', N'الحاجيات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (689, 6, N'System', N'النظام')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (690, 6, N'Configuration', N'ترتيب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (691, 6, N'Translations', N'الترجمات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (692, 6, N'Dashboard', N'لوحة القيادة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (693, 6, N'Incomplete orders', N'أوامر غير مكتملة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (694, 6, N'Pending reviews', N'في انتظار المراجعة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (695, 6, N'Most search keywords', N'معظم كلمات البحث')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (696, 6, N'Most viewed products', N'معظم المنتجات المعروضة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (697, 6, N'OrderId', N'رقم التعريف الخاص بالطلب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (698, 6, N'Order Status', N'حالة الطلب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (699, 6, N'Customer', N'العميل')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (700, 6, N'Created On', N'تم إنشاؤها على')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (701, 6, N'SubTotal', N'المجموع الفرعي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (702, 6, N'Actions', N'الإجراءات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (703, 6, N'Site', N'موقع')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (704, 6, N'Catalog', N'فهرس')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (705, 6, N'Title', N'عنوان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (706, 6, N'Comment', N'تعليق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (707, 6, N'Status', N'الحالة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (708, 6, N'Rating', N'تقييم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (709, 6, N'Keyword', N'كلمة مفتاحية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (710, 6, N'Count', N'إحصاء')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (711, 6, N'Create User', N'إنشاء مستخدم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (712, 6, N'FullName', N'الاسم الكامل')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (713, 6, N'Roles', N'الأدوار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (714, 6, N'Edit User', N'تحرير العضو')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (715, 6, N'Manager of Vendor', N'مدير المورد')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (716, 6, N'Save', N'حفظ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (717, 6, N'Cancel', N'إلغاء')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (718, 6, N'Phone Number', N'رقم الهاتف')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (719, 6, N'Create Vendor', N'إنشاء مورد')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (720, 6, N'Is Active', N'نشط')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (721, 6, N'Edit Vendor', N'تعديل المورد')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (722, 6, N'Managers', N'المدراء')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (723, 6, N'Description', N'وصف')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (724, 6, N'Pending', N'قيد الانتظار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (725, 6, N'Approved', N'مقبول')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (726, 6, N'Not Approved', N'غير مقبول')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (727, 6, N'Approve', N'يوافق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (728, 6, N'Create Product', N'إنشاء منتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (729, 6, N'Has Options', N'لديه خيارات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (730, 6, N'Is Visible Individually', N'مرئية بشكل فردي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (731, 6, N'Is Featured', N'هي واردة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (732, 6, N'Is Allowed To Order', N'مسموح به للطلب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (733, 6, N'Is Called For Pricing', N'هو دعا للتسعير')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (734, 6, N'Stock Quantity', N'كمية المخزون')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (735, 6, N'Is Published', N'يتم نشر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (736, 6, N'Yes', N'نعم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (737, 6, N'No', N'لا')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (738, 6, N'Edit Product', N'تحرير المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (739, 6, N'Product Name', N'اسم المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (740, 6, N'Short Description', N'وصف قصير')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (741, 6, N'Specification', N'تخصيص')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (742, 6, N'Old Price', N'سعر قديم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (743, 6, N'Special Price', N'سعر خاص')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (744, 6, N'Special Price Start', N'بدء سعر خاص')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (745, 6, N'Special Price End', N'إنهاء سعر خاص')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (746, 6, N'Thumbnail', N'صورة مصغرة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (747, 6, N'Product Images', N'صور المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (748, 6, N'Product Documents', N'وثائق المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (749, 6, N'Out Of Stock', N'إنتهى من المخزن')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (750, 6, N'Available Options', N'الخيارات المتاحة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (751, 6, N'Add Option', N'إضافة خيار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (752, 6, N'Option Values', N'قيم الخيار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (753, 6, N'Delete Option', N'حذف الخيار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (754, 6, N'Generate Combinations', N'إنشاء مجموعات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (755, 6, N'Product Variations', N'اختلافات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (756, 6, N'Option Combinations', N'تركيبات الخيار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (757, 6, N'Images', N'الصور')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (758, 6, N'Apply', N'تطبيق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (759, 6, N'Available Attributes', N'السمات المتاحة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (760, 6, N'Add Attribute', N'اضف ميزة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (761, 6, N'Product Attributes', N'سمات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (762, 6, N'Attribute Name', N'اسم السمة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (763, 6, N'Value', N'القيمة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (764, 6, N'General Information', N'معلومات عامة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (765, 6, N'Category Mapping', N'تعيين الفئة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (766, 6, N'Related Products', N'منتجات ذات صله')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (767, 6, N'Manage Related Products', N'إدارة المنتجات ذات الصلة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (768, 6, N'Create Category', N'إنشاء الفئة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (769, 6, N'Edit Category', N'تحرير الفئة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (770, 6, N'Create Brand', N'إنشاء علامة تجارية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (771, 6, N'Edit Brand', N'تحرير العلامة التجارية')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (772, 6, N'Name', N'اسم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (773, 6, N'Parent Category', N'القسم الرئيسي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (774, 6, N'Group', N'مجموعة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (775, 6, N'Create Product Attribute', N'إنشاء سمة المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (776, 6, N'Edit Product Attribute', N'تعديل سمة المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (777, 6, N'Create Product Attribute Group', N'إنشاء مجموعة سمات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (778, 6, N'Edit Product Attribute Group', N'تحرير مجموعة سمة المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (779, 6, N'Create Product Option', N'إنشاء المنتج الخيار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (780, 6, N'Edit Product Option', N'تحرير المنتج الخيار')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (781, 6, N'Create Product Display Widget', N'إنشاء عرض المنتج القطعة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (782, 6, N'Edit Product Display Widget', N'تحرير القطعة عرض المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (783, 6, N'Widget Name', N'اسم التطبيق المصغر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (784, 6, N'Widget Zone', N'مجال التطبيق المصغر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (785, 6, N'Publish Start', N'بدء النشر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (786, 6, N'Publish End', N'إنهاء النشر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (787, 6, N'Number of Products', N'عدد المنتجات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (788, 6, N'Order By', N'ترتيب حسب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (789, 6, N'Create Product Template', N'إنشاء قالب المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (790, 6, N'Edit Product Template', N'تحرير قالب المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (791, 6, N'Added Attributes', N'تمت إضافة سمات')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (792, 6, N'Back', N'الى الخلف')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (793, 6, N'Order Detail', N'تفاصيل الأمر')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (794, 6, N'Order Information', N'معلومات الطلب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (795, 6, N'Change', N'تغيير')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (796, 6, N'Product Information', N'معلومات المنتج')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (797, 6, N'Shipping Information', N'معلومات الشحن')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (798, 6, N'Application Settings', N'إعدادات التطبيق')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (799, 6, N'Create Page', N'إنشاء صفحة')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (800, 6, N'Edit Page', N'تعديل الصفحة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (801, 6, N'Body', N'الجسم')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (802, 6, N'Account Dashboard', N'لوحة حساب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (803, 6, N'Account Information', N'معلومات الحساب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (804, 6, N'Edit', N'تصحيح')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (805, 6, N'Security', N'الأمان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (806, 6, N'Create', N'إحداث')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (807, 6, N'External Logins', N'تسجيل الدخول الخارجي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (808, 6, N'Manage', N'إدارة')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (809, 6, N'Default shipping address', N'عنوان الشحن الافتراضي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (810, 6, N'Manage address', N'إدارة العنوان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (811, 6, N'You don''t have any default address', N'ليس لديك أي عنوان افتراضي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (812, 6, N'Order History', N'تاريخ الطلب')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (813, 6, N'Address Book', N'دليل العناوين')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (814, 6, N'Add Address', N'اضف عنوان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (815, 6, N'Delete', N'حذف')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (816, 6, N'Set as default shipping address', N'تعيين عنوان الشحن الافتراضي')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (817, 6, N'Edit Address', N'تعديل العنوان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (818, 6, N'Create Address', N'إنشاء عنوان')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (819, 6, N'Your account', N'الحساب الخاص بك')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (820, 6, N'Date', N'تاريخ')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (821, 7, N'Register', N'레지스터')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (822, 7, N'Hello {0}!', N'안녕하세요 {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (823, 7, N'Log in', N'로그인')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (824, 7, N'Log off', N'로그 오프')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (825, 7, N'The Email field is required.', N'이메일 입력란은 필수 항목입니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (826, 7, N'Email', N'이메일')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (827, 7, N'User List', N'사용자 목록')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (828, 7, N'Remember me?', N'날 기억해?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (829, 7, N'Password', N'암호')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (830, 7, N'Use a local account to log in.', N'로그인하려면 로컬 계정을 사용하십시오.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (831, 7, N'Register as a new user?', N'새로운 사용자로 등록 하시겠습니까?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (832, 7, N'Forgot your password?', N'비밀번호를 잊어 버렸습니까?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (833, 7, N'Use another service to log in.', N'다른 서비스를 사용하여 로그인하십시오.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (834, 7, N'Full name', N'성명')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (835, 7, N'Confirm password', N'비밀번호 확인')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (836, 7, N'Create a new account.', N'새 계정 생성.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (837, 7, N'All', N'모든')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (838, 7, N'Home', N'홈')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (839, 7, N'Add to cart', N'장바구니에 담기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (840, 7, N'Product detail', N'제품 세부 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (841, 7, N'Product specification', N'제품 사양')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (842, 7, N'Rate this product', N'이 제품 평가하기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (843, 7, N'Review comment', N'댓글 검토')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (844, 7, N'Review title', N'리뷰 제목')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (845, 7, N'Posted by', N'게시자')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (846, 7, N'Submit review', N'리뷰 제출')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (847, 7, N'You have', N'너는 가지고있다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (848, 7, N'products in your cart', N'장바구니의 제품')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (849, 7, N'Continue shopping', N'쇼핑을 계속')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (850, 7, N'View cart', N'장바구니보기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (851, 7, N'The product has been added to your cart', N'상품이 장바구니에 추가되었습니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (852, 7, N'Cart subtotal', N'장바구니 소계')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (853, 7, N'Shopping Cart', N'쇼핑 카트')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (854, 7, N'Product', N'생성물')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (855, 7, N'Price', N'가격')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (856, 7, N'Quantity', N'수량')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (857, 7, N'There are no items in this cart.', N'장바구니에 항목이 없습니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (858, 7, N'Go to shopping', N'쇼핑 가다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (859, 7, N'Order summary', N'주문 요약')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (860, 7, N'Subtotal', N'소계')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (861, 7, N'Process to Checkout', N'프로세스를 체크 아웃하는 중')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (862, 7, N'Shipping address', N'배송 주소')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (863, 7, N'Add another address', N'다른 주소 추가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (864, 7, N'Contact name', N'담당자 이름')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (865, 7, N'Address', N'주소')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (866, 7, N'State or Province', N'국가 또는 지방')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (867, 7, N'District', N'지구')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (868, 7, N'Phone', N'전화')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (869, 7, N'Order', N'주문')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (870, 7, N'products', N'제작품')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (871, 7, N'reviews', N'리뷰')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (872, 7, N'Add Review', N'검토 추가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (873, 7, N'Customer reviews', N'고객 리뷰')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (874, 7, N'Your review will be showed within the next 24h.', N'귀하의 리뷰는 다음 24 시간 이내에 보여 질 것입니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (875, 7, N'Thank you {0} for your review', N'귀하의 검토를 위해 {0} 주셔서 감사합니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (876, 7, N'Rating average', N'평점 평균')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (877, 7, N'stars', N'별')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (878, 7, N'Filter by', N'필터링 기준')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (879, 7, N'Category', N'범주')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (880, 7, N'Brand', N'상표')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (881, 7, N'Sort by:', N'정렬 기준 :')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (882, 7, N'results', N'결과')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (883, 7, N'View options', N'보기 옵션')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (884, 7, N'Associate your {0} account.', N'{0} 계정을 연결하십시오.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (885, 7, N'Users', N'사용자')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (886, 7, N'Vendors', N'공급 업체')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (887, 7, N'Reviews', N'리뷰')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (888, 7, N'Products', N'제작품')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (889, 7, N'Categories', N'카테고리')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (890, 7, N'Brands', N'브랜드')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (891, 7, N'Product Options', N'제품 옵션')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (892, 7, N'Product Attribute', N'제품 속성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (893, 7, N'Product Attribute Groups', N'제품 속성 그룹')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (894, 7, N'Product Templates', N'제품 템플릿')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (895, 7, N'Sales', N'매상')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (896, 7, N'Orders', N'명령')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (897, 7, N'Content Management', N'콘텐츠 관리')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (898, 7, N'Pages', N'페이지')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (899, 7, N'Widgets', N'위젯')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (900, 7, N'System', N'체계')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (901, 7, N'Configuration', N'구성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (902, 7, N'Translations', N'번역')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (903, 7, N'Dashboard', N'계기반')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (904, 7, N'Incomplete orders', N'불완전 주문')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (905, 7, N'Pending reviews', N'검토 대기 중')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (906, 7, N'Most search keywords', N'대부분의 검색 키워드')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (907, 7, N'Most viewed products', N'가장 많이 본 제품')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (908, 7, N'OrderId', N'주문 아이디')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (909, 7, N'Order Status', N'주문 상태')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (910, 7, N'Customer', N'고객')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (911, 7, N'Created On', N'생성 일')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (912, 7, N'SubTotal', N'소계')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (913, 7, N'Actions', N'행위')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (914, 7, N'Site', N'대지')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (915, 7, N'Catalog', N'목록')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (916, 7, N'Title', N'표제')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (917, 7, N'Comment', N'논평')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (918, 7, N'Status', N'지위')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (919, 7, N'Rating', N'평가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (920, 7, N'Keyword', N'예어')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (921, 7, N'Count', N'카운트')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (922, 7, N'Create User', N'사용자 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (923, 7, N'FullName', N'성명')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (924, 7, N'Roles', N'역할')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (925, 7, N'Edit User', N'사용자 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (926, 7, N'Manager of Vendor', N'공급 업체 관리자')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (927, 7, N'Save', N'구하다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (928, 7, N'Cancel', N'취소')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (929, 7, N'Phone Number', N'전화 번호')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (930, 7, N'Create Vendor', N'공급 업체 만들기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (931, 7, N'Is Active', N'활성 상태입니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (932, 7, N'Edit Vendor', N'공급 업체 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (933, 7, N'Managers', N'관리자')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (934, 7, N'Description', N'기술')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (935, 7, N'Pending', N'대기중인')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (936, 7, N'Approved', N'승인 됨')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (937, 7, N'Not Approved', N'승인이 거절 됨')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (938, 7, N'Approve', N'승인하다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (939, 7, N'Create Product', N'제품 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (940, 7, N'Has Options', N'옵션 있음')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (941, 7, N'Is Visible Individually', N'개별적으로 보입니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (942, 7, N'Is Featured', N'추천')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (943, 7, N'Is Allowed To Order', N'주문이 가능하다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (944, 7, N'Is Called For Pricing', N'가격 책정')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (945, 7, N'Stock Quantity', N'재고 수량')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (946, 7, N'Is Published', N'게시 됨')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (947, 7, N'Yes', N'예')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (948, 7, N'No', N'아니오!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (949, 7, N'Edit Product', N'제품 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (950, 7, N'Product Name', N'상품명')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (951, 7, N'Short Description', N'간단한 설명')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (952, 7, N'Specification', N'사양')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (953, 7, N'Old Price', N'이전 가격')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (954, 7, N'Special Price', N'특별가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (955, 7, N'Special Price Start', N'특별가 시작')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (956, 7, N'Special Price End', N'특별 가격 끝')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (957, 7, N'Thumbnail', N'미리보기 이미지')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (958, 7, N'Product Images', N'제품 이미지')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (959, 7, N'Product Documents', N'제품 문서')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (960, 7, N'Out Of Stock', N'품절')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (961, 7, N'Available Options', N'사용 가능한 옵션')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (962, 7, N'Add Option', N'옵션 추가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (963, 7, N'Option Values', N'옵션 값')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (964, 7, N'Delete Option', N'삭제 옵션')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (965, 7, N'Generate Combinations', N'조합 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (966, 7, N'Product Variations', N'제품 변형')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (967, 7, N'Option Combinations', N'옵션 조합')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (968, 7, N'Images', N'이미지')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (969, 7, N'Apply', N'대다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (970, 7, N'Available Attributes', N'사용 가능한 속성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (971, 7, N'Add Attribute', N'속성 추가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (972, 7, N'Product Attributes', N'제품 속성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (973, 7, N'Attribute Name', N'속성 이름')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (974, 7, N'Value', N'값')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (975, 7, N'General Information', N'일반 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (976, 7, N'Category Mapping', N'범주 매핑')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (977, 7, N'Related Products', N'관련 상품')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (978, 7, N'Manage Related Products', N'관련 제품 관리')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (979, 7, N'Create Category', N'카테고리 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (980, 7, N'Edit Category', N'카테고리 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (981, 7, N'Create Brand', N'브랜드 만들기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (982, 7, N'Edit Brand', N'브랜드 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (983, 7, N'Name', N'이름')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (984, 7, N'Parent Category', N'상위 카테고리')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (985, 7, N'Group', N'그룹')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (986, 7, N'Create Product Attribute', N'제품 속성 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (987, 7, N'Edit Product Attribute', N'제품 속성 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (988, 7, N'Create Product Attribute Group', N'제품 속성 그룹 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (989, 7, N'Edit Product Attribute Group', N'제품 속성 그룹 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (990, 7, N'Create Product Option', N'제품 생성 옵션')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (991, 7, N'Edit Product Option', N'제품 옵션 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (992, 7, N'Create Product Display Widget', N'제품 디스플레이 위젯 만들기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (993, 7, N'Edit Product Display Widget', N'제품 표시 위젯 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (994, 7, N'Widget Name', N'위젯 이름')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (995, 7, N'Widget Zone', N'위젯 영역')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (996, 7, N'Publish Start', N'게시 시작')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (997, 7, N'Publish End', N'게시 종료')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (998, 7, N'Number of Products', N'제품 수')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (999, 7, N'Order By', N'주문')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1000, 7, N'Create Product Template', N'제품 템플릿 만들기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1001, 7, N'Edit Product Template', N'제품 템플릿 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1002, 7, N'Added Attributes', N'추가 된 속성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1003, 7, N'Back', N'뒤로')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1004, 7, N'Order Detail', N'주문 세부 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1005, 7, N'Order Information', N'주문 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1006, 7, N'Change', N'변화')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1007, 7, N'Product Information', N'물품 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1008, 7, N'Shipping Information', N'배송 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1009, 7, N'Application Settings', N'응용 프로그램 설정')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1010, 7, N'Create Page', N'페이지 만들기')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1011, 7, N'Edit Page', N'페이지 편집')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1012, 7, N'Body', N'신체')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1013, 7, N'Account Dashboard', N'계정 대시 보드')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1014, 7, N'Account Information', N'계정 정보')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1015, 7, N'Edit', N'편집하다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1016, 7, N'Security', N'보안')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1017, 7, N'Create', N'몹시 떠들어 대다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1018, 7, N'External Logins', N'외부 로그인')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1019, 7, N'Manage', N'꾸리다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1020, 7, N'Default shipping address', N'기본 배송 주소')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1021, 7, N'Manage address', N'주소 관리')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1022, 7, N'You don''t have any default address', N'기본 주소가 없습니다.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1023, 7, N'Order History', N'주문 내역')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1024, 7, N'Address Book', N'주소록')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1025, 7, N'Add Address', N'주소 추가')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1026, 7, N'Delete', N'지우다')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1027, 7, N'Set as default shipping address', N'기본 배송 주소로 설정')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1028, 7, N'Edit Address', N'주소 수정')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1029, 7, N'Create Address', N'주소 생성')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1030, 7, N'Your account', N'귀하의 계정')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1031, 7, N'Date', N'날짜')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1032, 8, N'Register', N'Kayıt olmak')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1033, 8, N'Hello {0}!', N'Merhaba {0}!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1034, 8, N'Log in', N'Oturum aç')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1035, 8, N'Log off', N'Oturumu Kapat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1036, 8, N'The Email field is required.', N'E-posta alanı zorunludur.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1037, 8, N'Email', N'E-posta')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1038, 8, N'User List', N'kullanıcı listesi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1039, 8, N'Remember me?', N'Beni hatırla?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1040, 8, N'Password', N'Parola')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1041, 8, N'Use a local account to log in.', N'Giriş yapmak için yerel bir hesap kullanın.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1042, 8, N'Register as a new user?', N'Yeni bir kullanıcı olarak kaydolun mu?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1043, 8, N'Forgot your password?', N'Parolanızı mı unuttunuz?')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1044, 8, N'Use another service to log in.', N'Giriş yapmak için başka bir servis kullanın.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1045, 8, N'Full name', N'Ad Soyad')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1046, 8, N'Confirm password', N'Şifreyi Onayla')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1047, 8, N'Create a new account.', N'Yeni bir hesap oluştur.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1048, 8, N'All', N'Herşey')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1049, 8, N'Home', N'Ev')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1050, 8, N'Add to cart', N'Sepete ekle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1051, 8, N'Product detail', N'Ürün ayrıntısı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1052, 8, N'Product specification', N'Ürün özellikleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1053, 8, N'Rate this product', N'Bu ürünü puan ver')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1054, 8, N'Review comment', N'Yorumu gözden geçir')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1055, 8, N'Review title', N'İnceleme başlığı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1056, 8, N'Posted by', N'tarafından gönderild')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1057, 8, N'Submit review', N'İncelemeyi gönder')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1058, 8, N'You have', N'Var')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1059, 8, N'products in your cart', N'Sepetinizdeki Ürünler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1060, 8, N'Continue shopping', N'Alışverişe devam')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1061, 8, N'View cart', N'Alışveriş sepetini görüntüle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1062, 8, N'The product has been added to your cart', N'Ürün sepetinize eklenmiştir')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1063, 8, N'Cart subtotal', N'Sepet Ara Toplamı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1064, 8, N'Shopping Cart', N'Alışveriş kartı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1065, 8, N'Product', N'Ürün')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1066, 8, N'Price', N'Fiyat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1067, 8, N'Quantity', N'Miktar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1068, 8, N'There are no items in this cart.', N'Bu arabada hiç öğe yok.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1069, 8, N'Go to shopping', N'Alışverişe gitmek')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1070, 8, N'Order summary', N'Sipariş özeti')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1071, 8, N'Subtotal', N'Ara toplam')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1072, 8, N'Process to Checkout', N'Satın Alma İşlemi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1073, 8, N'Shipping address', N'Teslimat adresi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1074, 8, N'Add another address', N'Başka Bir Adres Ekle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1075, 8, N'Contact name', N'İrtibat adı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1076, 8, N'Address', N'Adres')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1077, 8, N'State or Province', N'Eyalet veya İl')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1078, 8, N'District', N'İlçe')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1079, 8, N'Phone', N'Telefon')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1080, 8, N'Order', N'Sipariş')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1081, 8, N'products', N'Ürünler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1082, 8, N'reviews', N'Incelemeler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1083, 8, N'Add Review', N'Yorum Ekle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1084, 8, N'Customer reviews', N'Musteri degerlendirmeleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1085, 8, N'Your review will be shown within the next 24h.', N'İncelemeniz önümüzdeki 24 saat içinde gösterilecektir.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1086, 8, N'Thank you {0} for your review', N'İncelemeniz için {0} ''te teşekkür ederim')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1087, 8, N'Rating average', N'Değerlendirme ortalaması')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1088, 8, N'stars', N'yıldızlar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1089, 8, N'Filter by', N'Tarafından filtre')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1090, 8, N'Category', N'Kategori')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1091, 8, N'Brand', N'Marka')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1092, 8, N'Sort by:', N'Göre sırala:')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1093, 8, N'results', N'Sonuçlar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1094, 8, N'View options', N'Seçenekleri göster')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1095, 8, N'Associate your {0} account.', N'{0} hesabınızı ilişkilendirin.')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1096, 8, N'Users', N'Kullanıcılar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1097, 8, N'Vendors', N'Satıcılar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1098, 8, N'Reviews', N'Yorumlar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1099, 8, N'Products', N'Ürünler')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1100, 8, N'Categories', N'Kategoriler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1101, 8, N'Brands', N'Markalar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1102, 8, N'Product Options', N'Ürün Seçenekleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1103, 8, N'Product Attribute', N'Ürün Öznitelikleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1104, 8, N'Product Attribute Groups', N'Ürün Özellik Grupları')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1105, 8, N'Product Templates', N'Ürün Şablonları')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1106, 8, N'Sales', N'Satış')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1107, 8, N'Orders', N'Emirler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1108, 8, N'Content Management', N'İçerik yönetimi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1109, 8, N'Pages', N'Sayfalar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1110, 8, N'Widgets', N'Widget''lar')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1111, 8, N'System', N'Sistem')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1112, 8, N'Configuration', N'Yapılandırma')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1113, 8, N'Translations', N'Çeviriler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1114, 8, N'Dashboard', N'Gösterge Tablosu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1115, 8, N'Incomplete orders', N'Eksik siparişler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1116, 8, N'Pending reviews', N'Bekleyen incelemeler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1117, 8, N'Most searched keywords', N'En çok aranan anahtar kelimeler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1118, 8, N'Most viewed products', N'En çok görüntülenen ürünler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1119, 8, N'OrderId', N'Sipariş Kimliği')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1120, 8, N'Order Status', N'Sipariş durumu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1121, 8, N'Customer', N'Müşteri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1122, 8, N'Created On', N'Oluşturuldu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1123, 8, N'SubTotal', N'AltToplam')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1124, 8, N'Actions', N'Eylemler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1125, 8, N'Site', N'Site')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1126, 8, N'Catalog', N'Katalog')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1127, 8, N'Title', N'Başlık')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1128, 8, N'Comment', N'Yorum Yap')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1129, 8, N'Status', N'Durum')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1130, 8, N'Rating', N'Değerlendirme')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1131, 8, N'Keyword', N'Anahtar Kelime')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1132, 8, N'Count', N'Saymak')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1133, 8, N'Create User', N'Kullanıcı oluştur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1134, 8, N'FullName', N'Ad Soyad')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1135, 8, N'Roles', N'Roller')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1136, 8, N'Edit User', N'Kullanıcıyı Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1137, 8, N'Manager of Vendor', N'Bayi Müdürü')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1138, 8, N'Save', N'Kayıt etmek')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1139, 8, N'Cancel', N'İptal etmek')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1140, 8, N'Phone Number', N'Telefon numarası')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1141, 8, N'Create Vendor', N'Satıcı oluştur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1142, 8, N'Is Active', N'Aktif')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1143, 8, N'Edit Vendor', N'Satıcıyı Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1144, 8, N'Managers', N'Yöneticiler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1145, 8, N'Description', N'Açıklama')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1146, 8, N'Pending', N'Beklemede')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1147, 8, N'Approved', N'Onaylandı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1148, 8, N'Not Approved', N'Onaylanmamış')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1149, 8, N'Approve', N'Onayla')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1150, 8, N'Create Product', N'Ürün Yarat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1151, 8, N'Has Options', N'Seçenekleri Var')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1152, 8, N'Is Visible Individually', N'Bireysel olarak Görülebilir mi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1153, 8, N'Is Featured', N'Öne Çıkmaktadır')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1154, 8, N'Is Allowed To Order', N'Sipariş Edilebilir')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1155, 8, N'Is Called For Pricing', N'Fiyatlandırma Talep Edildi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1156, 8, N'Stock Quantity', N'Stok Miktarı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1157, 8, N'Is Published', N'Yayınlandı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1158, 8, N'Yes', N'Evet')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1159, 8, N'No', N'Hayır!')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1160, 8, N'Edit Product', N'Ürünü Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1161, 8, N'Product Name', N'Ürün adı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1162, 8, N'Short Description', N'Kısa Açıklama')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1163, 8, N'Specification', N'Şartname')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1164, 8, N'Old Price', N'Eski fiyat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1165, 8, N'Special Price', N'Özel fiyat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1166, 8, N'Special Price Start', N'Özel Fiyat Başlangıcı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1167, 8, N'Special Price End', N'Özel Fiyat Sonu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1168, 8, N'Thumbnail', N'Küçük resim')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1169, 8, N'Product Images', N'Ürün Resimleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1170, 8, N'Product Documents', N'Ürün Dokümanları')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1171, 8, N'Out Of Stock', N'Stoklar tükendi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1172, 8, N'Available Options', N'mevcut seçenekler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1173, 8, N'Add Option', N'Seçenek Ekle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1174, 8, N'Option Values', N'Opsiyon Değerleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1175, 8, N'Delete Option', N'Silme Seçeneği')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1176, 8, N'Generate Combinations', N'Birleşmeleri Yarat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1177, 8, N'Product Variations', N'Ürün Çeşitlemeleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1178, 8, N'Option Combinations', N'Seçenek Birleşmeleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1179, 8, N'Images', N'Görüntüler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1180, 8, N'Apply', N'Uygulamak')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1181, 8, N'Available Attributes', N'Kullanılabilir Özellikler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1182, 8, N'Add Attribute', N'Öznitelik Ekle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1183, 8, N'Product Attributes', N'Ürün özellikleri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1184, 8, N'Attribute Name', N'Özellik Adı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1185, 8, N'Value', N'Değer')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1186, 8, N'General Information', N'Genel bilgi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1187, 8, N'Category Mapping', N'Kategori Eşleme')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1188, 8, N'Related Products', N'Related Products')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1189, 8, N'Manage Related Products', N'İlgili Ürünleri Yönetin')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1190, 8, N'Create Category', N'Kategori Oluştur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1191, 8, N'Edit Category', N'Kategoriyi Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1192, 8, N'Create Brand', N'Marka Yarat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1193, 8, N'Edit Brand', N'Markayı Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1194, 8, N'Name', N'İsim')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1195, 8, N'Parent Category', N'aile kategorisi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1196, 8, N'Group', N'Grup')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1197, 8, N'Create Product Attribute', N'Ürün Özellik Yarat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1198, 8, N'Edit Product Attribute', N'Ürün Özellikini Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1199, 8, N'Create Product Attribute Group', N'Ürün Özellik Grubu Oluştur')
GO
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1200, 8, N'Edit Product Attribute Group', N'Ürün Özellik Grubunu Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1201, 8, N'Create Product Option', N'Ürün Seçeneği Yarat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1202, 8, N'Edit Product Option', N'Ürün Seçenekini Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1203, 8, N'Create Product Display Widget', N'Ürün Ekran Widget''ı Oluşturun')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1204, 8, N'Edit Product Display Widget', N'Ürün Ekran Widget''ini düzenleme')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1205, 8, N'Widget Name', N'Widget Adı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1206, 8, N'Widget Zone', N'Widget Bölgesi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1207, 8, N'Publish Start', N'Yayın Başlat')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1208, 8, N'Publish End', N'Sonu Yayınla')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1209, 8, N'Number of Products', N'Ürün Sayısı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1210, 8, N'Order By', N'Tarafından sipariş')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1211, 8, N'Create Product Template', N'Ürün Şablonu Oluşturma')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1212, 8, N'Edit Product Template', N'Ürün Şablonunu Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1213, 8, N'Added Attributes', N'Eklenen Özellikler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1214, 8, N'Back', N'Geri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1215, 8, N'Order Detail', N'Sipariş detayı')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1216, 8, N'Order Information', N'Sipariş Bilgisi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1217, 8, N'Change', N'Değişiklik')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1218, 8, N'Product Information', N'Ürün Bilgisi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1219, 8, N'Shipping Information', N'Nakliye Bilgisi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1220, 8, N'Application Settings', N'Uygulama ayarları')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1221, 8, N'Create Page', N'Sayfa oluştur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1222, 8, N'Edit Page', N'Sayfayı düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1223, 8, N'Body', N'Vücut')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1224, 8, N'Account Dashboard', N'Hesap Gösterge Tablosu')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1225, 8, N'Account Information', N'Hesap Bilgileri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1226, 8, N'Edit', N'Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1227, 8, N'Security', N'Güvenlik')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1228, 8, N'Create', N'yaratmak')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1229, 8, N'External Logins', N'Harici Girişler')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1230, 8, N'Manage', N'Yönet')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1231, 8, N'Default shipping address', N'Varsayılan kargo adresi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1232, 8, N'Manage address', N'Adres yönet')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1233, 8, N'You don''t have any default address', N'Varsayılan adresin yok')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1234, 8, N'Order History', N'Sipariş Geçmişi')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1235, 8, N'Address Book', N'Adres defteri')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1236, 8, N'Add Address', N'Adres Ekle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1237, 8, N'Delete', N'Sil')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1238, 8, N'Set as default shipping address', N'Varsayılan gönderim adresi olarak ayarlayın')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1239, 8, N'Edit Address', N'Adres Düzenle')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1240, 8, N'Create Address', N'Adres Oluştur')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1241, 8, N'Your account', N'Hesabınız')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1242, 8, N'Date', N'Tarih')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1243, 3, N'Customer Service', N'MENU')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1244, 3, N'Users', N'Utilizadores')
INSERT [dbo].[Localization_Resource] ([Id], [CultureId], [Key], [Value]) VALUES (1245, 4, N'Users', N'Users key')
SET IDENTITY_INSERT [dbo].[Localization_Resource] OFF
SET IDENTITY_INSERT [dbo].[MainMenu_Category] ON 

INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (17, N'asxa', 7, 1, 0, 1, N'Home', NULL, N'home')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (18, N'asdas', 3, 0, 0, 0, N'Notícias', NULL, N'noticias-2')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (19, NULL, 2, 1, 0, 1, N'Sobre', NULL, N'sobre')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (25, NULL, 4, 1, 0, 1, N'Eventos', NULL, N'eventos')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (34, NULL, 6, 1, 0, 1, N'Formação', NULL, N'formacao')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (37, NULL, 5, 1, 0, 1, N'Investigação', NULL, N'investigacao')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (38, NULL, 1, 0, 0, 1, N'Contactos', NULL, N'contactos')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (39, NULL, 0, 0, 0, 1, N'Inscrição', NULL, N'inscricao')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (40, NULL, 0, 1, 0, 1, N'2018', 25, N'2018')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (41, N'II Encontro Professores Inovadores com TIC', 0, 1, 0, 1, N'II EPITIC', 40, N'ii-epitic')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (42, NULL, 0, 1, 0, 1, N'TIC@Portugal’18', 40, N'ticportugal18')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (43, NULL, 0, 1, 0, 1, N'Inscrição TIC@Portugal18', 42, N'inscricao-ticportugal18')
INSERT [dbo].[MainMenu_Category] ([Id], [Description], [DisplayOrder], [IncludeInMenu], [IsDeleted], [IsPublished], [Name], [ParentId], [SeoTitle]) VALUES (58, NULL, 6, 1, 0, 1, N'Atividades', NULL, N'atividades')
SET IDENTITY_INSERT [dbo].[MainMenu_Category] OFF
SET IDENTITY_INSERT [dbo].[News_NewsCategory] ON 

INSERT [dbo].[News_NewsCategory] ([Id], [Description], [DisplayOrder], [IsDeleted], [IsPublished], [Name], [SeoTitle]) VALUES (1, NULL, 0, 0, 1, N'Eventos', N'eventos-2')
INSERT [dbo].[News_NewsCategory] ([Id], [Description], [DisplayOrder], [IsDeleted], [IsPublished], [Name], [SeoTitle]) VALUES (2, NULL, 0, 0, 1, N'Formação', N'formacao-2')
SET IDENTITY_INSERT [dbo].[News_NewsCategory] OFF
SET IDENTITY_INSERT [dbo].[News_NewsItem] ON 

INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (1, 1, CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset), N'<p>Os Centros de Competência TIC (CCTIC) compreendem, ao momento, dez instituições que resultam de protocolos estabelecidos entre o Ministério da Educação e Ciência e as entidades em que estão integradas, na sua maioria instituições do ensino superior.</p><p><br></p>', 0, 1, NULL, NULL, NULL, N'A ESEB já é Centro TIC', N'ese-centro-tic', N'<p>Os Centros de Competência TIC (CCTIC) compreendem, ao momento, dez instituições que resultam&nbsp;de protocolos estabelecidos entre o Ministério da Educação e Ciência <b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>', 1, 7, CAST(N'2018-12-10T15:42:09.0762450+00:00' AS DateTimeOffset), N'a', CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (2, 1, CAST(N'2018-06-26T17:06:02.2127320+00:00' AS DateTimeOffset), N'<p class="MsoNormal"><!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG></o:AllowPNG>
 </o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves></w:TrackMoves>
  <w:TrackFormatting></w:TrackFormatting>
  <w:HyphenationZone>21</w:HyphenationZone>
  <w:PunctuationKerning></w:PunctuationKerning>
  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF></w:DoNotPromoteQF>
  <w:LidThemeOther>PT</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables></w:BreakWrappedTables>
   <w:SnapToGridInCell></w:SnapToGridInCell>
   <w:WrapTextWithPunct></w:WrapTextWithPunct>
   <w:UseAsianBreakRules></w:UseAsianBreakRules>
   <w:DontGrowAutofit></w:DontGrowAutofit>
   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>
   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>
   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>
   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"></m:mathFont>
   <m:brkBin m:val="before"></m:brkBin>
   <m:brkBinSub m:val="&#45;-"></m:brkBinSub>
   <m:smallFrac m:val="off"></m:smallFrac>
   <m:dispDef></m:dispDef>
   <m:lMargin m:val="0"></m:lMargin>
   <m:rMargin m:val="0"></m:rMargin>
   <m:defJc m:val="centerGroup"></m:defJc>
   <m:wrapIndent m:val="1440"></m:wrapIndent>
   <m:intLim m:val="subSup"></m:intLim>
   <m:naryLim m:val="undOvr"></m:naryLim>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="371">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"></w:LsdException>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"></w:LsdException>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"></w:LsdException>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"></w:LsdException>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"></w:LsdException>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"></w:LsdException>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"></w:LsdException>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"></w:LsdException>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"></w:LsdException>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"></w:LsdException>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"></w:LsdException>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"></w:LsdException>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"></w:LsdException>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"></w:LsdException>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"></w:LsdException>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"></w:LsdException>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"></w:LsdException>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"></w:LsdException>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"></w:LsdException>
 </w:LatentStyles>
</xml><![endif]-->Na sequência da grande adesão à iniciativa “Programação e
Robótica no Ensino Básico - Probótica”, a pertinência da temática e o interesse
demonstrado pelas comunidades escolares, a Direção-Geral da Educação (DGE) irá promover
um Evento Final desta iniciativa, convidando os professores de todos os
estabelecimentos&nbsp;de ensino a participar. Este evento terá lugar na Escola
Secundária Vergílio Ferreira, em Lisboa, no dia 4 de julho de 2018.</p><p class="MsoNormal">Neste evento, serão divulgadas, através da realização de
sessões plenárias e exposições/demonstrações, diversas atividades de
programação e robótica desenvolvidas nas escolas portuguesas, bem como outras
iniciativas relevantes de âmbito nacional. Contamos com a presença de várias
entidades, para além de cerca 200 professores de todo o país.</p><p class="MsoNormal">A participação é gratuita, mas sujeita a inscrição. Os
interessados deverão preencher o <a href="http://questionarios.dge.mec.pt/index.php/914123/lang/pt"><span style="font-family:&quot;Candara&quot;,sans-serif">formulário de inscrição</span></a>,
até ao dia 1 de julho de 2018.</p><p class="MsoNormal">Para consultar o programa e obter informações adicionais,
poderá aceder ao seguinte endereço eletrónico: <a href="http://www.erte.dge.mec.pt/probotica-evento-final-2018">http://www.erte.dge.mec.pt/probotica-evento-final-2018</a>.
<span style="mso-fareast-language:EN-US"></span></p><p class="MsoNormal">Poderá, ainda, contactar-nos através do seguinte endereço de
correio eletrónico: <a><span style="font-family:&quot;Candara&quot;,sans-serif">probotica@dge.mec.pt</span></a>.</p><p class="MsoNormal">Aguardamos a sua presença!</p><p class="MsoNormal">

</p><p class="MsoNormal" style="margin-top:12.0pt;margin-right:0cm;margin-bottom:
6.0pt;margin-left:0cm;text-align:justify;line-height:150%"><span style="font-family:&quot;Candara&quot;,sans-serif;color:black"><br></span></p><p class="MsoNormal" style="margin-top:12.0pt;margin-right:0cm;margin-bottom:
6.0pt;margin-left:0cm;text-align:justify;line-height:150%"></p>

', 0, 1, NULL, NULL, NULL, N'PROBÓTICA', N'probotica', N'<p>Na sequência da grande adesão à iniciativa “Programação e
Robótica no Ensino Básico - Probótica”, a pertinência da temática e o interesse
demonstrado pelas comunidades escolares<br></p>', 4, 7, CAST(N'2018-06-26T12:11:43.5615312+01:00' AS DateTimeOffset), NULL, CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (3, 1, CAST(N'2017-12-05T20:39:18.3623783+00:00' AS DateTimeOffset), N'<p>Nos próximos dias 20 e 21 de abril de 2018 terá lugar no auditório da 
Escola Superior de Educação o II Encontro Professores Inovadores com TIC
 organizado pelo CCTIC ESE/IPB – Bragança e CCTIC da Universidade do Minho.<br></p><p>- Partilhar materiais educativos/projetos e discutir a prática educativa com TIC;</p><p> - Refletir as potencialidades educativas das tecnologias de informação e comunicação emergentes;</p><p> - Refletir o perfil de competências do professor inovador com TIC;</p><p> - Debater formas de inovar com TIC em contexto de aprendizagem escolar.<br></p>

<div class="row">
<div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box-icon box-icon-left">
               <a class="box-icon-title" href="/ii-epitic" target="blank">
                  <i class="fa fa-link"></i>
                  <h2>Mais informação</h2>
               </a>
               <p class="text-muted"></p>
            </div>
         </div>
</div>', 0, 1, NULL, NULL, NULL, N'II Encontro Professores Inovadores com TIC', N'II Encontro Professores Inovadores com TIC', N'<p>Nos próximos dias 20 e 21 de abril de 2018 terá lugar no auditório da Escola Superior de Educação o II Encontro Professores Inovadores com TIC <br></p>', 2, 7, CAST(N'2018-06-06T22:27:52.6171424+01:00' AS DateTimeOffset), NULL, CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (7, 7, CAST(N'2018-05-23T15:03:17.1916895+01:00' AS DateTimeOffset), N'<p>O TIC@Portugal’18 possui tanto sessões próprias em cada local de realização,
como sessões partilhadas por videoconferência, em que todos os participantes
estarão reunidos num vasto “auditório virtual”, na reflexão em torno das
práticas com as TIC nas escolas. Este ano, intitulado:&nbsp;<strong>Das</strong>&nbsp;<strong>Aprendizagens
Essenciais ao Perfil dos Alunos –&nbsp;as TIC no currículo</strong>.<br></p><p>Irá realizar-se no dia 6 de julho de 2018, numa iniciativa da Associação
EDUCOM – APTE (Associação Portuguesa de Telemática Educativa), através do seu
Centro de Competência TIC e do seu Centro de Formação de Professores, a edição
2018 do Encontro TIC@Portugal.</p><p>

<br></p>', 0, 1, NULL, NULL, NULL, N'TIC@Portugal’18', N'tic-portugal-2018-news', N'<p><!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG></o:AllowPNG>
 </o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves></w:TrackMoves>
  <w:TrackFormatting></w:TrackFormatting>
  <w:HyphenationZone>21</w:HyphenationZone>
  <w:PunctuationKerning></w:PunctuationKerning>
  <w:ValidateAgainstSchemas></w:ValidateAgainstSchemas>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF></w:DoNotPromoteQF>
  <w:LidThemeOther>PT</w:LidThemeOther>
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables></w:BreakWrappedTables>
   <w:SnapToGridInCell></w:SnapToGridInCell>
   <w:WrapTextWithPunct></w:WrapTextWithPunct>
   <w:UseAsianBreakRules></w:UseAsianBreakRules>
   <w:DontGrowAutofit></w:DontGrowAutofit>
   <w:SplitPgBreakAndParaMark></w:SplitPgBreakAndParaMark>
   <w:EnableOpenTypeKerning></w:EnableOpenTypeKerning>
   <w:DontFlipMirrorIndents></w:DontFlipMirrorIndents>
   <w:OverrideTableStyleHps></w:OverrideTableStyleHps>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"></m:mathFont>
   <m:brkBin m:val="before"></m:brkBin>
   <m:brkBinSub m:val="&#45;-"></m:brkBinSub>
   <m:smallFrac m:val="off"></m:smallFrac>
   <m:dispDef></m:dispDef>
   <m:lMargin m:val="0"></m:lMargin>
   <m:rMargin m:val="0"></m:rMargin>
   <m:defJc m:val="centerGroup"></m:defJc>
   <m:wrapIndent m:val="1440"></m:wrapIndent>
   <m:intLim m:val="subSup"></m:intLim>
   <m:naryLim m:val="undOvr"></m:naryLim>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="371">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"></w:LsdException>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"></w:LsdException>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"></w:LsdException>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"></w:LsdException>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"></w:LsdException>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"></w:LsdException>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"></w:LsdException>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"></w:LsdException>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"></w:LsdException>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"></w:LsdException>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"></w:LsdException>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"></w:LsdException>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"></w:LsdException>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"></w:LsdException>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"></w:LsdException>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"></w:LsdException>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"></w:LsdException>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"></w:LsdException>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"></w:LsdException>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"></w:LsdException>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"></w:LsdException>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"></w:LsdException>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"></w:LsdException>
 </w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Tabela normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:8.0pt;
	mso-para-margin-left:0cm;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:"Times New Roman";
	mso-bidi-theme-font:minor-bidi;
	mso-fareast-language:EN-US;}
</style>
<![endif]--> O TIC@Portugal’18 possui tanto sessões próprias em cada local de realização,
como sessões partilhadas por videoconferência, em que todos os participantes<br></p><p>

</p>', 3, 7, CAST(N'2018-05-23T15:54:44.2499116+01:00' AS DateTimeOffset), NULL, CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (8, 10013, CAST(N'2018-10-26T10:45:31.3465478+00:00' AS DateTimeOffset), N'<p>No dia 10 de novembro de 2018, realizar-se-á a Ação de Curta Duração 
(ACD) “Orientações Curriculares para as TIC no 1.º Ciclo”. Esta é 
uma&nbsp;iniciativa&nbsp;da Direção-Geral da Educação (DGE) e dos seus 10 Centros 
de Competência TIC (CCTIC), no âmbito do Programa de Formação de 
Professores.</p><p>Este evento tem como objetivos:</p><ol><li>apresentar as Orientações Curriculares para as TIC, no 1.º Ciclo do Ensino Básico, e as políticas educativas para este nível de ensino; </li><li>partilhar a experiência de professores que, no terreno, usam as TIC, de acordo com os seus contextos específicos; </li><li>debater com especialistas a utilização das TIC nos processos de ensino e de aprendizagem.</li></ol><p><br>A Ação tem um caráter nacional, ocorrendo em simultâneo em dez cidades portuguesas. Após uma sessão inicial, por videoconferência, contará com apoio descentralizado, em colaboração com diversos CCTIC, com programas locais específicos.<br><br>Convidam-se, deste modo, todos os Diretores/as de Escola/Agrupamento e Professores/as a estarem presentes numa das sessões regionais, que irá decorrer em Bragança, na <a href="https://www.google.pt/maps/place/Escola+Superior+de+Educa%C3%A7%C3%A3o+de+Bragan%C3%A7a,+5300-252+Bragan%C3%A7a/@41.7939912,-6.7718312,17z/data=!4m5!3m4!1s0xd3a4a18c7926757:0x34924ba2c6ffdd15!8m2!3d41.7939912!4d-6.7696425" target="_blank">Escola Superior de Educação</a> do Instituto Politécnico de Bragança.</p><p>Inscrições e mais informações disponíveis em <a href="http://www.erte.dge.mec.pt/tic-e-curriculo-formacao-de-professores">http://www.erte.dge.mec.pt/tic-e-curriculo-formacao-de-professores</a>. </p><p>Aguardamos a sua presença!<br><br></p>', 0, 1, NULL, NULL, NULL, N'TIC e Currículo - Formação de Professores', N'tic_curriculo', N'<p>No dia 10 de novembro de 2018, realizar-se-á a Ação de Curta Duração (ACD) “Orientações Curriculares para as TIC no 1.º Ciclo”. Esta é uma&nbsp;iniciativa&nbsp;da Direção-Geral da Educação (DGE)<br></p>', 5, 10013, CAST(N'2018-10-29T14:37:05.5889518+00:00' AS DateTimeOffset), NULL, CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (14, 10013, CAST(N'2018-11-06T20:04:10.7070000+00:00' AS DateTimeOffset), N'<p>Líderes Digitais é uma iniciativa da responsabilidade da Direção-Geral da Educação, que decorre no âmbito do projeto SeguraNet e que tem como principal objetivo motivar e envolver alunos na promoção e na sensibilização para as questões de Cidadania Digital nas suas comunidades educativas.<br><br>A fase de inscrição, nesta iniciativa, decorre entre os dias 1 e 30 de novembro de 2018.<br><br>A iniciativa contempla duas categorias:<br><br><b>Líderes Digitais:</b> dirigida aos alunos a frequentar o 3.º Ciclo do Ensino Básico e o Ensino Secundário;<br><br><b>Líderes Digitais Benjamins:</b> dirigida aos alunos a frequentar o 1.º Ciclo do Ensino Básico.<br><br>O professor responsável deve fazer a inscrição da equipa através do preenchimento de um formulário, disponível em:<br><b><br>Líderes Digitais (do 5.º ao 12.º ano de escolaridade)</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inscrição em: <a href="http://questionarios.dge.mec.pt/index.php/978225/lang/pt" target="_blank">http://questionarios.dge.mec.pt/index.php/978225/lang/pt</a><br><br><b>Líderes Digitais Benjamins (do 1.º ao 4.º ano de escolaridade)</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inscrição em: <a href="http://questionarios.dge.mec.pt/index.php/569141/lang/pt" target="_blank">http://questionarios.dge.mec.pt/index.php/569141/lang/pt</a><br><br>Mais informações podem ser consultadas em: <a href="http://www.seguranet.pt/pt/lideres-digitais" target="_blank">http://www.seguranet.pt/pt/lideres-digitais</a><br></p>', 0, 1, NULL, NULL, NULL, N'Líderes Digitais 2018/2019', N'lideres_digitais_18_19', N'<p>Líderes Digitais é uma iniciativa da responsabilidade da Direção-Geral da Educação, que decorre no âmbito do projeto SeguraNet e que tem como principal objetivo motivar e envolver alunos<br></p>', 11, 9, CAST(N'2019-01-19T20:04:12.1117596+00:00' AS DateTimeOffset), N'Líderes Digitais 2018/2019', CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
INSERT [dbo].[News_NewsItem] ([Id], [CreatedById], [CreatedOn], [FullContent], [IsDeleted], [IsPublished], [MetaDescription], [MetaKeywords], [MetaTitle], [Name], [SeoTitle], [ShortContent], [ThumbnailImageId], [UpdatedById], [UpdatedOn], [Abrev], [PublishedOn]) VALUES (15, 9, CAST(N'2018-12-01T22:07:28.7680000+00:00' AS DateTimeOffset), N'<p>zzz<br></p>', 1, 0, NULL, NULL, NULL, N'testenews', N'testenews', N'<p>zz<br></p>', 12, 9, CAST(N'2018-12-01T22:38:45.3426337+00:00' AS DateTimeOffset), NULL, CAST(N'2017-11-29T23:41:36.9860000+00:00' AS DateTimeOffset))
SET IDENTITY_INSERT [dbo].[News_NewsItem] OFF
INSERT [dbo].[News_NewsItemCategory] ([CategoryId], [NewsItemId]) VALUES (1, 2)
INSERT [dbo].[News_NewsItemCategory] ([CategoryId], [NewsItemId]) VALUES (1, 7)
INSERT [dbo].[News_NewsItemCategory] ([CategoryId], [NewsItemId]) VALUES (2, 8)
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Cms_Menu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Cms_MenuItem] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId]
GO
ALTER TABLE [dbo].[Cms_MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Core_Entity] ([Id])
GO
ALTER TABLE [dbo].[Cms_MenuItem] CHECK CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId]
GO
ALTER TABLE [dbo].[Cms_Page]  WITH CHECK ADD  CONSTRAINT [FK_Cms_Page_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_Page] CHECK CONSTRAINT [FK_Cms_Page_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Cms_Page]  WITH CHECK ADD  CONSTRAINT [FK_Cms_Page_Core_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_Page] CHECK CONSTRAINT [FK_Cms_Page_Core_User_UpdatedById]
GO
ALTER TABLE [dbo].[Cms_PageWithBreadCrumb]  WITH CHECK ADD  CONSTRAINT [FK_Cms_PageWithBreadCrumb_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_PageWithBreadCrumb] CHECK CONSTRAINT [FK_Cms_PageWithBreadCrumb_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[Cms_PageWithBreadCrumb]  WITH CHECK ADD  CONSTRAINT [FK_Cms_PageWithBreadCrumb_Core_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[Cms_PageWithBreadCrumb] CHECK CONSTRAINT [FK_Cms_PageWithBreadCrumb_Core_User_UpdatedById]
GO
ALTER TABLE [dbo].[Contacts_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId] FOREIGN KEY([ContactAreaId])
REFERENCES [dbo].[Contacts_ContactArea] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contacts_Contact] CHECK CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId]
GO
ALTER TABLE [dbo].[Core_Entity]  WITH CHECK ADD  CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [dbo].[Core_EntityType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_Entity] CHECK CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId]
GO
ALTER TABLE [dbo].[Core_RoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Core_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_RoleClaim] CHECK CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId]
GO
ALTER TABLE [dbo].[Core_UserClaim]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserClaim_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserClaim] CHECK CONSTRAINT [FK_Core_UserClaim_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserLogin_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserLogin] CHECK CONSTRAINT [FK_Core_UserLogin_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Core_Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserRole] CHECK CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId]
GO
ALTER TABLE [dbo].[Core_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserRole_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserRole] CHECK CONSTRAINT [FK_Core_UserRole_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_UserToken]  WITH CHECK ADD  CONSTRAINT [FK_Core_UserToken_Core_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Core_User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_UserToken] CHECK CONSTRAINT [FK_Core_UserToken_Core_User_UserId]
GO
ALTER TABLE [dbo].[Core_WidgetInstance]  WITH CHECK ADD  CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId] FOREIGN KEY([WidgetId])
REFERENCES [dbo].[Core_Widget] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_WidgetInstance] CHECK CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId]
GO
ALTER TABLE [dbo].[Core_WidgetInstance]  WITH CHECK ADD  CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId] FOREIGN KEY([WidgetZoneId])
REFERENCES [dbo].[Core_WidgetZone] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Core_WidgetInstance] CHECK CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId]
GO
ALTER TABLE [dbo].[Localization_Resource]  WITH CHECK ADD  CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Localization_Culture] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Localization_Resource] CHECK CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId]
GO
ALTER TABLE [dbo].[MainMenu_Category]  WITH CHECK ADD  CONSTRAINT [FK_MainMenu_Category_MainMenu_Category_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[MainMenu_Category] ([Id])
GO
ALTER TABLE [dbo].[MainMenu_Category] CHECK CONSTRAINT [FK_MainMenu_Category_MainMenu_Category_ParentId]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId] FOREIGN KEY([ThumbnailImageId])
REFERENCES [dbo].[Core_Media] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById]
GO
ALTER TABLE [dbo].[News_NewsItem]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItem_Core_User_UpdatedById] FOREIGN KEY([UpdatedById])
REFERENCES [dbo].[Core_User] ([Id])
GO
ALTER TABLE [dbo].[News_NewsItem] CHECK CONSTRAINT [FK_News_NewsItem_Core_User_UpdatedById]
GO
ALTER TABLE [dbo].[News_NewsItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[News_NewsCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News_NewsItemCategory] CHECK CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId]
GO
ALTER TABLE [dbo].[News_NewsItemCategory]  WITH CHECK ADD  CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId] FOREIGN KEY([NewsItemId])
REFERENCES [dbo].[News_NewsItem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News_NewsItemCategory] CHECK CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId]
GO
