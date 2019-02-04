﻿// <auto-generated />
using Cctic.Module.Core.Data;
using Cctic.Module.Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using System;

namespace Cctic.WebHost.Migrations
{
    [DbContext(typeof(CcticDbContext))]
    [Migration("20181201155829_Abrev_Field")]
    partial class Abrev_Field
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.0-rtm-26452")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Cctic.Module.Cms.Models.Menu", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("IsPublished");

                    b.Property<bool>("IsSystem");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Cms_Menu");
                });

            modelBuilder.Entity("Cctic.Module.Cms.Models.MenuItem", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CustomLink");

                    b.Property<long?>("EntityId");

                    b.Property<long>("MenuId");

                    b.Property<string>("Name");

                    b.Property<long?>("ParentId");

                    b.HasKey("Id");

                    b.HasIndex("EntityId");

                    b.HasIndex("MenuId");

                    b.HasIndex("ParentId");

                    b.ToTable("Cms_MenuItem");
                });

            modelBuilder.Entity("Cctic.Module.Cms.Models.Page", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Abrev");

                    b.Property<string>("Body");

                    b.Property<long?>("CreatedById");

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("IsPublished");

                    b.Property<string>("MetaDescription");

                    b.Property<string>("MetaKeywords");

                    b.Property<string>("MetaTitle");

                    b.Property<string>("Name");

                    b.Property<string>("SeoTitle");

                    b.Property<long?>("UpdatedById");

                    b.Property<DateTimeOffset>("UpdatedOn");

                    b.HasKey("Id");

                    b.HasIndex("CreatedById");

                    b.HasIndex("UpdatedById");

                    b.ToTable("Cms_Page");
                });

            modelBuilder.Entity("Cctic.Module.Cms.ViewModels.PageWithBreadCrumb", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Abrev");

                    b.Property<string>("Body");

                    b.Property<long>("CategoryId");

                    b.Property<string>("CategoryName");

                    b.Property<string>("CategorySeoTitle");

                    b.Property<long?>("CreatedById");

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("IsPublished");

                    b.Property<string>("MetaDescription");

                    b.Property<string>("MetaKeywords");

                    b.Property<string>("MetaTitle");

                    b.Property<string>("Name");

                    b.Property<long?>("ParentCategoryId");

                    b.Property<string>("SeoTitle");

                    b.Property<long?>("UpdatedById");

                    b.Property<DateTimeOffset>("UpdatedOn");

                    b.HasKey("Id");

                    b.HasIndex("CreatedById");

                    b.HasIndex("UpdatedById");

                    b.ToTable("Cms_PageWithBreadCrumb");
                });

            modelBuilder.Entity("Cctic.Module.Contacts.Models.Contact", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Address");

                    b.Property<long>("ContactAreaId");

                    b.Property<string>("Content");

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<string>("EmailAddress");

                    b.Property<string>("FullName");

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("PhoneNumber");

                    b.HasKey("Id");

                    b.HasIndex("ContactAreaId");

                    b.ToTable("Contacts_Contact");
                });

            modelBuilder.Entity("Cctic.Module.Contacts.Models.ContactArea", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Contacts_ContactArea");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.AppSetting", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Key");

                    b.Property<string>("Value");

                    b.HasKey("Id");

                    b.ToTable("Core_AppSetting");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.Entity", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<long>("EntityId");

                    b.Property<long>("EntityTypeId");

                    b.Property<string>("Name");

                    b.Property<string>("Slug");

                    b.HasKey("Id");

                    b.HasIndex("EntityTypeId");

                    b.ToTable("Core_Entity");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.EntityType", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("IsMenuable");

                    b.Property<string>("Name");

                    b.Property<string>("RoutingAction");

                    b.Property<string>("RoutingController");

                    b.HasKey("Id");

                    b.ToTable("Core_EntityType");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.Media", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Caption");

                    b.Property<string>("FileName");

                    b.Property<int>("FileSize");

                    b.Property<int>("MediaType");

                    b.HasKey("Id");

                    b.ToTable("Core_Media");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.Role", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("Core_Role");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.User", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<string>("FullName");

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<DateTimeOffset>("UpdatedOn");

                    b.Property<Guid>("UserGuid");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("Core_User");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.UserRole", b =>
                {
                    b.Property<long>("UserId");

                    b.Property<long>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("Core_UserRole");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.Widget", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Code");

                    b.Property<string>("CreateUrl");

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<string>("EditUrl");

                    b.Property<bool>("IsPublished");

                    b.Property<string>("Name");

                    b.Property<string>("ViewComponentName");

                    b.HasKey("Id");

                    b.ToTable("Core_Widget");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.WidgetInstance", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<string>("Data");

                    b.Property<int>("DisplayOrder");

                    b.Property<string>("HtmlData");

                    b.Property<string>("Name");

                    b.Property<DateTimeOffset?>("PublishEnd");

                    b.Property<DateTimeOffset?>("PublishStart");

                    b.Property<DateTimeOffset>("UpdatedOn");

                    b.Property<long>("WidgetId");

                    b.Property<long>("WidgetZoneId");

                    b.HasKey("Id");

                    b.HasIndex("WidgetId");

                    b.HasIndex("WidgetZoneId");

                    b.ToTable("Core_WidgetInstance");
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.WidgetZone", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Core_WidgetZone");
                });

            modelBuilder.Entity("Cctic.Module.Localization.Models.Culture", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Localization_Culture");
                });

            modelBuilder.Entity("Cctic.Module.Localization.Models.Resource", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<long>("CultureId");

                    b.Property<string>("Key");

                    b.Property<string>("Value");

                    b.HasKey("Id");

                    b.HasIndex("CultureId");

                    b.ToTable("Localization_Resource");
                });

            modelBuilder.Entity("Cctic.Module.MainMenu.Models.Category", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description")
                        .HasMaxLength(5000);

                    b.Property<int>("DisplayOrder");

                    b.Property<bool>("IncludeInMenu");

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("IsPublished");

                    b.Property<string>("Name");

                    b.Property<long?>("ParentId");

                    b.Property<string>("SeoTitle");

                    b.HasKey("Id");

                    b.HasIndex("ParentId");

                    b.ToTable("MainMenu_Category");
                });

            modelBuilder.Entity("Cctic.Module.News.Models.NewsCategory", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description")
                        .HasMaxLength(5000);

                    b.Property<int>("DisplayOrder");

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("IsPublished");

                    b.Property<string>("Name");

                    b.Property<string>("SeoTitle");

                    b.HasKey("Id");

                    b.ToTable("News_NewsCategory");
                });

            modelBuilder.Entity("Cctic.Module.News.Models.NewsItem", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Abrev");

                    b.Property<long?>("CreatedById");

                    b.Property<DateTimeOffset>("CreatedOn");

                    b.Property<string>("FullContent");

                    b.Property<bool>("IsDeleted");

                    b.Property<bool>("IsPublished");

                    b.Property<string>("MetaDescription");

                    b.Property<string>("MetaKeywords");

                    b.Property<string>("MetaTitle");

                    b.Property<string>("Name");

                    b.Property<string>("SeoTitle");

                    b.Property<string>("ShortContent");

                    b.Property<long?>("ThumbnailImageId");

                    b.Property<long?>("UpdatedById");

                    b.Property<DateTimeOffset>("UpdatedOn");

                    b.HasKey("Id");

                    b.HasIndex("CreatedById");

                    b.HasIndex("ThumbnailImageId");

                    b.HasIndex("UpdatedById");

                    b.ToTable("News_NewsItem");
                });

            modelBuilder.Entity("Cctic.Module.News.Models.NewsItemCategory", b =>
                {
                    b.Property<long>("CategoryId");

                    b.Property<long>("NewsItemId");

                    b.HasKey("CategoryId", "NewsItemId");

                    b.HasIndex("NewsItemId");

                    b.ToTable("News_NewsItemCategory");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<long>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<long>("RoleId");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("Core_RoleClaim");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<long>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<long>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("Core_UserClaim");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<long>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<long>("UserId");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("Core_UserLogin");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<long>", b =>
                {
                    b.Property<long>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("Core_UserToken");
                });

            modelBuilder.Entity("Cctic.Module.Cms.Models.MenuItem", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.Entity", "Entity")
                        .WithMany()
                        .HasForeignKey("EntityId");

                    b.HasOne("Cctic.Module.Cms.Models.Menu", "Menu")
                        .WithMany("MenuItems")
                        .HasForeignKey("MenuId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Cctic.Module.Cms.Models.MenuItem", "Parent")
                        .WithMany("Children")
                        .HasForeignKey("ParentId");
                });

            modelBuilder.Entity("Cctic.Module.Cms.Models.Page", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.User", "CreatedBy")
                        .WithMany()
                        .HasForeignKey("CreatedById");

                    b.HasOne("Cctic.Module.Core.Models.User", "UpdatedBy")
                        .WithMany()
                        .HasForeignKey("UpdatedById");
                });

            modelBuilder.Entity("Cctic.Module.Cms.ViewModels.PageWithBreadCrumb", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.User", "CreatedBy")
                        .WithMany()
                        .HasForeignKey("CreatedById");

                    b.HasOne("Cctic.Module.Core.Models.User", "UpdatedBy")
                        .WithMany()
                        .HasForeignKey("UpdatedById");
                });

            modelBuilder.Entity("Cctic.Module.Contacts.Models.Contact", b =>
                {
                    b.HasOne("Cctic.Module.Contacts.Models.ContactArea", "ContactArea")
                        .WithMany()
                        .HasForeignKey("ContactAreaId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.Entity", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.EntityType", "EntityType")
                        .WithMany()
                        .HasForeignKey("EntityTypeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.UserRole", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.Role", "Role")
                        .WithMany("Users")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Cctic.Module.Core.Models.User", "User")
                        .WithMany("Roles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Cctic.Module.Core.Models.WidgetInstance", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.Widget", "Widget")
                        .WithMany()
                        .HasForeignKey("WidgetId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Cctic.Module.Core.Models.WidgetZone", "WidgetZone")
                        .WithMany()
                        .HasForeignKey("WidgetZoneId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Cctic.Module.Localization.Models.Resource", b =>
                {
                    b.HasOne("Cctic.Module.Localization.Models.Culture", "Culture")
                        .WithMany("Resources")
                        .HasForeignKey("CultureId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Cctic.Module.MainMenu.Models.Category", b =>
                {
                    b.HasOne("Cctic.Module.MainMenu.Models.Category", "Parent")
                        .WithMany("Children")
                        .HasForeignKey("ParentId");
                });

            modelBuilder.Entity("Cctic.Module.News.Models.NewsItem", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.User", "CreatedBy")
                        .WithMany()
                        .HasForeignKey("CreatedById");

                    b.HasOne("Cctic.Module.Core.Models.Media", "ThumbnailImage")
                        .WithMany()
                        .HasForeignKey("ThumbnailImageId");

                    b.HasOne("Cctic.Module.Core.Models.User", "UpdatedBy")
                        .WithMany()
                        .HasForeignKey("UpdatedById");
                });

            modelBuilder.Entity("Cctic.Module.News.Models.NewsItemCategory", b =>
                {
                    b.HasOne("Cctic.Module.News.Models.NewsCategory", "Category")
                        .WithMany("NewsItems")
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Cctic.Module.News.Models.NewsItem", "NewsItem")
                        .WithMany("Categories")
                        .HasForeignKey("NewsItemId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<long>", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.Role")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<long>", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<long>", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<long>", b =>
                {
                    b.HasOne("Cctic.Module.Core.Models.User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
