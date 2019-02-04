IF OBJECT_ID(N'__EFMigrationsHistory') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Cms_Menu] (
        [Id] bigint NOT NULL IDENTITY,
        [IsPublished] bit NOT NULL,
        [IsSystem] bit NOT NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Cms_Menu] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_AppSetting] (
        [Id] bigint NOT NULL IDENTITY,
        [Key] nvarchar(max) NULL,
        [Value] nvarchar(max) NULL,
        CONSTRAINT [PK_Core_AppSetting] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_EntityType] (
        [Id] bigint NOT NULL IDENTITY,
        [IsMenuable] bit NOT NULL,
        [Name] nvarchar(max) NULL,
        [RoutingAction] nvarchar(max) NULL,
        [RoutingController] nvarchar(max) NULL,
        CONSTRAINT [PK_Core_EntityType] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_Media] (
        [Id] bigint NOT NULL IDENTITY,
        [Caption] nvarchar(max) NULL,
        [FileName] nvarchar(max) NULL,
        [FileSize] int NOT NULL,
        [MediaType] int NOT NULL,
        CONSTRAINT [PK_Core_Media] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_Role] (
        [Id] bigint NOT NULL IDENTITY,
        [ConcurrencyStamp] nvarchar(max) NULL,
        [Name] nvarchar(256) NULL,
        [NormalizedName] nvarchar(256) NULL,
        CONSTRAINT [PK_Core_Role] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_User] (
        [Id] bigint NOT NULL IDENTITY,
        [AccessFailedCount] int NOT NULL,
        [ConcurrencyStamp] nvarchar(max) NULL,
        [CreatedOn] datetimeoffset NOT NULL,
        [Email] nvarchar(256) NULL,
        [EmailConfirmed] bit NOT NULL,
        [FullName] nvarchar(max) NULL,
        [IsDeleted] bit NOT NULL,
        [LockoutEnabled] bit NOT NULL,
        [LockoutEnd] datetimeoffset NULL,
        [NormalizedEmail] nvarchar(256) NULL,
        [NormalizedUserName] nvarchar(256) NULL,
        [PasswordHash] nvarchar(max) NULL,
        [PhoneNumber] nvarchar(max) NULL,
        [PhoneNumberConfirmed] bit NOT NULL,
        [SecurityStamp] nvarchar(max) NULL,
        [TwoFactorEnabled] bit NOT NULL,
        [UpdatedOn] datetimeoffset NOT NULL,
        [UserGuid] uniqueidentifier NOT NULL,
        [UserName] nvarchar(256) NULL,
        CONSTRAINT [PK_Core_User] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_Widget] (
        [Id] bigint NOT NULL IDENTITY,
        [Code] nvarchar(max) NULL,
        [CreateUrl] nvarchar(max) NULL,
        [CreatedOn] datetimeoffset NOT NULL,
        [EditUrl] nvarchar(max) NULL,
        [IsPublished] bit NOT NULL,
        [Name] nvarchar(max) NULL,
        [ViewComponentName] nvarchar(max) NULL,
        CONSTRAINT [PK_Core_Widget] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_WidgetZone] (
        [Id] bigint NOT NULL IDENTITY,
        [Description] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Core_WidgetZone] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Localization_Culture] (
        [Id] bigint NOT NULL IDENTITY,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Localization_Culture] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [MainMenu_Category] (
        [Id] bigint NOT NULL IDENTITY,
        [Description] nvarchar(max) NULL,
        [DisplayOrder] int NOT NULL,
        [IncludeInMenu] bit NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsPublished] bit NOT NULL,
        [Name] nvarchar(max) NULL,
        [ParentId] bigint NULL,
        [SeoTitle] nvarchar(max) NULL,
        CONSTRAINT [PK_MainMenu_Category] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_MainMenu_Category_MainMenu_Category_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [MainMenu_Category] ([Id]) ON DELETE NO ACTION
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_Entity] (
        [Id] bigint NOT NULL IDENTITY,
        [EntityId] bigint NOT NULL,
        [EntityTypeId] bigint NOT NULL,
        [Name] nvarchar(max) NULL,
        [Slug] nvarchar(max) NULL,
        CONSTRAINT [PK_Core_Entity] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Core_Entity_Core_EntityType_EntityTypeId] FOREIGN KEY ([EntityTypeId]) REFERENCES [Core_EntityType] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_RoleClaim] (
        [Id] int NOT NULL IDENTITY,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        [RoleId] bigint NOT NULL,
        CONSTRAINT [PK_Core_RoleClaim] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Core_RoleClaim_Core_Role_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Core_Role] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Cms_Page] (
        [Id] bigint NOT NULL IDENTITY,
        [Body] nvarchar(max) NULL,
        [CreatedById] bigint NULL,
        [CreatedOn] datetimeoffset NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsPublished] bit NOT NULL,
        [MetaDescription] nvarchar(max) NULL,
        [MetaKeywords] nvarchar(max) NULL,
        [MetaTitle] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        [PublishedOn] datetimeoffset NULL,
        [SeoTitle] nvarchar(max) NULL,
        [UpdatedById] bigint NULL,
        [UpdatedOn] datetimeoffset NOT NULL,
        CONSTRAINT [PK_Cms_Page] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Cms_Page_Core_User_CreatedById] FOREIGN KEY ([CreatedById]) REFERENCES [Core_User] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_Cms_Page_Core_User_UpdatedById] FOREIGN KEY ([UpdatedById]) REFERENCES [Core_User] ([Id]) ON DELETE NO ACTION
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_UserClaim] (
        [Id] int NOT NULL IDENTITY,
        [ClaimType] nvarchar(max) NULL,
        [ClaimValue] nvarchar(max) NULL,
        [UserId] bigint NOT NULL,
        CONSTRAINT [PK_Core_UserClaim] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Core_UserClaim_Core_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [Core_User] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_UserLogin] (
        [LoginProvider] nvarchar(450) NOT NULL,
        [ProviderKey] nvarchar(450) NOT NULL,
        [ProviderDisplayName] nvarchar(max) NULL,
        [UserId] bigint NOT NULL,
        CONSTRAINT [PK_Core_UserLogin] PRIMARY KEY ([LoginProvider], [ProviderKey]),
        CONSTRAINT [FK_Core_UserLogin_Core_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [Core_User] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_UserRole] (
        [UserId] bigint NOT NULL,
        [RoleId] bigint NOT NULL,
        CONSTRAINT [PK_Core_UserRole] PRIMARY KEY ([UserId], [RoleId]),
        CONSTRAINT [FK_Core_UserRole_Core_Role_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Core_Role] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_Core_UserRole_Core_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [Core_User] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_UserToken] (
        [UserId] bigint NOT NULL,
        [LoginProvider] nvarchar(450) NOT NULL,
        [Name] nvarchar(450) NOT NULL,
        [Value] nvarchar(max) NULL,
        CONSTRAINT [PK_Core_UserToken] PRIMARY KEY ([UserId], [LoginProvider], [Name]),
        CONSTRAINT [FK_Core_UserToken_Core_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [Core_User] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Core_WidgetInstance] (
        [Id] bigint NOT NULL IDENTITY,
        [CreatedOn] datetimeoffset NOT NULL,
        [Data] nvarchar(max) NULL,
        [DisplayOrder] int NOT NULL,
        [HtmlData] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        [PublishEnd] datetimeoffset NULL,
        [PublishStart] datetimeoffset NULL,
        [UpdatedOn] datetimeoffset NOT NULL,
        [WidgetId] bigint NOT NULL,
        [WidgetZoneId] bigint NOT NULL,
        CONSTRAINT [PK_Core_WidgetInstance] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Core_WidgetInstance_Core_Widget_WidgetId] FOREIGN KEY ([WidgetId]) REFERENCES [Core_Widget] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_Core_WidgetInstance_Core_WidgetZone_WidgetZoneId] FOREIGN KEY ([WidgetZoneId]) REFERENCES [Core_WidgetZone] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Localization_Resource] (
        [Id] bigint NOT NULL IDENTITY,
        [CultureId] bigint NOT NULL,
        [Key] nvarchar(max) NULL,
        [Value] nvarchar(max) NULL,
        CONSTRAINT [PK_Localization_Resource] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Localization_Resource_Localization_Culture_CultureId] FOREIGN KEY ([CultureId]) REFERENCES [Localization_Culture] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE TABLE [Cms_MenuItem] (
        [Id] bigint NOT NULL IDENTITY,
        [CustomLink] nvarchar(max) NULL,
        [EntityId] bigint NULL,
        [MenuId] bigint NOT NULL,
        [Name] nvarchar(max) NULL,
        [ParentId] bigint NULL,
        CONSTRAINT [PK_Cms_MenuItem] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Cms_MenuItem_Core_Entity_EntityId] FOREIGN KEY ([EntityId]) REFERENCES [Core_Entity] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_Cms_MenuItem_Cms_Menu_MenuId] FOREIGN KEY ([MenuId]) REFERENCES [Cms_Menu] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_Cms_MenuItem_Cms_MenuItem_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [Cms_MenuItem] ([Id]) ON DELETE NO ACTION
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Cms_MenuItem_EntityId] ON [Cms_MenuItem] ([EntityId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Cms_MenuItem_MenuId] ON [Cms_MenuItem] ([MenuId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Cms_MenuItem_ParentId] ON [Cms_MenuItem] ([ParentId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Cms_Page_CreatedById] ON [Cms_Page] ([CreatedById]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Cms_Page_UpdatedById] ON [Cms_Page] ([UpdatedById]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_Entity_EntityTypeId] ON [Core_Entity] ([EntityTypeId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE UNIQUE INDEX [RoleNameIndex] ON [Core_Role] ([NormalizedName]) WHERE [NormalizedName] IS NOT NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_RoleClaim_RoleId] ON [Core_RoleClaim] ([RoleId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [EmailIndex] ON [Core_User] ([NormalizedEmail]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE UNIQUE INDEX [UserNameIndex] ON [Core_User] ([NormalizedUserName]) WHERE [NormalizedUserName] IS NOT NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_UserClaim_UserId] ON [Core_UserClaim] ([UserId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_UserLogin_UserId] ON [Core_UserLogin] ([UserId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_UserRole_RoleId] ON [Core_UserRole] ([RoleId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_WidgetInstance_WidgetId] ON [Core_WidgetInstance] ([WidgetId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Core_WidgetInstance_WidgetZoneId] ON [Core_WidgetInstance] ([WidgetZoneId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_Localization_Resource_CultureId] ON [Localization_Resource] ([CultureId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    CREATE INDEX [IX_MainMenu_Category_ParentId] ON [MainMenu_Category] ([ParentId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171022162010_InitialCreate')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20171022162010_InitialCreate', N'2.0.0-rtm-26452');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE TABLE [News_NewsCategory] (
        [Id] bigint NOT NULL IDENTITY,
        [Description] nvarchar(max) NULL,
        [DisplayOrder] int NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsPublished] bit NOT NULL,
        [Name] nvarchar(max) NULL,
        [SeoTitle] nvarchar(max) NULL,
        CONSTRAINT [PK_News_NewsCategory] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE TABLE [News_NewsItem] (
        [Id] bigint NOT NULL IDENTITY,
        [CreatedById] bigint NULL,
        [CreatedOn] datetimeoffset NOT NULL,
        [FullContent] nvarchar(max) NULL,
        [IsDeleted] bit NOT NULL,
        [IsPublished] bit NOT NULL,
        [MetaDescription] nvarchar(max) NULL,
        [MetaKeywords] nvarchar(max) NULL,
        [MetaTitle] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        [PublishedOn] datetimeoffset NULL,
        [SeoTitle] nvarchar(max) NULL,
        [ShortContent] nvarchar(max) NULL,
        [ThumbnailImageId] bigint NULL,
        [UpdatedById] bigint NULL,
        [UpdatedOn] datetimeoffset NOT NULL,
        CONSTRAINT [PK_News_NewsItem] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_News_NewsItem_Core_User_CreatedById] FOREIGN KEY ([CreatedById]) REFERENCES [Core_User] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_News_NewsItem_Core_Media_ThumbnailImageId] FOREIGN KEY ([ThumbnailImageId]) REFERENCES [Core_Media] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_News_NewsItem_Core_User_UpdatedById] FOREIGN KEY ([UpdatedById]) REFERENCES [Core_User] ([Id]) ON DELETE NO ACTION
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE TABLE [News_NewsItemCategory] (
        [CategoryId] bigint NOT NULL,
        [NewsItemId] bigint NOT NULL,
        CONSTRAINT [PK_News_NewsItemCategory] PRIMARY KEY ([CategoryId], [NewsItemId]),
        CONSTRAINT [FK_News_NewsItemCategory_News_NewsCategory_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [News_NewsCategory] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_News_NewsItemCategory_News_NewsItem_NewsItemId] FOREIGN KEY ([NewsItemId]) REFERENCES [News_NewsItem] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE INDEX [IX_News_NewsItem_CreatedById] ON [News_NewsItem] ([CreatedById]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE INDEX [IX_News_NewsItem_ThumbnailImageId] ON [News_NewsItem] ([ThumbnailImageId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE INDEX [IX_News_NewsItem_UpdatedById] ON [News_NewsItem] ([UpdatedById]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    CREATE INDEX [IX_News_NewsItemCategory_NewsItemId] ON [News_NewsItemCategory] ([NewsItemId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171129223829_AddedNewsModule')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20171129223829_AddedNewsModule', N'2.0.0-rtm-26452');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171206133149_AddedContactModule')
BEGIN
    CREATE TABLE [Contacts_ContactArea] (
        [Id] bigint NOT NULL IDENTITY,
        [IsDeleted] bit NOT NULL,
        [Name] nvarchar(max) NULL,
        CONSTRAINT [PK_Contacts_ContactArea] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171206133149_AddedContactModule')
BEGIN
    CREATE TABLE [Contacts_Contact] (
        [Id] bigint NOT NULL IDENTITY,
        [Address] nvarchar(max) NULL,
        [ContactAreaId] bigint NOT NULL,
        [Content] nvarchar(max) NULL,
        [CreatedOn] datetimeoffset NOT NULL,
        [EmailAddress] nvarchar(max) NULL,
        [FullName] nvarchar(max) NULL,
        [IsDeleted] bit NOT NULL,
        [PhoneNumber] nvarchar(max) NULL,
        CONSTRAINT [PK_Contacts_Contact] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Contacts_Contact_Contacts_ContactArea_ContactAreaId] FOREIGN KEY ([ContactAreaId]) REFERENCES [Contacts_ContactArea] ([Id]) ON DELETE CASCADE
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171206133149_AddedContactModule')
BEGIN
    CREATE INDEX [IX_Contacts_Contact_ContactAreaId] ON [Contacts_Contact] ([ContactAreaId]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20171206133149_AddedContactModule')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20171206133149_AddedContactModule', N'2.0.0-rtm-26452');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    DECLARE @var0 sysname;
    SELECT @var0 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'News_NewsItem') AND [c].[name] = N'PublishedOn');
    IF @var0 IS NOT NULL EXEC(N'ALTER TABLE [News_NewsItem] DROP CONSTRAINT [' + @var0 + '];');
    ALTER TABLE [News_NewsItem] DROP COLUMN [PublishedOn];
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    DECLARE @var1 sysname;
    SELECT @var1 = [d].[name]
    FROM [sys].[default_constraints] [d]
    INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
    WHERE ([d].[parent_object_id] = OBJECT_ID(N'Cms_Page') AND [c].[name] = N'PublishedOn');
    IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [Cms_Page] DROP CONSTRAINT [' + @var1 + '];');
    ALTER TABLE [Cms_Page] DROP COLUMN [PublishedOn];
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    ALTER TABLE [News_NewsItem] ADD [Abrev] nvarchar(max) NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    ALTER TABLE [Cms_Page] ADD [Abrev] nvarchar(max) NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    CREATE TABLE [Cms_PageWithBreadCrumb] (
        [Id] bigint NOT NULL IDENTITY,
        [Abrev] nvarchar(max) NULL,
        [Body] nvarchar(max) NULL,
        [CategoryId] bigint NOT NULL,
        [CategoryName] nvarchar(max) NULL,
        [CategorySeoTitle] nvarchar(max) NULL,
        [CreatedById] bigint NULL,
        [CreatedOn] datetimeoffset NOT NULL,
        [IsDeleted] bit NOT NULL,
        [IsPublished] bit NOT NULL,
        [MetaDescription] nvarchar(max) NULL,
        [MetaKeywords] nvarchar(max) NULL,
        [MetaTitle] nvarchar(max) NULL,
        [Name] nvarchar(max) NULL,
        [ParentCategoryId] bigint NULL,
        [SeoTitle] nvarchar(max) NULL,
        [UpdatedById] bigint NULL,
        [UpdatedOn] datetimeoffset NOT NULL,
        CONSTRAINT [PK_Cms_PageWithBreadCrumb] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Cms_PageWithBreadCrumb_Core_User_CreatedById] FOREIGN KEY ([CreatedById]) REFERENCES [Core_User] ([Id]) ON DELETE NO ACTION,
        CONSTRAINT [FK_Cms_PageWithBreadCrumb_Core_User_UpdatedById] FOREIGN KEY ([UpdatedById]) REFERENCES [Core_User] ([Id]) ON DELETE NO ACTION
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    CREATE INDEX [IX_Cms_PageWithBreadCrumb_CreatedById] ON [Cms_PageWithBreadCrumb] ([CreatedById]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    CREATE INDEX [IX_Cms_PageWithBreadCrumb_UpdatedById] ON [Cms_PageWithBreadCrumb] ([UpdatedById]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20181201155829_Abrev_Field')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20181201155829_Abrev_Field', N'2.0.0-rtm-26452');
END;

GO

