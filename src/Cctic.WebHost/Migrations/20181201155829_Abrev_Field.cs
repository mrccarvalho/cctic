using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace Cctic.WebHost.Migrations
{
    public partial class Abrev_Field : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PublishedOn",
                table: "News_NewsItem");

            migrationBuilder.DropColumn(
                name: "PublishedOn",
                table: "Cms_Page");

            migrationBuilder.AddColumn<string>(
                name: "Abrev",
                table: "News_NewsItem",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Abrev",
                table: "Cms_Page",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Cms_PageWithBreadCrumb",
                columns: table => new
                {
                    Id = table.Column<long>(type: "bigint", nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Abrev = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Body = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CategoryId = table.Column<long>(type: "bigint", nullable: false),
                    CategoryName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CategorySeoTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedById = table.Column<long>(type: "bigint", nullable: true),
                    CreatedOn = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    IsPublished = table.Column<bool>(type: "bit", nullable: false),
                    MetaDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MetaKeywords = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MetaTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ParentCategoryId = table.Column<long>(type: "bigint", nullable: true),
                    SeoTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedById = table.Column<long>(type: "bigint", nullable: true),
                    UpdatedOn = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cms_PageWithBreadCrumb", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Cms_PageWithBreadCrumb_Core_User_CreatedById",
                        column: x => x.CreatedById,
                        principalTable: "Core_User",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Cms_PageWithBreadCrumb_Core_User_UpdatedById",
                        column: x => x.UpdatedById,
                        principalTable: "Core_User",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Cms_PageWithBreadCrumb_CreatedById",
                table: "Cms_PageWithBreadCrumb",
                column: "CreatedById");

            migrationBuilder.CreateIndex(
                name: "IX_Cms_PageWithBreadCrumb_UpdatedById",
                table: "Cms_PageWithBreadCrumb",
                column: "UpdatedById");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Cms_PageWithBreadCrumb");

            migrationBuilder.DropColumn(
                name: "Abrev",
                table: "News_NewsItem");

            migrationBuilder.DropColumn(
                name: "Abrev",
                table: "Cms_Page");

            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "PublishedOn",
                table: "News_NewsItem",
                nullable: true);

            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "PublishedOn",
                table: "Cms_Page",
                nullable: true);
        }
    }
}
