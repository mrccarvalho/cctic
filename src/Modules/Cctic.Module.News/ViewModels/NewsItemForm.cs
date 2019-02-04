using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Cctic.Module.News.ViewModels
{
    public class NewsItemForm
    {
        public NewsItemForm()
        {
            IsPublished = true;
        }

        public long Id { get; set; }

        [Required]
        public string Name { get; set; }

        //Adicionado em 01/12/2018
        [Required]
        public string Abrev { get; set; }

        [Required]
        public string Slug { get; set; }

        [Required]
        public string ShortContent { get; set; }

        [Required]
        public string FullContent { get; set; }

        public bool IsPublished { get; set; }

        //Adicionado em 02/11/2018
        public DateTimeOffset CreatedOn { get; set; }

        public DateTimeOffset PublishedOn { get; set; }

        public string ThumbnailImageUrl { get; set; }

        public IList<long> NewsCategoryIds { get; set; } = new List<long>();

        public IFormFile ThumbnailImage { get; set; }
    }
}
