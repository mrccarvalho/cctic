using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace Cctic.WebHost.Migrations
{
    public partial class added_news_publishedOn_field : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "PublishedOn",
                table: "News_NewsItem",
                type: "datetimeoffset",
                nullable: true);

            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "PublishedOn",
                table: "Cms_PageWithBreadCrumb",
                type: "datetimeoffset",
                nullable: true);

            migrationBuilder.AddColumn<DateTimeOffset>(
                name: "PublishedOn",
                table: "Cms_Page",
                type: "datetimeoffset",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PublishedOn",
                table: "News_NewsItem");

            migrationBuilder.DropColumn(
                name: "PublishedOn",
                table: "Cms_PageWithBreadCrumb");

            migrationBuilder.DropColumn(
                name: "PublishedOn",
                table: "Cms_Page");
        }
    }
}
